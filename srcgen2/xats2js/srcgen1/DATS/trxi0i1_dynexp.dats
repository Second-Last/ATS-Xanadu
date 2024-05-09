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
Tue 19 Mar 2024 01:11:37 PM EDT
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
(* ****** ****** *)
//
#staload "./../SATS/trxi0i1.sats"
//
(* ****** ****** *)
//
#staload
_(*DATS*)="./../DATS/trxi0i1.dats"
//
(* ****** ****** *)
#symload lctn with i0pat_get_lctn
#symload node with i0pat_get_node
(* ****** ****** *)
#symload lctn with i0exp_get_lctn
#symload node with i0exp_get_node
(* ****** ****** *)
#symload lctn with fiarg_get_lctn
#symload node with fiarg_get_node
(* ****** ****** *)
fun
i1val_int
( loc: loc_t
, tok: token): i1val =
(
i1val_make_node(loc,I1Vint(tok)))
(* ****** ****** *)
fun
i1val_btf
( loc: loc_t
, sym: sym_t): i1val =
(
i1val_make_node(loc,I1Vbtf(sym)))
(* ****** ****** *)
fun
i1val_chr
( loc: loc_t
, tok: token): i1val =
(
i1val_make_node(loc,I1Vchr(tok)))
(* ****** ****** *)
fun
i1val_flt
( loc: loc_t
, tok: token): i1val =
(
i1val_make_node(loc,I1Vflt(tok)))
(* ****** ****** *)
fun
i1val_str
( loc: loc_t
, tok: token): i1val =
(
i1val_make_node(loc,I1Vstr(tok)))
(* ****** ****** *)
(* ****** ****** *)
fun
i1val_tnm
( loc0: loc_t
, itnm: i1tnm): i1val =
(
i1val_make_node(loc0,I1Vtnm(itnm)))
(* ****** ****** *)
(* ****** ****** *)
//
fun
i1val_dapp
( env0:
! envi0i1
, loc0: loc_t
, i1f0: i1val
, i1vs: i1valist): i1val =
(
i1val_tnm(loc0, itnm)) where
{
//
val itnm = i1tnm_new0((*void*))
val iins = I1INSdapp(i1f0, i1vs)
val ilet = I1LETnew1(itnm, iins)
//
val (  ) =
(
  envi0i1_insert_ilet(env0, ilet) )
}(*where*)//end-of-[i1val_dapp(env0,...)]
//
(* ****** ****** *)
//
fun
i1val_ift0
( env0:
! envi0i1
, loc0: loc_t
, i1v1: i1val
, ithn: i1cmpopt
, iels: i1cmpopt): i1val =
(
i1val_tnm(loc0, itnm)) where
{
//
val
itnm = i1tnm_new0((*void*))
val
iins =
(
  I1INSift0(i1v1, ithn, iels))
val ilet = I1LETnew1(itnm, iins)
//
val (  ) =
(
  envi0i1_insert_ilet(env0, ilet) )
}(*where*)//end-of-[i1val_ift0(env0,...)]
//
(* ****** ****** *)
//
fun
i1val_let0
( env0:
! envi0i1
, loc0: loc_t
, dcls: i1dclist
, icmp:
  i1cmp (*body*)): i1val =
(
i1val_tnm(loc0, itnm)) where
{
//
val
itnm = i1tnm_new0((*void*))
val
iins = I1INSlet0(dcls, icmp)
//
val ilet = I1LETnew1(itnm, iins)
//
val (  ) =
(
  envi0i1_insert_ilet(env0, ilet) )
}(*where*)//end-of-[i1val_let0(env0,...)]
//
(* ****** ****** *)
//
fun
i1val_tup0
( env0:
! envi0i1
, loc0: loc_t
, i1vs: i1valist): i1val =
(
i1val_tnm(loc0, itnm)) where
{
//
val iins = I1INStup0( i1vs )
val itnm = i1tnm_new0((*void*))
val ilet = I1LETnew1(itnm, iins)
//
val (  ) =
(
  envi0i1_insert_ilet(env0, ilet) )
}(*where*)//end-of-[i1val_tup0(env0,...)]
//
(* ****** ****** *)
//
fun
i1val_tup1
( env0:
! envi0i1
, loc0: loc_t
, tknd: token
, i1vs: i1valist): i1val =
(
i1val_tnm(loc0, itnm)) where
{
//
val iins = I1INStup1(tknd,i1vs)
val itnm = i1tnm_new0((*void*))
val ilet = I1LETnew1(itnm, iins)
//
val (  ) =
(
  envi0i1_insert_ilet(env0, ilet) )
}(*where*)//end-of-[i1val_tup1(env0,...)]
//
(* ****** ****** *)
(* ****** ****** *)

