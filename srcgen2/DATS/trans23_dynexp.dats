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
Sun 19 Feb 2023 09:42:43 AM EST
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
_(*TRANS23*) = "./trans23.dats"
(* ****** ****** *)
#staload "./../SATS/xbasics.sats"
(* ****** ****** *)
#staload "./../SATS/xsymbol.sats"
(* ****** ****** *)
#staload "./../SATS/locinfo.sats"
(* ****** ****** *)
#staload "./../SATS/lexing0.sats"
(* ****** ****** *)
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/statyp2.sats"
#staload "./../SATS/dynexp2.sats"
(* ****** ****** *)
#staload "./../SATS/dynexp3.sats"
(* ****** ****** *)
#staload "./../SATS/trans23.sats"
(* ****** ****** *)
#symload lctn with token_get_lctn
#symload node with token_get_node
(* ****** ****** *)
#symload node with s2typ_get_node
(* ****** ****** *)
#symload lctn with d2var_get_lctn
#symload styp with d2var_get_styp
(* ****** ****** *)
#symload lctn with d2con_get_lctn
#symload styp with d2con_get_styp
(* ****** ****** *)
#symload lctn with d2cst_get_lctn
#symload styp with d2cst_get_styp
(* ****** ****** *)
#symload lctn with d2pat_get_lctn
#symload node with d2pat_get_node
#symload styp with d2pat_get_styp
(* ****** ****** *)
#symload lctn with d2exp_get_lctn
#symload node with d2exp_get_node
#symload styp with d2exp_get_styp
(* ****** ****** *)
#symload lctn with f2arg_get_lctn
#symload node with f2arg_get_node
(* ****** ****** *)
#symload styp with d3pat_get_styp
#symload styp with d3pat_set_styp
(* ****** ****** *)
#symload styp with d3exp_get_styp
#symload styp with d3exp_set_styp
(* ****** ****** *)
//
#implfun
trans23_d2pat
( env0, d2p0 ) =
let
//
val loc0 = d2p0.lctn()
val t2p0 = d2p0.styp()
//
val (  ) = prerrln
("trans23_d2pat: d2p0 = ", d2p0)
//
in//let
//
case+
d2p0.node() of
//
|
D2Pvar(d2v) =>
let
val
t2p0 = d2v.styp((*void*))
in
d3pat_make_styp_node
(loc0, t2p0, D3Pvar(d2v))
end
//
|
D2Pint(tok) =>
d3pat_make_styp_node
(loc0, t2p0, D3Pint(tok))
|
D2Pbtf(sym) =>
d3pat_make_styp_node
(loc0, t2p0, D3Pbtf(sym))
|
D2Pchr(tok) =>
d3pat_make_styp_node
(loc0, t2p0, D3Pchr(tok))
|
D2Pflt(tok) =>
d3pat_make_styp_node
(loc0, t2p0, D3Pflt(tok))
|
D2Pstr(tok) =>
d3pat_make_styp_node
(loc0, t2p0, D3Pstr(tok))
//
|D2Ptup0 _ => f0_tup0(env0, d2p0)
//
|D2Pannot _ => f0_annot(env0, d2p0)
//
| _(*otherwise*) => d3pat_none1(d2p0)
//
endlet where
{
//
(* ****** ****** *)
//
fun
f0_tup0
( env0:
! tr23env
, d2p0: d2pat): d3pat =
(
d3pat_make_styp_node
( loc0, t2p0
, D3Ptup0(npf1, d3ps))) where
{
val loc0 = d2p0.lctn()
val-
D2Ptup0
(npf1, d2ps) = d2p0.node()
val
d3ps = trans23_d2patlst(env0, d2ps)
val
t2p0 =
(
case+ d3ps of
|list_nil() =>
the_s2typ_void()
|list_cons _ =>
s2typ_tup0(npf1, s2typlst(d3ps))): s2typ
} (*where*) // end of [f0_tup0(env0,d2p0)]
//
(* ****** ****** *)
//
fun
f0_annot
( env0:
! tr23env
, d2p0: d2pat): d3pat =
let
//
val loc0 = d2p0.lctn()
val-
D2Pannot
( d2p1
, s1e2, s2e2) = d2p0.node()
//
(*
val t2p2 = s2exp_stpize(s2e2)
val t2p2 = s2typ_hnfiz0(t2p2)
*)
val t2p2 = d2p0.styp((*void*))
//
val d3p1 =
(
case+
d2p1.node() of
|
D2Pvar _ => 
trans23_d2pat(env0, d2p1)
|
_(*non-D2Pvar*) =>
trans23_d2pat_tpck(env0, d2p1, t2p2)
) : d3pat // end of [val d3p1]
//
in//let
d3pat_make_styp_node
(loc0, t2p2, D3Pannot(d3p1,s1e2,s2e2))
end (*let*) // end of [f0_annot(env0,...)]
//
(* ****** ****** *)
//
} (*where*)//end-of-[trans23_d3pat(env0,d3p0)]

