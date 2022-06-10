(* ****** ****** *)
#include
"./../..\
/HATS/xatsopt_sats.hats"
#include
"./../..\
/HATS/xatsopt_dats.hats"
(* ****** ****** *)
#staload
"./../../SATS/filpath.sats"
(* ****** ****** *)
#include
"./../../DATS/filpath.dats"
#include
"./../../DATS/filpath_drpth0.dats"
#include
"./../../DATS/filpath_fpath0.dats"
#include
"./../../DATS/filpath_print0.dats"
(* ****** ****** *)

val () =
prerrln("theDirSep = ", theDirSep_get())
val () =
prerrln("theCurDir = ", theCurDir_get())
val () =
prerrln("theParDir = ", theParDir_get())

(* ****** ****** *)

val () =
let
val dpx = "./.." in
prerrln
("drpth(", '"', dpx, '"', ") = ", drpth(dpx))
end // end of [val ()]

(* ****** ****** *)

val nms =
gseq_group_list(fpx) where
{ 
  val DS =
  theDirSep_get()
  val fpx = "./a/ab/abc/"
  #impltmp
  group$test<cgtz>(ch) = (ch != DS) }

val ( ) = prerrln("nms = ", listize(nms))

(* ****** ****** *)

(* end of [ATS3/XATSOPT_TEST_JS_test05_filpath.dats] *)
