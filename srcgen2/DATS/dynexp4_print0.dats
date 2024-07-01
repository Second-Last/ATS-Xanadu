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
Tue Dec 26 22:51:15 EST 2023
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
(* ****** ****** *)
#staload
_(*?*) = "./lexing0_print0.dats"
(* ****** ****** *)
#staload "./../SATS/lexing0.sats"
(* ****** ****** *)
#staload "./../SATS/dynexp4.sats"
(* ****** ****** *)
(* ****** ****** *)
#symload lctn with d4pat_get_lctn
#symload node with d4pat_get_node
(* ****** ****** *)
#symload lctn with d4exp_get_lctn
#symload node with d4exp_get_node
(* ****** ****** *)
#symload lctn with f4arg_get_lctn
#symload node with f4arg_get_node
(* ****** ****** *)
#symload lctn with d4gua_get_lctn
#symload lctn with d4gpt_get_lctn
#symload lctn with d4cls_get_lctn
#symload node with d4gua_get_node
#symload node with d4gpt_get_node
#symload node with d4cls_get_node
(* ****** ****** *)
#symload lctn with d4ecl_get_lctn
#symload node with d4ecl_get_node
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
dvtck_fprint
(out, vtck) =
let
#impltmp
g_print$out<>() = out
in//let
case+ vtck of
|DVTCK(d2v1, t2p1, stp1) =>
(
print("DVTCK(");
print(d2v1, ";", t2p1, ";", stp1, ")"))
end(*let*)//end-of-[dvtck_fprint(out, vtck)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d4pat_fprint
(out, d4p0) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
d4p0.node() of
//
|D4Pany() =>
print("D4Pany(",")")
|D4Pvar(d2v) =>
print("D4Pvar(",d2v,")")
//
|D4Pint(tok) =>
print("D4Pint(",tok,")")
|D4Pbtf(sym) =>
print("D4Pbtf(",sym,")")
|D4Pchr(tok) =>
print("D4Pchr(",tok,")")
|D4Pflt(tok) =>
print("D4Pflt(",tok,")")
|D4Pstr(tok) =>
print("D4Pstr(",tok,")")
//
|D4Pcon(d2c) =>
print("D4Pcon(",d2c,")")
//
(* ****** ****** *)
|
D4Pdapp
(d4f0,npf1,d4ps) =>
( print("D4Pdapp(")
; print(d4f0,";",npf1,";",d4ps,")"))
//
(* ****** ****** *)
//
|
D4Pannot
(d4p1, s1e2, s2e2) =>
(
print("D4Pannot(");
print(d4p1, ";", s1e2, ";", s2e2,")"))
//
(* ****** ****** *)
//
|D4Pt2pck
( d4p1 , t2p2 ) =>
(
 print("D4Pt2pck(",d4p1,";",t2p2,")"))
//
(* ****** ****** *)
//
|D4Pnone0() => print( "D4Pnone0(",")" )
|D4Pnone1(d3p1) => print("D4Pnone1(",d3p1,")")
|D4Pnone2(d4p1) => print("D4Pnone2(",d4p1,")")
//
(* ****** ****** *)
//
|D4Perrck // HX: generated by [tread34]
(lvl1(*err-level*),dpat) => print("D4Perrck(",lvl1,";",dpat,")")
//
end (*let*) // end of [d4pat_fprint(out, d4p0)]
//
(* ****** ****** *)
(* ****** ****** *)

#implfun
d4exp_fprint
(out, d4e0) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
d4e0.node() of
//
|D4Eint(tok) =>
print("D4Eint(",tok,")")
|D4Ebtf(sym) =>
print("D4Ebtf(",sym,")")
|D4Echr(tok) =>
print("D4Echr(",tok,")")
|D4Eflt(tok) =>
print("D4Eflt(",tok,")")
|D4Estr(tok) =>
print("D4Estr(",tok,")")
//
(* ****** ****** *)
//
|D4Evar(d2v) =>
print("D4Evar(", d2v, ")")
//
(* ****** ****** *)
//
|D4Econ(d2c) =>
print("D4Econ(", d2c, ")")
|D4Ecst(d2c) =>
print("D4Ecst(", d2c, ")")
//
(* ****** ****** *)
//
|D4Edvts
(d4e1, dvts) =>
(
print
("D4Edvts(", d4e1, ";", dvts, ")"))
//
|D4Efarg
(d4e1, f4as) =>
(
print
("D4Efarg(", d4e1, ";", f4as, ")"))
//
(* ****** ****** *)
//
|D4Edapp
(d4f0,npf1,d4es) =>
( print("D4Edapp(")
; print(d4f0,";",npf1,";",d4es,")"))
//
(* ****** ****** *)
//
|D4Elet0
(dcls, d4e1) =>
(
print("D4Elet0(",dcls,";",d4e1,")"))
//
(* ****** ****** *)
//
|D4Eift0
(d4e1
,dthn,dels,tenv) =>
(
print("D4Eift0(");
print
( d4e1,";"
, dthn, ";", dels, ";", tenv, ")" ))
//
|
D4Ecas0
(tknd,d4e1,dcls) =>
( print("D4Ecas0(");
  print(tknd,";",d4e1,";",dcls,")"))
