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
Thu 27 Jul 2023 12:39:57 PM EDT
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
#staload "./../SATS/locinfo.sats"
(* ****** ****** *)
#staload "./../SATS/lexing0.sats"
(* ****** ****** *)
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/dynexp3.sats"
(* ****** ****** *)
#staload "./../SATS/fperr30.sats"
(* ****** ****** *)
#define FPERR30_ERRVL 2
(* ****** ****** *)
#symload lctn with token_get_lctn
#symload node with token_get_node
(* ****** ****** *)
#symload lctn with d3pat_get_lctn
#symload node with d3pat_get_node
#symload lctn with d3exp_get_lctn
#symload node with d3exp_get_node
(* ****** ****** *)
#symload lctn with f3arg_get_lctn
#symload node with f3arg_get_node
(* ****** ****** *)
#symload lctn with d3gua_get_lctn
#symload node with d3gua_get_node
#symload lctn with d3gpt_get_lctn
#symload node with d3gpt_get_node
#symload lctn with d3cls_get_lctn
#symload node with d3cls_get_node
(* ****** ****** *)

local

fun
auxmain
( out: FILR
, d3p: d3pat): void =
let
//
#impltmp
g_print$out<>() = out
//
in//let
//
case+
d3p.node() of
//
|
D3Pdap1(d3f0) =>
let
val () =
fperr30_d3pat(out, d3f0) end
|
D3Pdapp
( d3f0
, npf1, d3ps) =>
let
val () =
fperr30_d3pat(out, d3f0)
val () =
fperr30_d3patlst(out, d3ps) end
//
|D3Pnone0 _ => (  (*void*)  )
|D3Pnone1 _ => () | D3Pnone2 _ => ()
|
D3Perrck(_,_) => fperr30_d3pat(out, d3p)
//
|
_(*otherwise*) =>
let
//
  val loc = d3p.lctn((*void*))
  val t2p = d3p.styp((*void*))
//
  val ( ) = prerrsln
  ("fperr30_d3pat: auxmain: loc = ", loc)
  val ( ) = prerrsln
  ("fperr30_d3pat: auxmain: t2p = ", t2p)
  val ( ) = prerrsln
  ("fperr30_d3pat: auxmain: d3p = ", d3p)
endlet
//
end (*let*) // end-of-[ auxmain(out, d3p) ]

in//local
//
#implfun
fperr30_d3pat
( out, d3p0 ) =
let
//
#impltmp
g_print$out<>() = out
//
val () =
let
val loc0 = d3p0.lctn()
in//let
(*
prerrsln
("fperr30_d3pat: loc0 = ", loc0)
*)
end//let
(*
val () =
prerrsln
("fperr30_d3pat: d3p0 = ", d3p0)
*)
//
in//let
//
case+
d3p0.node() of
|
D3Perrck(lvl, d3p1) =>
(
auxmain( out, d3p1 ); 
if
(lvl
>FPERR30_ERRVL)
then ((*void*)) else
let
val
loc0 = d3p0.lctn((*0*))
in//let
printsln();
printsln("\
FPERR30-ERROR:", loc0, ":", d3p0)
end//let
)
| _(* otherwise *) => (  (* skipped *)  )
//
end(*let*)//end-of(fperr30_d3pat(out,d3p0))
//
(* ****** ****** *)
//
endloc(*local*)//end-of(local(fperr30_d3pat))

(* ****** ****** *)
//
#implfun
fperr30_l3d3p
(out, ld3p) =
(
case+ ld3p of
|
D3LAB(lab,d3p1) => fperr30_d3pat(out,d3p1)
) (*case+*)//end-of-(fperr30_d3pat(out,ld3p))
//
(* ****** ****** *)

local

