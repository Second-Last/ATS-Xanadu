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
Tue 14 Feb 2023 08:27:19 PM EST
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
_(*?*) = "./lexing0_print0.dats"
(* ****** ****** *)
#staload "./../SATS/lexing0.sats"
(* ****** ****** *)
(*
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/dynexp0.sats"
*)
(* ****** ****** *)
#staload "./../SATS/staexp1.sats"
#staload "./../SATS/dynexp1.sats"
(* ****** ****** *)
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/dynexp2.sats"
(* ****** ****** *)
#staload "./../SATS/dynexp3.sats"
(* ****** ****** *)
#symload lctn with d3pat_get_lctn
#symload node with d3pat_get_node
(* ****** ****** *)
#symload lctn with d3exp_get_lctn
#symload node with d3exp_get_node
(* ****** ****** *)
#symload lctn with f3arg_get_lctn
#symload node with f3arg_get_node
(* ****** ****** *)
#symload lctn with d3gua_get_lctn
#symload lctn with d3gpt_get_lctn
#symload lctn with d3cls_get_lctn
#symload node with d3gua_get_node
#symload node with d3gpt_get_node
#symload node with d3cls_get_node
(* ****** ****** *)
#symload lctn with d3ecl_get_lctn
#symload node with d3ecl_get_node
(* ****** ****** *)

#implfun
d3pat_fprint
(out, d3p0) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
d3p0.node() of
//
|D3Pany() =>
print("D3Pany(",")")
//
|D3Pvar(d2v) =>
print("D3Pvar(",d2v,")")
//
|D3Pint(tok) =>
print("D3Pint(",tok,")")
|D3Pbtf(sym) =>
print("D3Pbtf(",sym,")")
|D3Pchr(tok) =>
print("D3Pchr(",tok,")")
|D3Pstr(tok) =>
print("D3Pstr(",tok,")")
//
|D3Pcon(d2c) =>
print("D3Pcon(",d2c,")")
//
|
D3Psapp
(d3f0, s2vs) =>
print
("D3Psapp(",d3f0,";",s2vs,")")
|
D3Psapq
(d3f0, s2vs) =>
print
("D3Psapq(",d3f0,";",s2vs,")")
//
|
D3Ptapq
(d3p1, tjas) =>
print("D3Ptapq(",d3p1,";",tjas,")")
//
|
D3Pdapp
(d3f0, npf1, d3ps) =>
(
print("D3Pdapp(");
print(d3f0,";",npf1,";",d3ps,")") )
//
|
D3Ptup0(npf1, d3ps) =>
print("D3Ptup0(",npf1,";",d3ps,")")
|
D3Ptup1
( tknd, npf1, d3ps ) =>
( print("D3Ptup1(")
; print(tknd,";",npf1,";",d3ps,")") )
|
D3Prcd2
( tknd, npf1, ldps ) =>
( print("D3Prcd2(")
; print(tknd,";",npf1,";",ldps,")") )
//
|
D3Pannot
(d3p1, s1e2, s2e2) =>
print("D3Pannot(",d3p1,";",s1e2,";",s2e2,")")
//
|D3Pt2pck
( d3p1 , t2p2 ) =>
(print("D3Pt2pck(",d3p1,";",t2p2,")"))
//
|D3Pnone0() => print( "D3Pnone0(",")" )
|D3Pnone1(d1p1) => print("D3Pnone1(",d1p1,")")
|D3Pnone2(d3p1) => print("D3Pnone2(",d3p1,")")
//
|
D3Perrck // HX: generated by [tread01]
(lvl1(*err-level*),d3p2) => print("D3Perrck(",lvl1,";",d3p2,")")
//
end (*let*) // end of [d3pat_fprint(out, d3p0)]

(* ****** ****** *)