#implfun
trxi0i1_i0pat
( env0, ipat ) =
(
case+
ipat.node() of
//
|I0Pint _ => I1BNDnone()
|I0Pbtf _ => I1BNDnone()
|I0Pchr _ => I1BNDnone()
|I0Pflt _ => I1BNDnone()
|I0Pstr _ => I1BNDnone()
//
|_(*else*) => f0_main(env0, ipat)
//
) where
{
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
f0_main
( env0:
! envi0i1
, ipat: i0pat): i1bnd =
let
//
val loc0 = ipat.lctn()
//
val itnm = i1tnm_new0()
val ival =
i1val(loc0, I1Vtnm(itnm))
//
in
//
I1BNDsome(itnm, dvvs) where
{
val dvvs =
trxi0i1_i0bnd(env0, ipat, ival) }
//
end // end-of-[f0_main(env0,ipat)]
//
(* ****** ****** *)
(* ****** ****** *)
//
val () =
prerrln("trxi0i1_i0pat: ipat = ", ipat)
//
(* ****** ****** *)
(* ****** ****** *)
//
}(*where*)//end-of-[trxi0i1_i0pat(env0,ipat)]

(* ****** ****** *)
(* ****** ****** *)

#implfun
trxi0i1_i0bnd
( env0
, ipat, ival ) =
(
case+
ipat.node() of
//
|I0Pint _ => list_nil()
|I0Pbtf _ => list_nil()
|I0Pchr _ => list_nil()
|I0Pflt _ => list_nil()
|I0Pstr _ => list_nil()
//
|I0Pvar _ =>
(
f0_var(env0, ipat, ival))
|I0Pany _ => list_nil((*0*))
//
|_(*else*) => list_nil( (*void*) )
//
) where
{
//
(* ****** ****** *)
(* ****** ****** *)
//
fun
f0_var
( env0:
! envi0i1
, ipat: i0pat
, ival: i1val): d2sublst =
(
list_sing(@(dvar, ival))
) where
{
//
val-
I0Pvar(dvar) = ipat.node((*0*))
//
val ((*nil*)) =
envi0i1_insert_dvar(env0, dvar, ival)
}(*where*)//end-of-[f0_var(env0, ...)]
//
(* ****** ****** *)
(* ****** ****** *)
//
val () =
prerrln("trxi0i1_i0bnd: ipat = ", ipat)
val () =
prerrln("trxi0i1_i0bnd: ival = ", ival)
//
(* ****** ****** *)
(* ****** ****** *)
//
}(*where*)//end-of-[trxi0i1_i0bnd(env0,ipat)]

(* ****** ****** *)
(* ****** ****** *)

