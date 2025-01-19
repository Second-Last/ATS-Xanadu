#staload _ = "prelude/DATS/gdbg000.dats"
#include "srcgen2/prelude/HATS/prelude_dats.hats"
#include "srcgen2/prelude/HATS/prelude_JS_dats.hats"
#include "srcgen2/prelude/HATS/prelude_NODE_dats.hats"

#staload "contrib/gavinz/xatslib/SATS/proc000.sats"
#staload "contrib/gavinz/xatslib/SATS/file000.sats"
#staload "contrib/gavinz/xatslib/SATS/inou000.sats"

val UCHARMAX = 255
val TAPESIZE = 4096
(*
#define UCHARMAX 255
#define TAPE_SIZE 4096 // not supported
*)

#typedef cell = uint
#typedef mptr = uint
// #typedef mstate = a1rf(uint, 4096)

excptcon Overflow of ()
excptcon Underflow of ()
excptcon RBNotFound of ()
excptcon LBNotFound of ()

fun max(x, y) = if x >= y then x else y

fun interp {pl:nat} (prog: strn): void = let
  val proglen: int(pl) = (strn_length prog)
  and state: a1rf(int) = a1rf_make_ncpy(TAPESIZE, 0)
  
  fun find_match_rb 
    {pn:nat | pn < pl} 
    (start: int(pn)): [px: nat | pn < px && px < pl] int(px) = let
      fun rb_loop 
        (idx: int, acc: int): int = 
          if idx >= proglen
          then $raise RBNotFound()
          else (
            case+ 0 of
            | _ when (prog[idx] = '[') => rb_loop (idx + 1, acc + 1)
            | _ when (prog[idx] = ']') => if acc = 1 then idx else rb_loop (idx + 1, acc - 1)
            | _ => rb_loop (idx + 1, acc)
          )
  in
    rb_loop (start + 1, 1)
  end

  fun find_match_lb 
    {pn:nat | pn < pl} 
    (start: int(pn)): [px: nat | px < pn] int(px) = let
      fun lb_loop 
        (idx: int, acc: int): int = 
            (// prints("idx: ", idx, "\n");
              (
                if idx = (-1)
                then $raise LBNotFound()
                else (
                  case+ 0  of
                  | _ when (prog[idx] = '[') => if acc = 1 then idx else lb_loop (idx - 1, acc - 1)
                  | _ when (prog[idx] = ']') => lb_loop (idx - 1, acc + 1)
                  | _ => lb_loop (idx - 1, acc)
                )
              )
            )
  in
    lb_loop (start - 1, 1)
  end

  fun main_loop {pn:nat| pn <= pl + 1} (pc: int(pn), ptr: int): void =
    if pc >= proglen
    then ()
    else
      let
        val cur = state[ptr]
      in
        case+ 0 of
        | _ when prog[pc] = '+' => 
          (state[ptr] := (if cur = UCHARMAX then 0 else cur + 1); main_loop (pc + 1, ptr))
        | _ when prog[pc] = '-' =>
          (state[ptr] := (if cur = 0 then UCHARMAX else (cur - 1)); main_loop (pc + 1, ptr))
        | _ when prog[pc] = '<' =>
          if ptr = 0
          then $raise Underflow()
          else main_loop (pc + 1, ptr - 1)
        | _ when prog[pc] = '>' =>
          if ptr + 1 = TAPESIZE
          then $raise Overflow()
          else main_loop (pc + 1, ptr + 1)
        | _ when prog[pc] = '.' => (prints(char(cur)); main_loop (pc + 1, ptr))
        (* TODO: implement getchar() in JS *)
        | _ when prog[pc] = ',' => (state[ptr] := char_code(getchar()); main_loop (pc + 1, ptr))
        | _ when prog[pc] = '[' => 
          if cur = 0
          then main_loop (find_match_rb pc, ptr)
          else main_loop (pc + 1, ptr)
        | _ when prog[pc] = ']' =>
          if cur != 0
          then main_loop (find_match_lb pc, ptr)
          else main_loop (pc + 1, ptr)
        | _ => main_loop (pc + 1, ptr)
      end

in
  main_loop(0, 0)
end

val input_path: strn = argv_get()[2]

val () = prints("Interpreting: ", input_path, "\n")

val input_program: strn = read_file(input_path)

val () = interp(input_program)
