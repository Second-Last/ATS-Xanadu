(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2023 Hongwei Xi, ATS Trustful Software, Inc.
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
//
(*
Author: Hongwei Xi
(*
Tue 25 Jul 2023 05:33:23 PM EDT
*)
Authoremail: gmhwxiATgmailDOTcom
*)
//
(* ****** ****** *)
#include
"./../HATS/xatsopt_sats.hats"
#include
"./../HATS/xatsopt_dats.hats"
(* ****** ****** *)
#define
ATS_PACKNAME
"ATS3.XANADU.xatsopt-20220500"
(* ****** ****** *)
#staload
_(*TRANS3a*) = "./trans3a.dats"
(* ****** ****** *)
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/statyp2.sats"
(* ****** ****** *)
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/dynexp3.sats"
(* ****** ****** *)
#staload "./../SATS/trans3a.sats"
(* ****** ****** *)

#implfun
trans3a_d3pat
(env0 , d3p0) =
let
//
(*
val
loc0 = d3p0.lctn()
val () =
prerrln
("trans3a_d3pat: loc0 = ", loc0)
val () =
prerrln
("trans3a_d3pat: d3p0 = ", d3p0)
*)
//
in//let
case+
d3p0.node() of
| _(*otherwise*) => d3pat_none2(d3p0)
//
endlet where
{
//
(* ****** ****** *)
(* ****** ****** *)
//
} (*where*)//end-of-[trans2a_d3pat(env0,d3p0)]

(* ****** ****** *)

#implfun
trans3a_d3exp
(env0 , d3e0) =
let
//
(*
val
loc0 = d3e0.lctn()
val () =
prerrln
("trans3a_d3exp: loc0 = ", loc0)
val () =
prerrln
("trans3a_d3exp: d3e0 = ", d3e0)
*)
//
in//let
case+
d3e0.node() of
| _(*otherwise*) => d3exp_none2(d3e0)
//
endlet where
{
//
(* ****** ****** *)
(* ****** ****** *)
//
} (*where*)//end-of-[trans2a_d3exp(env0,d3e0)]

(* ****** ****** *)
//
#implfun
trans3a_f3arg
( env0, farg ) =
let
//
(*
val
loc0 = farg.lctn()
val () =
prerrln
("trans3a_f3arg: loc0 = ", loc0)
val () =
prerrln
("trans3a_f3arg: farg = ", farg)
*)
//
in//let
//
case+
farg.node() of
|
F3ARGdyn0(npf1, d3ps) =>
let
val loc0 = farg.lctn()
val d3ps =
trans3a_d3patlst(env0, d3ps)
in//let
f3arg(loc0,F3ARGdyn0(npf1,d3ps))
end (*let*) // end of [F3ARGdyn0]
//
end where
{
//
(* ****** ****** *)
(* ****** ****** *)
//
} (*where*)//end of [trans2a_f2arg(env0,farg)]

(* ****** ****** *)
//
#implfun
trans3a_d3patlst
  (env0, d3ps) =
(
  list_trans3a_fnp(env0, d3ps, trans3a_d3pat))
//
(* ****** ****** *)
//
#implfun
trans3a_d3explst
  (env0, d3es) =
(
  list_trans3a_fnp(env0, d3es, trans3a_d3exp))
//
#implfun
trans3a_d3expopt
( env0, dopt ) =
(
  optn_trans3a_fnp(env0, dopt, trans3a_d3exp))
//
(* ****** ****** *)
//
#implfun
trans3a_l3d3plst
( env0, ldps ) =
(
  list_trans3a_fnp(env0, ldps, trans3a_l3d3p))
//
#implfun
trans3a_l3d3elst
( env0, ldes ) =
(
  list_trans3a_fnp(env0, ldes, trans3a_l3d3e))
//
(* ****** ****** *)
//
#implfun
trans3a_f3arglst
( env0, f3as ) =
(
  list_trans3a_fnp(env0, f3as, trans3a_f3arg))
//
(* ****** ****** *)
//
#implfun
trans3a_d3gualst
( env0, d3gs ) =
(
  list_trans3a_fnp(env0, d3gs, trans3a_d3gua))
//
(* ****** ****** *)

(* end of [ATS3/XATSOPT_srcgen2_trans3a_dynexp.dats] *)