#implfun
d3exp_fprint
(out, d3e0) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
d3e0.node() of
//
|D3Eint(tok) =>
print("D3Eint(",tok,")")
|D3Ebtf(sym) =>
print("D3Ebtf(",sym,")")
|D3Echr(tok) =>
print("D3Echr(",tok,")")
|D3Estr(tok) =>
print("D3Estr(",tok,")")
//
|D3Ei00(int) =>
print("D3Ei00(",int,")")
|D3Eb00(btf) =>
print("D3Eb00(",btf,")")
|D3Ec00(chr) =>
print("D3Ec00(",chr,")")
|D3Es00(str) =>
print("D3Es00(",str,")")
//
|D3Etop(tok) =>
print("D3Etop(", tok, ")")
//
|D3Evar(d2v) =>
print("D3Evar(", d2v, ")")
//
|D3Econ(d2c) =>
print("D3Econ(", d2c, ")")
|D3Ecst(d2c) =>
print("D3Ecst(", d2c, ")")
//
|
D3Esapp
(d3e1, s2es) =>
print("D3Esapp(",d3e1,";",s2es,")")
|
D3Esapq
(d3e1, t2ps) =>
print("D3Esapq(",d3e1,";",t2ps,")")
//
|
D3Etapp
(d3e1, s2es) =>
print("D3Etapp(",d3e1,";",s2es,")")
|
D3Etapq
(d3e1, tjas) =>
print("D3Etapq(",d3e1,";",tjas,")")
//
|
D3Edapp
(d3f0,npf1,d3es) =>
( print("D3Edapp(")
; print(d3f0,";",npf1,";",d3es,")"))
//
|
D3Elet0
(dcls, d3e1) =>
(
print("D3Elet0(",dcls,";",d3e1,")"))
//
|D3Eift0
(d3e1,dthn,dels) =>
( print("D3Eift0(")
; print(d3e1,";",dthn,";",dels,")"))
//
|
D3Ecas0
(tknd,d3e1,d3cs) =>
( print("D3Ecas0(");
  print(tknd,";",d3e1,";",d3cs,")"))
//
|D3Etup0
(npf1, d3es) =>
(
print("D3Etup0(",npf1,";",d3es,")"))
|
D3Etup1
(tknd,npf1,d3es) =>
( print("D3Etup1(")
; print(tknd,";",npf1,";",d3es,")") )
|
D3Ercd2
(tknd,npf1,ldes) =>
( print("D3Ercd2(")
; print(tknd,";",npf1,";",ldes,")") )
//
|
D3Ewhere
(d3e1, dcls) =>
print("D3Ewhere(",d3e1,";",dcls,")")
//
|
D3Eassgn
(d3el, d3er) =>
print("D3Eassgn(",d3el,";",d3er,")")
//
|D3Et2pck
( d3e1 , t2p2 ) =>
(print("D3Et2pck(",d3e1,";",t2p2,")"))
//
|D3Enone0() => print( "D3Enone0(",")" )
|D3Enone1(d1e1) => print("D3Enone1(",d1e1,")")
|D3Enone2(d3e1) => print("D3Enone2(",d3e1,")")
//
|
D3Eerrck // HX: generated by [tread23]
(lvl1(*err-level*),d3e2) => print("D3Eerrck(",lvl1,";",d3e2,")")
//
end (*let*) // end of [d3exp_fprint(out, d3e0)]

(* ****** ****** *)

#implfun
f3arg_fprint
(out, farg) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
farg.node() of
|
F3ARGsta0
(s2vs,s2ps) =>
print
("F3ARGsta0(",s2vs,";",s2ps,")")
|
F3ARGdyn0
(npf1,d3ps) =>
print
("F3ARGdyn0(",npf1,";",d3ps,")")
|
F3ARGmet0
(   s2es   ) => print("F3ARGmet0(",s2es,")")
//
end (*let*) // end of [f3arg_fprint(out,farg)]

(* ****** ****** *)
//
#implfun
d3gua_fprint
(out, dgua) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
dgua.node() of
|
D3GUAexp(d3e1) =>
print("D3GUAexp(",d3e1,")")
|
D3GUAmat(d3e1,d3p2) =>
print("D3GUAmat(",d3e1,";",d3p2,")")
//
end (*let*) // end of [d3gua_fprint(out,dgua)]
//
(* ****** ****** *)
//
#implfun
d3gpt_fprint
(out, dgpt) =
let
#impltmp
g_print$out<>() = out
in//let
case+
dgpt.node() of
|
D3GPTpat(d3p1) =>
print("D3GPTpat(",d3p1,")")
|
D3GPTgua(d3p1,d3gs) =>
print("D3GPTgua(",d3p1,";",d3gs,")")
end (*let*) // end of [d3gpt_fprint(out,dgpt)]
//
#implfun
d3cls_fprint
(out, dcls) =
let
#impltmp
g_print$out<>() = out
in//let
case+
dcls.node() of
|
D3CLSgpt(dgpt) =>
print("D3CLSgpt(",dgpt,")")
|
D3CLScls(d3g1,d3e2) =>
print("D3CLScls(",d3g1,";",d3e2,")")
end (*let*) // end of [d3cls_fprint(out,dcls)]
//
(* ****** ****** *)

