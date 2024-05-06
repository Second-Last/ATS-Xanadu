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
//
(*
Author: Hongwei Xi
//
Tue 19 Mar 2024 01:12:23 PM EDT
//
Authoremail: gmhwxiATgmailDOTcom
*)
//
(* ****** ****** *)
(*
#define
XATSOPT "./../../.."
*)
(* ****** ****** *)
#include
"./../../..\
/HATS/xatsopt_sats.hats"
#include
"./../../..\
/HATS/xatsopt_dats.hats"
(* ****** ****** *)
#include
"./../HATS/xats2js_dats.hats"
(* ****** ****** *)
//
#staload "./../SATS/intrep0.sats"
#staload "./../SATS/intrep1.sats"
//
#staload "./../SATS/trxi0i1.sats"
//
(* ****** ****** *)
(* ****** ****** *)
//
#staload
_(*DATS*)="./../DATS/trxi0i1.dats"
//
(* ****** ****** *)
(* ****** ****** *)
#symload lctn with i0dcl_get_lctn
#symload node with i0dcl_get_node
(* ****** ****** *)
(*
#symload ival with i1cmp_get_ival
#symload ilts with i1cmp_get_ilts
*)
(* ****** ****** *)
//
#implfun
trxi0i1_i0dcl
(env0 , dcl0) =
(
case+
dcl0.node() of
//
|I0Dtmpsub _ =>
(
  f0_tmpsub(env0, dcl0))
//
|I0Dvaldclst _ =>
(
  f0_valdclst(env0, dcl0))
|I0Dvardclst _ =>
(
  f0_vardclst(env0, dcl0))
//
|I0Dfundclst _ =>
(
  f0_fundclst(env0, dcl0))
//
|I0Dimplmnt0 _ =>
(
  f0_implmnt0(env0, dcl0))
//
(* ****** ****** *)
|_(* otherwise *) => i1dcl_none1(dcl0)
(* ****** ****** *)
//
) where
{
//
(* ****** ****** *)
//
fun
f0_tmpsub
( env0:
! envi0i1
, dcl0: i0dcl): i1dcl =
let
//
val
loc0 = dcl0.lctn((*0*))
val-
I0Dtmpsub
(svts, dcl1) = dcl0.node()
val
dcl1 = trxi0i1_i0dcl(env0, dcl1)
//
in//let
(
  i1dcl(loc0, I1Dtmpsub(svts, dcl1))
end(*let*)//end of [f0_tmpsub(env0,d3cl)]
//
(* ****** ****** *)
//
fun
f0_valdclst
( env0:
! envi0i1
, dcl0: i0dcl): i1dcl =
let
//
val
loc0 = dcl0.lctn((*0*))
val-
I0Dvaldclst
(tknd, i0vs) = dcl0.node()
//
val
i1vs =
trxi0i1_i0valdclist(env0, i0vs)
//
in//let
  i1dcl(loc0, I1Dvaldclst(tknd, i1vs))
end where
{
//
(*
val loc0 = dcl0.lctn()
val (  ) =
prerrln("f0_valdclst(i0i1): d3cl = ", d3cl)
*)
//
}(*where*) // end of [f0_valdclst(env0,d3cl)]
//
(* ****** ****** *)
//
fun
f0_vardclst
( env0:
! envi0i1
, dcl0: i0dcl): i1dcl =
let
//
val
loc0 = dcl0.lctn((*0*))
val-
I0Dvardclst
(tknd, i0vs) = dcl0.node()
//
val
i0vs =
trxi0i1_i0vardclist(env0, i0vs)
//
in//let
  i1dcl(loc0, I1Dvardclst(tknd, i0vs))
end where
{
//
(*
val loc0 = dcl0.lctn()
val (  ) =
prerrln("f0_vardclst(i0i1): dcl0 = ", dcl0)
*)
//
}(*where*) // end of [f0_vardclst(env0,dcl0)]
//
(* ****** ****** *)
//
fun
f0_fundclst
( env0:
! envi0i1
, dcl0: i0dcl): i1dcl =
let
//
val
loc0 = dcl0.lctn((*void*))
//
val-
I0Dfundclst
( tknd
, d2cs, i0fs) = dcl0.node()
//
val
i1fs =
trxi0i1_i0fundclist(env0, i0fs)
//
in//let
//
i1dcl_make_node
(loc0, I1Dfundclst(tknd, d2cs, i1fs))
//
end where
{
//
(*
//
val loc0 = dcl0.lctn((*void*))
//
val (  ) =
prerrln("f0_fundclst(i0i1): dcl0 = ", dcl0)
*)
//
}(*where*) // end of [f0_fundclst(env0,dcl0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
f0_implmnt0
( env0:
! envi0i1
, dcl0: i0dcl): i1dcl =
let
//
val
loc0 = dcl0.lctn((*void*))
//
val-
I0Dimplmnt0
( tknd
, stmp, dimp
, fias, iexp) = dcl0.node()
//
val (  ) =
(
  envi0i1_pshlam0(env0))
//
val fjas =
trxi0i1_fiarglst(env0, fias)
//
val iret =
trxi0i1_i0exp(env0, iexp)
val ilts =
(
  envi0i1_poplam0( env0 ))
val icmp = I1CMPcons(ilts, iret)
//
in//let
i1dcl_make_node
(
loc0,
I1Dimplmnt0(tknd,stmp,dimp,fjas,icmp))
end where
{
//
(*
//
val loc0 = dcl0.lctn((*void*))
//
val (  ) =
prerrln("f0_implmnt0(i0i1): dcl0 = ", dcl0)
*)
//
}(*where*) // end of [f0_implmnt0(env0,dcl0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
val loc0 = dcl0.lctn((*0*))
//
val (  ) =
(
  prerrln("trxi0i1_i0dcl: loc0 = ", loc0) )
val (  ) =
(
  prerrln("trxi0i1_i0dcl: dcl0 = ", dcl0) )
//
(* ****** ****** *)
(* ****** ****** *)
//
} (*where*) // end of [trxi0i1_i0dcl(env0,...)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_teqi0exp
  (env0, tdxp) =
(
case+ tdxp of
|
TEQI0EXPnone() =>
TEQI1CMPnone((*void*))
|
TEQI0EXPsome(teq1, i0e2) =>
TEQI1CMPsome(teq1, icmp) where
{
  val (  ) =
  (
    envi0i1_pshblk0(env0))
  val ival =
  (
    trxi0i1_i0exp(env0, i0e2) )
  val ilts = envi0i1_popblk0(env0)
  val icmp = I1CMPcons(ilts, ival) }
//
) (*case+*)//end-of(trxi0i1_teqi0exp(...))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_i0valdcl
  (env0, ival) = let
//
val loc0 =
i0valdcl_get_lctn(ival)
val ipat =
i0valdcl_get_dpat(ival)
val tdxp =
i0valdcl_get_tdxp(ival)
//
val ibnd =
trxi0i1_i0pat(env0, ipat)
//
val tdxp =
trxi0i1_teqi0exp(env0, tdxp)
//
in//let
(
  i1valdcl_make_args(loc0, ibnd, tdxp))
end//let
(*let*)//end-of-[trxi0i1_i0valdcl(env0,ival)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_i0fundcl
  (env0, ifun) = let
//
val loc0 =
i0fundcl_get_lctn(ifun)
//
val dvar =
i0fundcl_get_dpid(ifun)
val fias =
i0fundcl_get_farg(ifun)
val tdxp =
i0fundcl_get_tdxp(ifun)
//
(*
val (  ) = prerrln
("trxi0i1_i0fundcl: fias = ", fias)
val (  ) = prerrln
("trxi0i1_i0fundcl: tdxp = ", tdxp)
*)
//
val (  ) =
envi0i1_pshlam0(env0)
//
val (  ) =
(
envi0i1_insert_dvar
( env0,dvar,ivar )) where
{
val ivar = i1val_var(dvar)}
//
val fjas =
trxi0i1_fiarglst(env0, fias)
//
val tdxp =
(
case+ tdxp of
|
TEQI0EXPnone
( (*void*) ) =>
TEQI1CMPnone() where
{
val
ilts = envi0i1_poplam0(env0)}
|
TEQI0EXPsome
(teq1, iexp) =>
TEQI1CMPsome
( teq1
, I1CMPcons(ilts, ival)) where
{
val ival =
(
  trxi0i1_i0exp(env0, iexp) )
val ilts = envi0i1_poplam0(env0)}
) (*case+*) // end-of-( teqi0exp )
//
in//let
(
  i1fundcl(loc0, dvar, fjas, tdxp))
end//let
(*let*)//end-of-[trxi0i1_i0fundcl(env0,ifun)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_i0dclist
( env0, dcls ) =
(
  list_trxi0i1_fnp(env0, dcls, trxi0i1_i0dcl))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_i0valdclist
  ( env0 , i0vs ) =
(
  list_trxi0i1_fnp(env0, i0vs, trxi0i1_i0valdcl))
//
#implfun
trxi0i1_i0vardclist
  ( env0 , i0vs ) =
(
  list_trxi0i1_fnp(env0, i0vs, trxi0i1_i0vardcl))
//
(* ****** ****** *)
//
#implfun
trxi0i1_i0fundclist
  ( env0 , i0fs ) =
(
  list_trxi0i1_fnp(env0, i0fs, trxi0i1_i0fundcl))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_i0dclistopt
  (env0, dopt) =
(
  optn_trxi0i1_fnp(env0, dopt, trxi0i1_i0dclist))
//
(* ****** ****** *)
(* ****** ****** *)

(***********************************************************************)
(* end of [ATS3/XANADU_srcgen2_xats2js_srcgen1_DATS_trxi0i1_decl00.dats] *)
(***********************************************************************)