#implfun
trxi0i1_i0exp
( env0, iexp ) =
(
case+
iexp.node() of
//
|I0Eint _ => f0_int(env0, iexp)
|I0Ebtf _ => f0_btf(env0, iexp)
|I0Echr _ => f0_chr(env0, iexp)
|I0Eflt _ => f0_flt(env0, iexp)
|I0Estr _ => f0_str(env0, iexp)
//
|I0Ecst _ => f0_cst(env0, iexp)
|I0Evar _ => f0_var(env0, iexp)
//
|I0Etimp _ => f0_timp(env0, iexp)
//
|I0Edapp _ => f0_dapp(env0, iexp)
//
|I0Eift0 _ => f0_ift0(env0, iexp)
//
|I0Elet0 _ => f0_let0(env0, iexp)
//
|I0Etup0 _ => f0_tup0(env0, iexp)
|I0Etup1 _ => f0_tup1(env0, iexp)
//
|I0Elam0 _ => f0_lam0(env0, iexp)
|I0Efix0 _ => f0_fix0(env0, iexp)
//
|I0Ewhere _ => f0_where(env0, iexp)
//
| _(*otherwise*) => i1val_none1(iexp)
//
) where
{
//
(* ****** ****** *)
//
fun
f0_int
( env0:
! envi0i1
, iexp: i0exp): i1val =
(
  i1val_int(loc, tok) ) where
{
  val loc = iexp.lctn()
  val-I0Eint(tok) = iexp.node() }
//
(* ****** ****** *)
//
fun
f0_btf
( env0:
! envi0i1
, iexp: i0exp): i1val =
(
  i1val_btf(loc, sym) ) where
{
  val loc = iexp.lctn()
  val-I0Ebtf(sym) = iexp.node() }
//
(* ****** ****** *)
//
fun
f0_chr
( env0:
! envi0i1
, iexp: i0exp): i1val =
(
  i1val_chr(loc, tok) ) where
{
  val loc = iexp.lctn()
  val-I0Echr(tok) = iexp.node() }
//
(* ****** ****** *)
//
fun
f0_flt
( env0:
! envi0i1
, iexp: i0exp): i1val =
(
  i1val_flt(loc, tok) ) where
{
  val loc = iexp.lctn()
  val-I0Eflt(tok) = iexp.node() }
//
(* ****** ****** *)
//
fun
f0_str
( env0:
! envi0i1
, iexp: i0exp): i1val =
(
  i1val_str(loc, tok) ) where
{
  val loc = iexp.lctn()
  val-I0Estr(tok) = iexp.node() }
//
(* ****** ****** *)
//
fun
f0_cst
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Ecst(d2c1) = iexp.node()
//
in//let
(
  i1val(loc0, I1Vcst(d2c1)))
end where
{
//
val () =
(
prerr("trxi0i1_i0exp:");
prerrln("f0_cst(01): iexp = ", iexp))
//
}(*where*)//end-of-[f0_cst(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_var
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Evar(d2v1) = iexp.node()
//
in//let
  envi0i1_search_dvar(env0, d2v1)
end where
{
//
val () =
(
prerr("trxi0i1_i0exp:");
prerrln("f0_var(01): iexp = ", iexp))
//
}(*where*)//end-of-[f0_var(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_timp
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Etimp
(i0e1, timp) = iexp.node()
//
val
timp = trxi0i1_t0imp(env0, timp)
//
in//let
(
  i1val(loc0, I1Vtimp(i0e1, timp)))
end where
{
//
val () =
(
prerr("trxi0i1_i0exp:");
prerrln("f0_timp(01): iexp = ", iexp))
//
}(*where*)//end-of-[f0_timp(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_dapp
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Edapp
(i0f0, i0es) = iexp.node()
//
val i1f0 =
trxi0i1_i0exp(env0, i0f0)
val i1vs =
trxi0i1_i0explst(env0, i0es)
//
in//let
i1val_dapp(env0, loc0, i1f0, i1vs)
end where
{
//
val () =
(
prerr("trxi0i1_i0exp:");
prerrln("f0_dapp(01): iexp = ", iexp))
//
}(*where*)//end-of-[f0_dapp(env0,iexp)]
//
(* ****** ****** *)

fun
f0_ift0
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Eift0
(
i0e1,
ithn, iels) = iexp.node()
//
val i1v1 =
trxi0i1_i0exp(env0, i0e1)
//
val ithn =
(
case+ ithn of
|
optn_nil() => optn_nil()
|
optn_cons(i0e2) =>
optn_cons
(trxi0i1_i0blk(env0, i0e2)))
//
val iels =
(
case+ iels of
|
optn_nil() => optn_nil()
|
optn_cons(i0e2) =>
optn_cons
(trxi0i1_i0blk(env0, i0e2)))
//
in//let
i1val_ift0
(env0, loc0, i1v1, ithn, iels)
end where
{
//
val () =
(
prerr("trxi0i1_i0exp:");
prerrln("f0_ift0(01): iexp = ", iexp))
//
}(*where*)//end-of-[f0_dapp(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_let0
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Elet0
(
dcls, body) = iexp.node()
//
val (  ) =
envi0i1_pshlet0(env0)
//
val dcls =
trxi0i1_i0dclist(env0, dcls)
//
val
iret =
trxi0i1_i0exp(env0, body)
val
ilts = envi0i1_poplet0( env0 )
//
val icmp = I1CMPcons(ilts, iret)
//
in//let
i1val_let0(env0, loc0, dcls, icmp)
end(*let*)//end-of-[f0_let0(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_tup0
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Etup0(i0es) = iexp.node()
val i1vs =
trxi0i1_i0explst(env0, i0es)
//
in
(
  i1val_tup0(env0, loc0, i1vs) )
end where
{
//
val () =
(
prerr("trxi0i1_i0exp:");
prerrln("f0_tup0(01): iexp = ", iexp))
//
}(*where*)//end-of-[f0_tup0(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_tup1
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Etup1
(tknd, i0es) = iexp.node()
val i1vs =
trxi0i1_i0explst(env0, i0es)
//
in
(
i1val_tup1(env0, loc0, tknd, i1vs))
end where
{
//
val () =
(
prerr("trxi0i1_i0exp:");
prerrln("f0_tup1(01): iexp = ", iexp))
//
}(*where*)//end-of-[f0_tup1(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_lam0
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Elam0
(tknd
,fias,body) = iexp.node()
//
val (  ) =
envi0i1_pshlam0(env0)
//
val fjas =
trxi0i1_fiarglst(env0, fias)
//
val
iret =
trxi0i1_i0exp(env0, body)
val
ilts = envi0i1_poplam0( env0 )
//
val icmp = I1CMPcons(ilts, iret)
//
in//let
(
  i1val_make_node
  (loc0, I1Vlam0(tknd, fjas, icmp)))
end(*let*)//end-of-[f0_lam0(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_fix0
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Efix0
(tknd
,dvar
,fias,body) = iexp.node()
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
val
iret =
trxi0i1_i0exp(env0, body)
val
ilts = envi0i1_poplam0( env0 )
//
val icmp = I1CMPcons(ilts, iret)
//
in//let
(
i1val_make_node
(loc0, I1Vfix0(tknd,dvar,fjas,icmp)))
end(*let*)//end-of-[f0_fix0(env0,iexp)]
//
(* ****** ****** *)
//
fun
f0_where
( env0:
! envi0i1
, iexp: i0exp): i1val =
let
//
val loc0 = iexp.lctn()
//
val-
I0Ewhere
(
body, dcls) = iexp.node()
//
val (  ) =
envi0i1_pshlet0(env0)
//
val dcls =
trxi0i1_i0dclist(env0, dcls)
//
val
iret =
trxi0i1_i0exp(env0, body)
val
ilts = envi0i1_poplet0( env0 )
//
val icmp = I1CMPcons(ilts, iret)
//
in//let
i1val_let0(env0, loc0, dcls, icmp)
end(*let*)//end-of-[f0_where(env0,iexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
val () =
(
  prerrln("trxi0i1_i0exp: iexp = ", iexp))
//
(* ****** ****** *)
(* ****** ****** *)
//
}(*where*)//end-of-[trxi0i1_i0exp(env0,iexp)]