fun
auxmain
( out: FILR
, d3e: d3exp): void =
let
//
#impltmp
g_print$out<>() = out
//
in//let
//
case+
d3e.node() of
//
|
D3Esapp
(d3f0,s2es) =>
let
val () =
fperr30_d3exp(out, d3f0)
(*
val () =
fperr30_s2explst(out, s2es)
*)
endlet
//
|
D3Etapp
(d3f0,s2es) =>
let
val () =
fperr30_d3exp(out, d3f0)
(*
val () =
fperr30_s2explst(out, s2es)
*)
endlet
//
|
D3Edapp
(d3f0
,npf1, d3es) =>
let
val () =
fperr30_d3exp(out, d3f0)
val () =
fperr30_d3explst(out, d3es)
endlet
//
|
D3Elet0
(dcls, d3e1) =>
(
fperr30_d3exp(out, d3e1))
where
{
val () =
fperr30_d3eclist(out, dcls) }
//(*where*)//end-of-[D3Elet0]
//
|
D3Eift0
(d3e1,dthn,dels) =>
let
  val () =
  fperr30_d3exp(out, d3e1)
  val () =
  fperr30_d3expopt(out, dthn)
  val () =
  fperr30_d3expopt(out, dels)
endlet
//
|
D3Ecas0
(tknd,d3e1,dcls) =>
let
  val () =
  fperr30_d3exp(out, d3e1)
  val () =
  fperr30_d3clslst(out, dcls)
endlet
//
|
D3Eseqn
( d3es, d3e1) =>
(
  fperr30_d3exp(out, d3e1))
where
{ val () =
  fperr30_d3explst(out, d3es)
}(*where*)//end-of-[D3Eseqn]
//
|
D3Ewhere
( d3e1, dcls) =>
(
  fperr30_d3exp(out, d3e1))
where
{ val () =
  fperr30_d3eclist(out, dcls)
}(*where*)//end-of-[D3Ewhere]
//
|
D3Eassgn
( d3el, d3er) =>
let
val () =
(
  fperr30_d3exp(out, d3el) )
val () =
(
  fperr30_d3exp(out, d3er) )
end(*let*)//end-of-[D3Eassgn]
//
(* ****** ****** *)
//
|
D3Et2pck
( d3e1, t2p2) =>
let
val () =
(
  fperr30_d3exp(out, d3e1) )
(*
val () =
(
  fperr30_s2typ(out, t2p2) )
*)
end(*let*)//end-of-[D3Et2pck]
//
(* ****** ****** *)
//
|D3Enone0 _ => (  (*void*)  )
|D3Enone1 _ => () | D3Enone2 _ => ()
|
D3Eerrck(_,_) => fperr30_d3exp(out, d3e)
//
|
_(*otherwise*) =>
let
//
val loc = d3e.lctn((*void*))
val t2p = d3e.styp((*void*))
//
val ( ) = prerrsln
("fperr30_d3exp: auxmain: loc = ", loc)
val ( ) = prerrsln
("fperr30_d3exp: auxmain: t2p = ", t2p)
val ( ) = prerrsln
("fperr30_d3exp: auxmain: d3e = ", d3e)
//
endlet
//
end (*let*) // end-of-[ auxmain(out, d3e) ]

in//local
//
#implfun
fperr30_d3exp
( out, d3e0 ) =
let
//
#impltmp
g_print$out<>() = out
//
val () =
let
val loc0 = d3e0.lctn()
in//let
(*
prerrsln
("fperr30_d3exp: loc0 = ", loc0)
*)
end//let
(*
val () =
prerrsln
("fperr30_d3exp: d3e0 = ", d3e0)
*)
//
in//let
//
case+
d3e0.node() of
|
D3Eerrck(lvl, d3e1) =>
(
auxmain( out, d3e1 ); 
if
(lvl
>FPERR30_ERRVL)
then ((*void*)) else
let
val
loc0 = d3e0.lctn()
in//let
printsln();
printsln("\
FPERR30-ERROR:", loc0, ":", d3e0)
end//let
)
| _(* otherwise *) => (  (* skipped *)  )
//
end(*let*)//end-of(fperr30_d3exp(out,d3e0))
//
(* ****** ****** *)
//
endloc(*local*)//end-of(local(fperr30_d3exp))