#implfun
d3ecl_fprint
(out, dcl0) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
dcl0.node() of
//
|D3Cd2ecl(d2cl) =>
print("D3Cd2ecl(",d2cl,")")
//
|
D3Cstatic(tknd,dcl1) =>
print("D3Cstatic(",tknd,";",dcl1,")")
|
D3Cextern(tknd,dcl1) =>
print("D3Cextern(",tknd,";",dcl1,")")
//
|
D3Clocal0(head, body) =>
print( "D3Clocal(",head,";",body,")" )
//
|
D3Cvaldclst
(  tknd, d3vs  ) =>
print("D3Cvaldclst(",tknd,";",d3vs,")")
|
D3Cvardclst
(  tknd, d3vs  ) =>
print("D3Cvardclst(",tknd,";",d3vs,")")
//
|
D3Cfundclst
(tknd,tqas,d3fs) =>
print("D3Cfundclst(",tknd,";",tqas,";",d3fs,")")
//
//
|D3Cnone0() => print( "D3Cnone0(", ")" )
|D3Cnone1(d2cl) => print( "D3Cnone1(",d2cl,")" )
|D3Cnone2(d3cl) => print( "D3Cnone2(",d3cl,")" )
//
|
D3Cerrck // HX: generated by [tread01]
(lvl1(*err-level*),d3cl) => print("D3Cerrck(",lvl1,";",d3cl,")")
//
end (*let*) // end of [d3ecl_fprint(out, dcl0)]

(* ****** ****** *)

#implfun
d3valdcl_fprint
  (out, dval) = let
//
val dpat =
d3valdcl_get_dpat(dval)
val tdxp =
d3valdcl_get_tdxp(dval)
val wsxp =
d3valdcl_get_wsxp(dval)
//
#impltmp g_print$out<>() = out
//
in//let
print("D3VALDCL(",dpat,";",tdxp,",",wsxp,")")
end(*let*)//end-of-[d3valdcl_fprint(out,dval)]

(* ****** ****** *)
//
#implfun
d3vardcl_fprint
  (out, dvar) = let
//
val dpid =
d3vardcl_get_dpid(dvar)
val vpid =
d3vardcl_get_vpid(dvar)
val sres =
d3vardcl_get_sres(dvar)
val dini =
d3vardcl_get_dini(dvar)
//
#impltmp g_print$out<>() = out
//
in//let
(
print("D3VARDCL(");
print(dpid,";",vpid,";",sres,",",dini,")"))
end(*let*)//end-of-[d3vardcl_fprint(out,dvar)]
//
(* ****** ****** *)

#implfun
d3fundcl_fprint
  (out, dfun) = let
//
val dpid =
d3fundcl_get_dpid(dfun)
val farg =
d3fundcl_get_farg(dfun)
val sres =
d3fundcl_get_sres(dfun)
val tdxp =
d3fundcl_get_tdxp(dfun)
val wsxp =
d3fundcl_get_wsxp(dfun)
//
#impltmp g_print$out<>() = out
//
in//let
(
print("D3FUNDCL(",dpid,";");
print(farg,";",sres,";",tdxp,",",wsxp,")"))
end(*let*)//end-of-[d3fundcl_fprint(out,dfun)]

(* ****** ****** *)

#implfun
d3parsed_fprint
  (out, dpar) = let
//
val
stadyn =
d3parsed_get_stadyn(dpar)
val
nerror =
d3parsed_get_nerror(dpar)
val
source =
d3parsed_get_source(dpar)
val
parsed =
d3parsed_get_parsed(dpar)
//
#impltmp g_print$out<>() = out
//
in//let
(
print
("D3PARSED(");
print
(stadyn,";",nerror,";",source,";",parsed,")"))
end (*let*) // end-of-[d3parsed_fprint(out,dpar)]

(* ****** ****** *)

(* end of [ATS3/XATSOPT_srcgen2_dynexp3_print0.dats] *)