(* ****** ****** *)
//
#implfun
trans23_d2exp
( env0, d2e0 ) =
let
//
val loc0 = d2e0.lctn()
val t2p0 = d2e0.styp()
//
val (  ) = prerrln
("trans23_d2exp: d2e0 = ", d2e0)
//
in//let
//
case+
d2e0.node() of
//
|
D2Eint(tok) =>
d3exp_make_styp_node
(loc0, t2p0, D3Eint(tok))
|
D2Ebtf(sym) =>
d3exp_make_styp_node
(loc0, t2p0, D3Ebtf(sym))
|
D2Echr(tok) =>
d3exp_make_styp_node
(loc0, t2p0, D3Echr(tok))
|
D2Eflt(tok) =>
d3exp_make_styp_node
(loc0, t2p0, D3Eflt(tok))
|
D2Estr(tok) =>
d3exp_make_styp_node
(loc0, t2p0, D3Estr(tok))
//
|D2Evar _ => f0_var(env0, d2e0)
//
|D2Ecst _ => f0_cst(env0, d2e0)
//
|D2Esym0 _ => f0_sym0(env0, d2e0)
//
|D2Edapp _ => f0_dapp(env0, d2e0)
//
|D2Eift0 _ => f0_ift0(env0, d2e0)
(*
|D2Ecas0 _ => f0_cas0(env0, d2e0)
*)
//
|D2Eassgn _ => f0_assgn(env0, d2e0)
//
| _(*otherwise*) => d3exp_none1(d2e0)
//
endlet where
{
//
(* ****** ****** *)
//
//
fun
f0_var
( env0:
! tr23env
, d2e0: d2exp): d3exp =
(
d3exp_make_styp_node
( loc0
, t2p0, D3Evar(d2v1))) where
{
//
val loc0 = d2e0.lctn()
//
val-
D2Evar(d2v1) = d2e0.node()
//
val t2p0 =
let
val
t2p0 = d2v1.styp((*nil*))
in//let
(
case+
t2p0.node() of
|T2Plft(t2p1) => t2p1
|_(*non-T2Plft*) => t2p0) endlet
//
} (*where*) // end of [f0_var(...)]
//
(* ****** ****** *)
//
fun
f0_cst
( env0:
! tr23env
, d2e0: d2exp): d3exp =
let
val loc0 = d2e0.lctn()
//
val-
D2Ecst(d2c1) = d2e0.node()
//
in//let
d3exp_make_styp_node
( loc0
, t2p0, D3Ecst(d2c1)) where
{
val t2p0 = d2c1.styp((*void*)) }
end (*let*)//end-of-[f0_cst(env0,d2e0)]
//
(* ****** ****** *)
//
fun
f0_sym0
( env0:
! tr23env
, d2e0: d2exp): d3exp =
let
val loc0 = d2e0.lctn()
//
val-
D2Esym0
( drxp
, d1e1, dpis) = d2e0.node()
//
in//let
  trans23_d2exp(env0, drxp.dexp())
end (*let*)//end-of-[f0_sym0(env0,d2e0)]
//
(* ****** ****** *)
//
fun
f0_dapp
( env0:
! tr23env
, d2e0: d2exp): d3exp =
let
//
val loc0 = d2e0.lctn()
//
val-
D2Edapp
( d2f0
, npf1, d2es) = d2e0.node()
//
val d3f0 =
  trans23_d2exp(env0, d2f0)
val d3es =
  trans23_d2explst(env0, d2es)
//
val tfun = d3exp_get_styp(d3f0)
//
val targ =
(
case+
tfun.node() of
|
T2Pfun1
( f2cl, npf1
, t2ps, tres) => t2ps
|_ (*else*) => list_nil()): s2typlst
val tres =
(
case+
tfun.node() of
|
T2Pfun1
( f2cl
, npf1, t2ps, tres) => tres
| _(* non-T2Pfun1 *) => tfun): s2typ
//
val () =
prerrln
("trans23_d2exp:f0_dapp:tfun = ",tfun)
val () =
prerrln
("trans23_d2exp:f0_dapp:targ = ",targ)
val () =
prerrln
("trans23_d2exp:f0_dapp:tres = ",tres)
//
in//let
let
val d3es =
trans23_d3explst_tpcks
(env0, loc0, d3es, targ)
in
d3exp_make_styp_node
(loc0, tres, D3Edapp(d3f0, npf1, d3es))
end (*let*)
end (*let*)//end of [f0_dapp(env0,d2e0)]
//
(* ****** ****** *)
//
fun
f0_ift0
( env0:
! tr23env
, d2e0: d2exp): d3exp =
let
val loc0 = d2e0.lctn()
val-
D2Eift0
(d2e1
,dthn, dels) = d2e0.node()
//
val d3e1 =
trans23_d2exp_tpck
( env0, d2e1, t2p1 ) where
{
val t2p1 = the_s2typ_bool()
}
//
val dthn =
trans23_d2expopt(env0, dthn)
//
val tres =
(
case+ dthn of
|
optn_nil() => the_s2typ_void()
|
optn_cons(d3e2) =>
(
case+ dels of
|
optn_nil() => the_s2typ_void()
|
optn_cons(d2e3) => d3e2.styp((*0*))))
//
in//let
//
case+ dels of
|
optn_nil() =>
let
val dels = optn_nil()
val dthn =
(
case+ dthn of
|
optn_nil() => dthn
|
optn_cons(d3e2) =>
optn_cons
(
trans23_d3exp_tpck(env0, d3e2, tres))
)
in
d3exp_make_styp_node
(loc0, tres, D3Eift0(d3e1, dthn, dels))
end
|
optn_cons(d2e3) =>
let
val dels =
optn_cons
(
trans23_d2exp_tpck(env0, d2e3, tres))
in
d3exp_make_styp_node
(loc0, tres, D3Eift0(d3e1, dthn, dels))
end
//
end (*let*) // end of [f0_ift0(env0,...)]
//
(* ****** ****** *)
//
fun
f0_assgn
( env0:
! tr23env
, d2e0: d2exp): d3exp =
let
//
val loc0 = d2e0.lctn()
val-
D2Eassgn
(d2el, d2er) = d2e0.node()
//
val
d3el =
trans23_d2exp(env0, d2el)
val
t2pl = d3el.styp((*void*))
//
val t2p0 = the_s2typ_void()
//
val
d3er =
trans23_d2exp_tpck(env0,d2er,t2pl)
//
in//let
d3exp_make_styp_node
( loc0, t2p0, D3Eassgn(d3el, d3er) )
end (*let*) // end of [f0_assgn(env0,d2e0)]
//
(* ****** ****** *)
//
} (*where*)//end-of-[trans23_d2exp(env0,d2e0)]