//
(* ****** ****** *)
//
|D4Eseqn
(d4es, d4e1) =>
(
print("D4Eseqn(",d4es,";",d4e1,")"))
//
(* ****** ****** *)
//
|D4Etup0
(npf1, d4es) =>
(
print("D4Etup0(",npf1,";",d4es,")"))
|
D4Etup1
(tknd,npf1,d4es) =>
( print("D4Etup1(")
; print(tknd,";",npf1,";",d4es,")"))
|
D4Ercd2
(tknd,npf1,ldes) =>
( print("D4Ercd2(")
; print(tknd,";",npf1,";",ldes,")"))
//
(* ****** ****** *)
|
D4Elam0
(tknd,f4as
,sres,arrw
,body,d2vs,dvts) =>
( print("D4Elam0(")
; print(tknd,";",f4as,";")
; print(sres,";",arrw,";")
; print(body,";",d2vs,";",dvts,")"))
//
|
D4Efix0
(tknd,fid0
,f4as,sres,arrw
,body,d2vs,dvts) =>
( print("D4Efix0(")
; print(tknd,";",fid0,";")
; print(f4as,";",sres,";",arrw,";")
; print(body,";",d2vs,";",dvts,")"))
//
(* ****** ****** *)
//
|
D4Eflat
(   d4e1   ) =>
print("D4Eflat(",d4e1,")") // left-val
//
(* ****** ****** *)
//
|
D4Eassgn
(d4el, d4er) =>
(
 print("D4Eassgn(",d4el,";",d4er,")"))
//
(* ****** ****** *)
//
|
D4Eraise
(tknd, d4e1) =>
(
 print("D4Eraise(",tknd,";",d4e1,")"))
//
(* ****** ****** *)
//
|D4Elabck
( d4e1 , lab2 ) =>
let
val
t2p1 = d4e1.styp() in
( print("D4Elabck(")
; print( d4e1, ";",t2p1, ";",lab2,")"))
endlet // end of [ D4Elabck(d4e1, lab2) ]
//
|D4Et2pck
( d4e1 , t2p2 ) =>
let
val
t2p1 = d4e1.styp() in
( print("D4Et2pck(")
; print( d4e1, ";",t2p1, ";",t2p2,")"))
endlet // end of [ D4Et2pck(d4e1, t2p2) ]
//
(* ****** ****** *)
//
|D4Ep2tck
( d4e1 , t2p2 ) =>
(
print("D4Ep2tck(", d4e1, ";", t2p2,")"))
//
(* ****** ****** *)
//
|D4Elinex
( d4e1 , t2p2 ) =>
(
print("D4Elinex(", d4e1, ";", t2p2,")"))
//
(* ****** ****** *)
//
|D4Edvtck
( d4e1 , tcks ) =>
(
print("D4Edvtck(", d4e1, ";", tcks,")"))
//
(* ****** ****** *)
//
|D4Enone0() => print( "D4Enone0(", ")" )
|D4Enone1(d3e1) => print("D4Enone1(", d3e1, ")")
|D4Enone2(d4e1) => print("D4Enone2(", d4e1, ")")
//
|D4Eerrck // HX: generated by [tread34]
(lvl1(*err-level*),dexp) => print("D4Eerrck(",lvl1,";",dexp,")")
//
end (*let*) // end of [d4exp_fprint(out, d4e0)]

(* ****** ****** *)
(* ****** ****** *)
//
#implfun
f4arg_fprint
(out, farg) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
farg.node() of
|
F4ARGdapp
(npf1,d4ps) =>
print
("F4ARGdapp(",npf1,";",d4ps,")")
|
F4ARGsapp
(s2vs,s2ps) =>
print
("F4ARGsapp(",s2vs,";",s2ps,")")
|
F4ARGmets
(   s2es   ) => print("F4ARGmets(",s2es,")")
(*
|
F4ARGsapq
(   s2vs   ) => print("F4ARGsapq(",s2vs,")")
*)
//
end (*let*) // end of [f4arg_fprint(out,farg)]
//
(* ****** ****** *)
//
#implfun
d4gua_fprint
(out, dgua) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
dgua.node() of
|
D4GUAexp(d4e1) =>
print("D4GUAexp(",d4e1,")")
|
D4GUAmat(d4e1,d4p2) =>
print("D4GUAmat(",d4e1,";",d4p2,")")
//
end (*let*) // end of [d4gua_fprint(out,dgua)]
//
(* ****** ****** *)
//
#implfun
d4gpt_fprint
(out, dgpt) =
let
#impltmp
g_print$out<>() = out
in//let
case+
dgpt.node() of
|
D4GPTpat(d4p1) =>
print("D4GPTpat(",d4p1,")")
|
D4GPTgua(d4p1,d4gs) =>
print("D4GPTgua(",d4p1,";",d4gs,")")
end (*let*) // end of [d4gpt_fprint(out,dgpt)]
//
#implfun
d4cls_fprint
(out, dcls) =
let
//
#impltmp
g_print$out<>() = out
//
val darg =
(
  d4cls_get_darg(dcls))
