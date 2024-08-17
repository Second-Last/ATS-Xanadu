(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2024 Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
(* ****** ****** *)
//
(*
Author: Hongwei Xi
(*
Thu 11 Jul 2024 01:11:20 PM EDT
*)
Authoremail: gmhwxiATgmailDOTcom
*)
//
(* ****** ****** *)
(* ****** ****** *)
#staload UN =
"prelude/SATS/unsfx00.sats"
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
g_0<strn>
((*void*)) = ("")
//
(* ****** ****** *)
#impltmp
g_cmp<strn> = strn_cmp<>
(* ****** ****** *)
//
(*
HX:
This is in [gdbg000.dats]:
#impltmp
g_ptype
< strn >
( (*void*) ) = pstrn("strn")
*)
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
HX-2024-08-10:
This one should definitely
be replaced later!!!
Sat 10 Aug 2024 08:49:55 PM EDT
*)
#impltmp
<(*tmp*)>
strn_cmp
(xs, ys) =
let
#typedef xs = strn
#typedef x0 = cgtz
in//let
gseq_cmp<xs><x0>(xs, ys) end
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
strn_gmake
<list(cgtz)> = strn_make_list<>
//
#impltmp
strn_gmake0
<list_vt(cgtz)> = strn_make0_llist<>
#impltmp
strn_gmake1
<list_vt(cgtz)> = strn_make1_llist<>
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
<(*tmp*)>
strn_append
  (xs, ys) =
strn_fmake_fwork<>
(
lam(work) =>
(foritm(xs, work); foritm(ys, work)))
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
$UN.gasz_get$at$raw
< strn >< cgtz >(cs, i0) =
$UN.strn_get$at$raw<>(cs, i0)
//
#impltmp
$UN.gasz_lget$at$raw
< strn >< cgtz >(cs, i0) =
let
val c0 =
$UN.strn_get$at$raw<>(cs, i0)
prval pf = owed_t0_make{cgtz}() in (pf|c0)
end//let//end($UN.gasz_lget$at$raw<strn><cgtz>)
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
HX-2024-08-17:
Sat 17 Aug 2024 08:32:31 AM EDT
*)
//
#impltmp
<(*tmp*)>
strn_make_nfun
  (n0, f0) =
strn_fmake_fwork<>
(
lam(work) =>
foritm(n0, //HX:it may not be
  lam(i0) => work(f0(i0))))//efficient!
//
(* ****** ****** *)
//
(*
HX-2024-08-16:
Fri 16 Aug 2024 05:02:22 PM EDT
*)
//
#impltmp
<(*tmp*)>
strn_make_list(cs) =
strn_fmake_fwork<> //HX:it may not be
(lam(work) => foritm(cs, work))//efficient!
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
<(*tmp*)>
$UN.strn_get$at$raw
  (cs, i0) =
(
XATS2JS_strn_get$at$raw
  (cs, i0)) where
{
#extern
fun
XATS2JS_strn_get$at$raw
  (cs: strn, i0: nint): cgtz = $extnam()
}
//
(* ****** ****** *)
//
#impltmp
<(*tmp*)>
$UN.strn_fset$at$raw
  (cs, i0, c0) =
strn_fmake_fwork<>
(
lam(work) => iforitm(cs,
lam(i1,c1) =>
(if (i0 = i1) then work(c0) else work(c1))))
//
(* ****** ****** *)
(* ****** ****** *)
//
(* ****** ****** *)(* ****** ****** *)
(* ****** ****** *)(* ****** ****** *)

(* end of [ATS3/XANADU_prelude_DATS_strn000.dats] *)