(* ****** ****** *)
//
#implfun
trans23_f2arg
( env0, farg ) =
let
//
val loc0 = farg.lctn()
//
val () =
prerrln
("trans23_f2arg: loc0 = ", loc0)
val () =
prerrln
("trans23_f2arg: farg = ", farg)
//
in//let
//
case+
farg.node() of
|
F2ARGsta0(s2vs, s2ps) =>
f3arg
(loc0,F3ARGsta0(s2vs,s2ps))
|
F2ARGdyn0(npf1, d2ps) =>
let
val loc0 = farg.lctn()
val d3ps =
trans23_d2patlst(env0, d2ps)
in//let
f3arg(loc0,F3ARGdyn0(npf1,d3ps))
end (*let*) // end of [F2ARGdyn0]
|
F2ARGmet0(s2es) => f3arg(loc0,F3ARGmet0(s2es))
//
end (*let*) // end of [trans23_f2arg(env0,farg)]

(* ****** ****** *)

#implfun
trans23_d2patlst
  (env0, d2ps) =
(
list_trans23_fnp(env0, d2ps, trans23_d2pat))

(* ****** ****** *)
//
#implfun
trans23_d2explst
  (env0, d2es) =
(
list_trans23_fnp(env0, d2es, trans23_d2exp))
//
#implfun
trans23_d2expopt
  (env0, dopt) =