val d2vs =
(
  d4cls_get_vars(dcls))
val dvts =
(
  d4cls_get_dvts(dcls))
//
in//let
case+
dcls.node() of
|
D4CLSgpt(dgpt) =>
(
print("D4CLSgpt(", dgpt, ")"))
|
D4CLScls(d4g1,d4e2) =>
(
print("D4CLScls(");
print
( d4g1, ";", d4e2, ";"
, darg, ";", d2vs, ";", dvts, ")"))
end (*let*) // end of [d4cls_fprint(out,dcls)]
//
(* ****** ****** *)
(* ****** ****** *)

#implfun
d4ecl_fprint
(out, dcl0) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
dcl0.node() of
//
|D4Cd3ecl(d3cl) =>
print("D4Cd3ecl(",d3cl,")")
//
(* ****** ****** *)
//
|D4Clocal0(head, body) =>
(
print("D4Clocal(",head,";",body,")"))
//
(* ****** ****** *)
//
|
D4Cinclude
( knd0, tknd
, gsrc, fopt, dopt ) =>
(
print("D4Cinclude(");
print
(
knd0,";",
tknd,";",gsrc,";",fopt,";","...",")"))
//
(* ****** ****** *)
//
|
D4Cvaldclst
(  tknd, d4vs  ) =>
(
print("D4Cvaldclst(",tknd,";",d4vs,")"))
|
D4Cvardclst
(  tknd, d4vs  ) =>
(
print("D4Cvardclst(",tknd,";",d4vs,")"))
//
|
D4Cfundclst
(tknd
,tqas,d2cs,d4fs) =>
(
print("D4Cfundclst(");
print(tknd,";",tqas,";",d2cs,";",d4fs,")"))
//
(* ****** ****** *)
//
|D4Cnone0() => print( "D4Cnone0(", ")" )
|D4Cnone1(d3cl) => print( "D4Cnone1(",d3cl,")" )
|D4Cnone2(d4cl) => print( "D4Cnone2(",d4cl,")" )
//
(* ****** ****** *)
//
|
D4Cerrck // HX: generated by [tread01]
(lvl1(*err-level*),d4cl) => print("D4Cerrck(",lvl1,";",d4cl,")")
//
end (*let*) // end of [d4ecl_fprint(out, dcl0)]

(* ****** ****** *)
(* ****** ****** *)
//
#implfun
d4valdcl_fprint
  (out, dval) = let
//
val dpat =
d4valdcl_get_dpat(dval)
val darg =
d4valdcl_get_darg(dval)
val tdxp =
d4valdcl_get_tdxp(dval)
val wsxp =
d4valdcl_get_wsxp(dval)
//
#impltmp g_print$out<>() = out
//
in//let
(
print("D4VALDCL(");
print(dpat,";",darg,";",tdxp,";",wsxp,")"))
end(*let*)//end-of-[d4valdcl_fprint(out,dval)]
//
(* ****** ****** *)
//
#implfun
d4vardcl_fprint
  (out, dvar) = let
//
val dpid =
d4vardcl_get_dpid(dvar)
val vpid =
d4vardcl_get_vpid(dvar)
val sres =
d4vardcl_get_sres(dvar)
val dini =
d4vardcl_get_dini(dvar)
//
#impltmp g_print$out<>() = out
//
in//let
(
print("D4VARDCL(");
print(dpid,";",vpid,";",sres,";",dini,")"))
end(*let*)//end-of-[d4vardcl_fprint(out,dvar)]
//
(* ****** ****** *)

#implfun
d4fundcl_fprint
  (out, dfun) = let
//
val dpid =
d4fundcl_get_dpid(dfun)
val farg =
d4fundcl_get_farg(dfun)
val sres =
d4fundcl_get_sres(dfun)
val tdxp =
d4fundcl_get_tdxp(dfun)
val wsxp =
d4fundcl_get_wsxp(dfun)
//
val d2vs =
d4fundcl_get_vars(dfun)
val dvts =
d4fundcl_get_dvts(dfun)
//
#impltmp g_print$out<>() = out
//
in//let
(
print("D4FUNDCL(");
print(
dpid, ";", farg, ";", sres, ";");
print(
tdxp, ";", wsxp, ";", d2vs, ";", dvts, ")"))
end(*let*)//end-of-[d4fundcl_fprint(out,dfun)]

(* ****** ****** *)
(* ****** ****** *)

#implfun
d4parsed_fprint
  (out, dpar) = let
//
val
stadyn =
d4parsed_get_stadyn(dpar)
val
nerror =
d4parsed_get_nerror(dpar)
val
source =
d4parsed_get_source(dpar)
val
parsed =
d4parsed_get_parsed(dpar)
//
#impltmp g_print$out<>() = out
//
in//let
(
print
("D4PARSED(");
print
(stadyn,";",nerror,";",source,";",parsed,")"))
end (*let*) // end-of-[d4parsed_fprint(out,dpar)]

(* ****** ****** *)
(* ****** ****** *)

(* end of [ATS3/XATSOPT_srcgen2_DATS_dynexp4_print0.dats] *)
