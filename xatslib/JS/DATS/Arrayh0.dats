(* ****** ****** *)
(* ****** ****** *)
#staload
"./../SATS/Array.sats"
(* ****** ****** *)
(* ****** ****** *)
#typedef ni = nint
(* ****** ****** *)
(* ****** ****** *)
#typedef
jsa(a:vt) = jsarray(a)
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
{ a: vt }
g_ptype
< jsa(a) >
( (*void*) ) =
(
pstrn"jsarray(";
g_ptype<a>();pstrn")")
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
{ a: vt }
g_print<jsa(a)>
  ( xs ) =
let
//
#vwtpdef x0 = (a)
#typedef xs = jsa(a)
//
#impltmp
gseq_sep<xs><x0>() = ","
#impltmp
gseq_end<xs><x0>() = ")"
#impltmp
gseq_beg<xs><x0>() = "jsarray("
in//let
  gseq_print1<xs><x0>(xs)
end//end-of-[g_print<jsa(a)>]
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
{ a: vt }
g_forall<jsa(a)> =
gasz_forall<jsa(a)><a>
//
#impltmp
{ a: vt }
g_foritm<jsa(a)> =
gseq_foritm1<jsa(a)><a>
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
{ a: vt }
g_append<jsa(a)> =
gseq_append00<jsa(a)><a><jsa(a)>
//
(* ****** ****** *)
//
#impltmp
{ a: vt }
g_prepend<jsa(a)> =
gseq_prepend00<jsa(a)><a><jsa(a)>
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
HX-202-07-29:
Mon 29 Jul 2024 07:59:38 AM EDT
*)
//
#extern
fun<a:vt>
jsarray_sum(A: jsa(a)): (a)
#extern
fun<a:vt>
jsarray_prod(A: jsa(a)): (a)
#impltmp
< a: vt >
jsarray_sum = gseq_sum0<jsa(a)><a>
#symload sum with jsarray_sum of 1000
#impltmp
< a: vt >
jsarray_prod = gseq_prod0<jsa(a)><a>
#symload prod with jsarray_prod of 1000
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
//
HX-2024-08-09:
This seems to be a convenient
style compared to the above one
Fri 09 Aug 2024 11:57:45 AM EDT
//
#extern
fun
<a:vt>
jarray_listize =
gasz_listize<jsa(a)><a>
#symload listize with jarray_listize of 1000
//
*)
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun<>
jsarray_strmize
 {a:vt}
(A: jsarray(a)): strm_vt(a)
#impltmp
<(*tmp*)>
jsarray_strmize
  {a:vt}(xs) = gasz_strmize<jsa(a)><a>(xs)
#symload strmize with jsarray_strmize of 1000
//
#extern
fun<>
jsarray_strqize
 {a:vt}
(A: jsarray(a)): strq_vt(a)
#impltmp
<(*tmp*)>
jsarray_strqize
  {a:vt}(xs) = gasz_strqize<jsa(a)><a>(xs)
#symload strqize with jsarray_strqize of 1000
//
(* ****** ****** *)
(* ****** ****** *)
//
(* ****** ****** *)(* ****** ****** *)
(* ****** ****** *)(* ****** ****** *)

(* end of [ATS3/XANADU_xatslib_JS_DATS_Arrayh0.dats] *)