(
optn_trans23_fnp(env0, dopt, trans23_d2exp))
//
(* ****** ****** *)

#implfun
trans23_f2arglst
  (env0, f2as) =
(
list_trans23_fnp(env0, f2as, trans23_f2arg))

(* ****** ****** *)

#implfun
trans23_d2pat_tpck
(env0, d2p0, t2p0) =
let
val
d3p0 = trans23_d2pat(env0, d2p0)
in
trans23_d3pat_tpck(env0,d3p0,t2p0)
end (*let*) // end of [trans23_d2pat_tpck(...)]

(* ****** ****** *)

#implfun
trans23_d2exp_tpck
(env0, d2e0, t2p0) =
let
val
d3e0 = trans23_d2exp(env0, d2e0)
in
trans23_d3exp_tpck(env0,d3e0,t2p0)
end (*let*) // end of [trans23_d2exp_tpck(...)]

(* ****** ****** *)

#implfun
trans23_d3pat_tpck
(env0, d3p0, t2p0) =
let
val ubtf =
unify23_s2typ(env0,d3p0.styp(),t2p0)
in//let
if
ubtf then d3p0 else
let
val loc0 = d3p0.lctn() in
d3pat(loc0, t2p0, D3Pt2pck(d3p0,t2p0)) end
end where
{
//
val () =
prerrln("trans23_d3pat_tpck: d3p0 = ", d3p0)
val () =
prerrln("trans23_d3pat_tpck: t2p0 = ", t2p0)
//
} (*where*) // end of [trans23_d3pat_tpck(...)]

(* ****** ****** *)

#implfun
trans23_d3exp_tpck
(env0, d3e0, t2p0) =
let
val ubtf =
unify23_s2typ(env0,d3e0.styp(),t2p0)
in//let
if
ubtf then d3e0 else
let
val loc0 = d3e0.lctn() in
d3exp(loc0, t2p0, D3Et2pck(d3e0,t2p0)) end
end where
{
//
val () =
prerrln("trans23_d3exp_tpck: d3e0 = ", d3e0)
val () =
prerrln("trans23_d3exp_tpck: t2p0 = ", t2p0)
//
} (*where*) // end of [trans23_d3exp_tpck(...)]

(* ****** ****** *)

#implfun
trans23_d3explst_tpck1
( env0 
, loc0, d3es , t2p0 ) =
(
case+ d3es of
|
list_nil() => list_nil()
|
list_cons(d3e1, d3es) =>
list_cons(d3e1, d3es) where
{
val d3e1 =
trans23_d3exp_tpck(env0, d3e1, t2p0)
val d3es =
trans23_d3explst_tpck1(env0, loc0, d3es, t2p0)
}
) (*case+*) // end of [trans23_d3explst_tpck1(...)]

(* ****** ****** *)

#implfun
trans23_d3explst_tpcks
( env0
, loc0, d3es , t2ps ) =
(
case+ d3es of
|
list_nil() =>
(
case+ t2ps of
|
list_nil() =>
list_nil((*void*))
|
list_cons(t2p1, t2ps) =>
list_cons(d3e1, d3es) where
{
//
val
d3e1 = d3exp_none0(loc0)
//
val d3e1 =
trans23_d3exp_tpck(env0, d3e1, t2p1)
val d3es =
trans23_d3explst_tpcks(env0, loc0, d3es, t2ps)
}
)
|
list_cons(d3e1, d3es) =>
(
case+ t2ps of
|
list_nil() =>
list_cons(d3e1, d3es) where
{
//
val
t2p1 = s2typ_none0((*void*))
//
val d3e1 =
trans23_d3exp_tpck(env0, d3e1, t2p1)
val d3es =
trans23_d3explst_tpcks(env0, loc0, d3es, t2ps)
}
|
list_cons(t2p1, t2ps) =>
list_cons(d3e1, d3es) where
{
val d3e1 =
trans23_d3exp_tpck(env0, d3e1, t2p1)
val d3es =
trans23_d3explst_tpcks(env0, loc0, d3es, t2ps)
}
)
) (*case+*) // end of [trans23_d3explst_tpcks(...)]

(* ****** ****** *)

(* end of [ATS3/XATSOPT_srcgen2_trans23_dynexp.dats] *)