(* ****** ****** *)
//
#implfun
trxi0i1_i0blk
( env0, iexp ) =
(
I1CMPcons(ilts, ival)
) where
{
val () =
(
  envi0i1_pshblk0(env0))
//
val ival =
(
  trxi0i1_i0exp(env0, iexp))
//
val ilts = envi0i1_popblk0(env0)
//
}(*where*)//end-of-[trxi0i1_i0blk(env0,iexp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_t0imp
( env0, timp ) =
let
//
val stmp =
t0imp_get_stmp(timp)
val node =
t0imp_get_node(timp)
//
in//let
t1imp_make_node(stmp, node) where
{
val node =
(
case+ node of
|T0IMPall1
(dcst, dcls) =>
(
case+ dcls of
|list_nil() =>
T1IMPall1(dcst, optn_nil())
|list_cons(dcl1, _) =>
T1IMPall1(dcst,
optn_cons(trxi0i1_i0dcl(env0, dcl1))))
//
|T0IMPallx
(dcst, dcls) =>
(
case+ dcls of
|list_nil() =>
T1IMPallx(dcst, optn_nil())
|list_cons(dcl1, _) =>
T1IMPallx(dcst,
optn_cons(trxi0i1_i0dcl(env0, dcl1))))
) : t1imp_node // end of [ val(node) ]
}
end(*let*)//end-of-[trxi0i1_t0imp(env0,timp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_i0patlst
( env0, i0ps ) =
(
list_trxi0i1_fnp(env0, i0ps, trxi0i1_i0pat))
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_fiarglst
( env0, fias ) =
(
case+ fias of
|
list_nil
( (*0*) ) =>
list_nil((*void*))
|
list_cons
(fia1, fias) =>
(
case+
fia1.node() of
|
FIARGdapp _ =>
list_cons(fja1, fjas) where
{
//
val
fja1 = f0_dapp(env0, fia1)
val
fjas =
trxi0i1_fiarglst(env0, fias)
//
}(*where*)//end-[FIARGdapp(...)]
)
) where // end-of-[case+of(fia1)]
{
//
fun
f0_dapp
( env0:
! envi0i1
, fia1: fiarg): fjarg =
let
//
val loc0 = fia1.lctn()
//
val-
FIARGdapp(i0ps) = fia1.node()
//
in//let
(
fjarg
(loc0, FJARGdapp(i1bs))) where
{
val
i1bs = trxi0i1_i0patlst(env0, i0ps)} end
}(*where+*)//end-[trxi0i1_fiarglst(env0,fias)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
trxi0i1_i0explst
( env0, i0es ) =
(
  list_trxi0i1_fnp(env0, i0es, trxi0i1_i0exp))
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
(*
HX:
This one is implemented directly
*)
#implfun
trxi0i1_fiarglst
( env0, fias ) =
(
  list_trxi0i1_fnp(env0, fias, trxi0i1_fiarg))
*)
//
(* ****** ****** *)
(* ****** ****** *)

(***********************************************************************)
(* end of [ATS3/XANADU_srcgen2_xats2js_srcgen1_DATS_trxi0i1_dynexp.dats] *)
(***********************************************************************)