(* ****** ****** *)
//
#implfun
fperr30_l3d3e
(out, ld3e) =
(
case+ ld3e of
|
D3LAB(lab,d3e1) => fperr30_d3exp(out,d3e1)
) (*case+*)//end-of-(fperr30_d3exp(out,ld3e))
//
(* ****** ****** *)
//
#implfun
fperr30_f3arg
(out, farg) =
(
case+
farg.node() of
//
|F3ARGdapp
(npf1, d3ps) =>
fperr30_d3patlst(out, d3ps)
//
|F3ARGsapp
(s2vs, s2es) => ( (*void*) )
|F3ARGmets
(   s2es   ) => ( (*void*) ) )//end-of-fun
//(*case+*)//end-of-(fperr30_f3arg(out,farg)]
//
(* ****** ****** *)
//
#implfun
fperr30_d3gua
(out, dgua) =
(
case+
dgua.node() of
|
D3GUAexp(d3e1) =>
fperr30_d3exp(out, d3e1)
|
D3GUAmat(d3e1,d3p2) =>
let
val () = fperr30_d3exp(out, d3e1)
val () = fperr30_d3pat(out, d3p2)
endlet // end of [D3GUAmat(_,_,_)]
) (*case*) // end-of(fperr30_d3gua(out,dgua))
//
(* ****** ****** *)
//
#implfun
fperr30_d3gpt
(out, dgpt) =
(
case+
dgpt.node() of
|
D3GPTpat(d3p1) =>
fperr30_d3pat(out, d3p1)
|
D3GPTgua(d3p1,d3gs) =>
let
val () = fperr30_d3pat(out, d3p1)
val () = fperr30_d3gualst(out, d3gs)
endlet // end of [ D3GPTgua(_,_,_) ]
) (*case*) // end-of(fperr30_d3gpt(out,dgpt))
//
(* ****** ****** *)
//
#implfun
fperr30_d3cls
(out, dcls) =
(
case+
dcls.node() of
|
D3CLSgpt(dgpt) =>
fperr30_d3gpt(out, dgpt)
|
D3CLScls(dgpt,d3e2) =>
let
val () = fperr30_d3gpt(out, dgpt)
val () = fperr30_d3exp(out, d3e2)
endlet // end of [ D3CLScls(_,_,_) ]
) (*case*) // end-of(fperr30_d3cls(out,dcls))
//
(* ****** ****** *)
//
#implfun
fperr30_d3patlst
  (out, d3ps) =
(
  list_fperr30_fnp(out, d3ps, fperr30_d3pat))
//
(* ****** ****** *)
//
#implfun
fperr30_l3d3plst
  (out, ldps) =
(
  list_fperr30_fnp(out, ldps, fperr30_l3d3p))
//
(* ****** ****** *)
//
#implfun
fperr30_d3explst
  (out, d3es) =
(
  list_fperr30_fnp(out, d3es, fperr30_d3exp))
//
#implfun
fperr30_d3expopt
  (out, dopt) =
(
  optn_fperr30_fnp(out, dopt, fperr30_d3exp))
//
(* ****** ****** *)
//
#implfun
fperr30_l3d3elst
  (out, ldes) =
(
  list_fperr30_fnp(out, ldes, fperr30_l3d3e))
//
(* ****** ****** *)
//
#implfun
fperr30_f3arglst
  (out, f3as) =
(
  list_fperr30_fnp(out, f3as, fperr30_f3arg))
//
(* ****** ****** *)
//
#implfun
fperr30_d3gualst
  (out, d3gs) =
(
  list_fperr30_fnp(out, d3gs, fperr30_d3gua))
//
(* ****** ****** *)
//
#implfun
fperr30_d3clslst
  (out, d3cs) =
(
  list_fperr30_fnp(out, d3cs, fperr30_d3cls))
//
(* ****** ****** *)

(* end of [ATS3/XATSOPT_srcgen2_DATS_fperr30_dynexp.dats] *)
