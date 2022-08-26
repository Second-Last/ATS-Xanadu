(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2022 Hongwei Xi, ATS Trustful Software, Inc.
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
Tue Aug 16 16:09:56 EDT 2022
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
#staload "./../SATS/staexp1.sats"
(* ****** ****** *)
#staload "./../SATS/dynexp1.sats"
(* ****** ****** *)
#staload "./../SATS/tread01.sats"
(* ****** ****** *)
#symload lctn with token_get_lctn
#symload node with token_get_node
(* ****** ****** *)
#symload lctn with sort1_get_lctn
#symload node with sort1_get_node
(* ****** ****** *)
#symload lctn with s1exp_get_lctn
#symload node with s1exp_get_node
(* ****** ****** *)
#symload lctn with d1pat_get_lctn
#symload node with d1pat_get_node
(* ****** ****** *)
#symload lctn with d1exp_get_lctn
#symload node with d1exp_get_node
(* ****** ****** *)
#symload lctn with d1ecl_get_lctn
#symload node with d1ecl_get_node
(* ****** ****** *)
#define FPEMSG_ERRVL 2
(* ****** ****** *)
#symload fpemsg with g1exp_fpemsg
(* ****** ****** *)
#symload fpemsg with sort1_fpemsg
#symload fpemsg with s1exp_fpemsg
#symload fpemsg with l1s1e_fpemsg
(* ****** ****** *)
#symload fpemsg with d1pat_fpemsg
#symload fpemsg with l1d1p_fpemsg
#symload fpemsg with d1exp_fpemsg
#symload fpemsg with l1d1e_fpemsg
(* ****** ****** *)
#symload fpemsg with d1ecl_fpemsg
(* ****** ****** *)

local
//
fun
auxmain
( out: FILR
, g1e: g1exp): void =
let
#impltmp
g_print$out<>() = out
in//let
case+
g1e.node() of
//
|G1Eid0 _ => ()
//
|G1Eint _ => ()
|G1Echr _ => ()
|G1Eflt _ => ()
|G1Estr _ => ()
//
|
G1Eb0sh _ => ()
|
G1Eb1sh(g1e1) =>
g1exp_fpemsg(out, g1e1)
//
|
G1Ea0pp() => ()
|
G1Ea1pp(g1f0,g1e1) =>
(
g1exp_fpemsg(out, g1f0);
g1exp_fpemsg(out, g1e1))
|
G1Ea2pp
(g1f0,g1e1,g1e2) =>
(
g1exp_fpemsg(out, g1f0);
g1exp_fpemsg(out, g1e1);
g1exp_fpemsg(out, g1e2))
|
G1Elist(g1es) =>
g1explst_fpemsg(out, g1es)
|
G1Eif0
(g1e1,g1e2,g1e3) =>
(
g1exp_fpemsg(out, g1e1);
g1exp_fpemsg(out, g1e2);
g1exp_fpemsg(out, g1e3))
//
|G1Enone0() => ((*void*))
|G1Enone1(g0e1) => ((*void*))
//
|
G1Eerrck _ => g1exp_fpemsg(out, g1e)
end(*let*)//end-of-(auxmain(out,g1e))
//
in//local

#implfun
g1exp_fpemsg
(out, g1e0) =
let
#impltmp
g_print$out<>() = out
in//let
case+
g1e0.node() of
|
G1Eerrck(lvl,g1e1) =>
(
auxmain( out, g1e1 ); 
if
(lvl
>FPEMSG_ERRVL) then () else
let
val loc0 = g1e0.lctn() in
println
("TREAD01-ERROR:",loc0,":",g1e0)
end
)
| _(* otherwise *) => (  (*skipped*)  )
//
end(*let*)//end-of(g1exp_fpemsg(out,g1e0))
//
endloc(*local*)//end-of(local(g1exp_fpemsg))

(* ****** ****** *)

local

fun
auxmain
( out: FILR
, s1t: sort1): void =
let
#impltmp
g_print$out<>() = out
in//let
case
s1t.node() of
//
|S1Tid0 _ => ()
|S1Tint _ => ()
//
|
S1Ta0pp() => ()
|
S1Ta1pp(s1f0,s1t1) =>
(
sort1_fpemsg(out, s1f0);
sort1_fpemsg(out, s1t1))
|
S1Ta2pp
(s1f0,s1t1,s1t2) =>
(
sort1_fpemsg(out, s1f0);
sort1_fpemsg(out, s1t1);
sort1_fpemsg(out, s1t2))
|
S1Tlist(s1ts) =>
sort1lst_fpemsg(out, s1ts)
|
S1Tqual(tok1,s1t2) =>
(
sort1_fpemsg(out, s1t2))
//
|S1Tnone0() => ((*void*))
|S1Tnone1(s0t1) => ((*void*))
//
|
S1Terrck _ => sort1_fpemsg(out, s1t)
end(*let*)//end-of-(auxmain(out,s1t))
//
in//local
//
#implfun
sort1_fpemsg
( out, s1t0 ) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
s1t0.node() of
|
S1Terrck(lvl, s1t1) =>
(
auxmain( out, s1t1 ); 
if
(lvl
>FPEMSG_ERRVL) then () else
let
val loc0 = s1t0.lctn() in
println
("TREAD01-ERROR:",loc0,":",s1t0)
end
)
| _(* otherwise *) => (  (* skipped *)  )
//
end(*let*)//end-of(sort1_fpemsg(out,s1t0))
//
endloc(*local*)//end-of(local(sort1_fpemsg))

(* ****** ****** *)

local

fun
auxmain
( out: FILR
, s1e: s1exp): void =
let
#impltmp
g_print$out<>() = out
in//let
case
s1e.node() of
//
|S1Eid0 _ => ()
|S1Eint _ => ()
//
|
S1Eb0sh _ => ()
|
S1Eb1sh(s1e1) =>
s1exp_fpemsg(out, s1e1)
//
|
S1Ea0pp() => ()
|
S1Ea1pp(s1f0,s1e1) =>
(
s1exp_fpemsg(out, s1f0);
s1exp_fpemsg(out, s1e1))
|
S1Ea2pp
(s1f0,s1e1,s1e2) =>
(
s1exp_fpemsg(out, s1f0);
s1exp_fpemsg(out, s1e1);
s1exp_fpemsg(out, s1e2))
//
|
S1El1st(s1es) =>
s1explst_fpemsg(out, s1es)
|
S1El2st(ses1,ses2) =>
(
s1explst_fpemsg(out, ses1);
s1explst_fpemsg(out, ses2))
//
|
S1Et1up(tknd,s1es) =>
s1explst_fpemsg(out, s1es)
|
S1Et2up
(tknd, ses1, ses2) =>
(
s1explst_fpemsg(out, ses1);
s1explst_fpemsg(out, ses2))
//
|
S1Equal(tok1,s1e2) =>
(
s1exp_fpemsg(out, s1e2))
//
|S1Enone0() => ((*void*))
|S1Enone1(s0e1) => ((*void*))
//
|
S1Eerrck _ => s1exp_fpemsg(out, s1e)
end(*let*)//end-of-(auxmain(out,s1e))
//
in//local
//
#implfun
s1exp_fpemsg
( out, s1e0 ) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
s1e0.node() of
|
S1Eerrck(lvl, s1e1) =>
(
auxmain( out, s1e1 ); 
if
(lvl
>FPEMSG_ERRVL) then () else
let
val loc0 = s1e0.lctn() in
println
("TREAD01-ERROR:",loc0,":",s1e0)
end
)
| _(* otherwise *) => (  (* skipped *)  )
//
end(*let*)//end-of(s1exp_fpemsg(out,s1e0))
//
endloc(*local*)//end-of(local(s1exp_fpemsg))

(* ****** ****** *)
//
#implfun
l1s1e_fpemsg
(out, lse0) =
(
case+ lse0 of
|
S1LAB(lab,s1e1) => s1exp_fpemsg(out,s1e1)
) (*case+*)//end-of-(l1s1e_fpemsg(out,lse0))
//
(* ****** ****** *)
//
#implfun
s1arg_fpemsg
(out, s1a0) =
let
#impltmp
g_print$out<>() = out
in//let
case+
s1a0.node() of
|
S1ARGsome(sid0,topt) =>
(
  sort1opt_fpemsg(out, topt))
end(*let*)//end-of-[s1arg_fpemsg(out,s1a0)]
//
(* ****** ****** *)
//
#implfun
s1mag_fpemsg
(out, s1ma) =
let
#impltmp
g_print$out<>() = out
in//let
case+
s1ma.node() of
|
S1MAGlist(s1as) =>
let
//
val () = s1arglst_fpemsg(out, s1as)
//
end(*let*)//end-of-[S1MAGlist(_,_,_)]
end(*let*)//end-of-[s1mag_fpemsg(out,s1ma)]
//
(* ****** ****** *)
//
#implfun
t1arg_fpemsg
(out, t1a0) =
let
#impltmp
g_print$out<>() = out
in//let
case+
t1a0.node() of
|
T1ARGsome(s1t1,topt) => fpemsg(out, s1t1)
end(*let*)//end-of-[t1arg_fpemsg(out,t1a0)]
//
(* ****** ****** *)
//
#implfun
t1mag_fpemsg
(out, t1ma) =
let
#impltmp
g_print$out<>() = out
in//let
case+
t1ma.node() of
|
T1MAGlist(t1as) =>
let
//
val () = t1arglst_fpemsg(out, t1as)
//
end(*let*)//end-of-[T1MAGlist(_,_,_)]
end(*let*)//end-of-[t1mag_fpemsg(out,t1ma)]
//
(* ****** ****** *)
//
#implfun
s1tdf_fpemsg
(out, tdf0) =
let
#impltmp
g_print$out<>() = out
in//let
case+
tdf0.node() of
|
S1TDFsort(s1t1) =>
sort1_fpemsg(out, s1t1)
|
S1TDFtsub(s1a1,s1es) =>
let
val () =
  s1arg_fpemsg(out, s1a1)
val () =
  s1explst_fpemsg(out, s1es)
end(*let*)//end of [S1TDFtsub(out,tdf)]
end(*let*)//end-of-[s1tdf_fpemsg(out,tdf)]
//
(* ****** ****** *)

local
//
fun
auxmain
( out: FILR
, d1p: d1pat): void =
let
#impltmp
g_print$out<>() = out
in//let
case
d1p.node() of
//
|D1Pid0 _ => ()
|D1Pint _ => ()
//
|
D1Pb0sh _ => ()
|
D1Pb1sh(d1p1) =>
d1pat_fpemsg(out, d1p1)
//
|
D1Pa0pp() => ()
|
D1Pa1pp(d1f0,d1p1) =>
(
d1pat_fpemsg(out, d1f0);
d1pat_fpemsg(out, d1p1))
|
D1Pa2pp
(d1f0,d1p1,d1p2) =>
(
d1pat_fpemsg(out, d1f0);
d1pat_fpemsg(out, d1p1);
d1pat_fpemsg(out, d1p2))
//
|
D1Pl1st(d1ps) =>
d1patlst_fpemsg(out, d1ps)
|
D1Pl2st(dps1,dps2) =>
(
d1patlst_fpemsg(out, dps1);
d1patlst_fpemsg(out, dps2))
//
//
|
D1Pt1up(tknd,d1ps) =>
d1patlst_fpemsg(out, d1ps)
|
D1Pt2up
(tknd, dps1, dps2) =>
(
d1patlst_fpemsg(out, dps1);
d1patlst_fpemsg(out, dps2))
//
|
D1Pqual(tok1,d1p2) =>
(
d1pat_fpemsg(out, d1p2))
//
|D1Pnone0() => ((*void*))
|D1Pnone1(s0e1) => ((*void*))
//
|
D1Perrck _ => d1pat_fpemsg(out, d1p)
end(*let*)//end-of-(auxmain(out,d1p))
//
in//local
//
#implfun
d1pat_fpemsg
( out, d1p0 ) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
d1p0.node() of
|
D1Perrck(lvl, d1p1) =>
(
auxmain( out, d1p1 ); 
if
(lvl
>FPEMSG_ERRVL) then () else
let
val loc0 = d1p0.lctn() in
println
("TREAD01-ERROR:",loc0,":",d1p0)
end
)
| _(* otherwise *) => (  (* skipped *)  )
//
end(*let*)//end-of(d1pat_fpemsg(out,d1p0))
//
endloc(*local*)//end-of(local(d1pat_fpemsg))

(* ****** ****** *)
//
#implfun
l1d1p_fpemsg
(out, lde0) =
(
case+ lde0 of
|
D1LAB(lab,d1p1) => d1pat_fpemsg(out,d1p1)
) (*case+*)//end-of-(l1d1p_fpemsg(out,lde0))
//
(* ****** ****** *)

local

fun
auxmain
( out: FILR
, d1e: d1exp): void =
let
#impltmp
g_print$out<>() = out
in//let
case
d1e.node() of
//
|D1Eid0 _ => ()
|D1Eint _ => ()
//
|
D1Eb0sh _ => ()
|
D1Eb1sh(d1e1) =>
d1exp_fpemsg(out, d1e1)
//
|
D1Ea0pp() => ()
|
D1Ea1pp(d1f0,d1e1) =>
(
d1exp_fpemsg(out, d1f0);
d1exp_fpemsg(out, d1e1))
|
D1Ea2pp
(d1f0,d1e1,d1e2) =>
(
d1exp_fpemsg(out, d1f0);
d1exp_fpemsg(out, d1e1);
d1exp_fpemsg(out, d1e2))
//
|
D1El1st(d1es) =>
d1explst_fpemsg(out, d1es)
|
D1El2st(des1,des2) =>
(
d1explst_fpemsg(out, des1);
d1explst_fpemsg(out, des2))
//
|
D1Et1up(tknd,d1es) =>
d1explst_fpemsg(out, d1es)
|
D1Et2up
(tknd, des1, des2) =>
(
d1explst_fpemsg(out, des1);
d1explst_fpemsg(out, des2))
//
|
D1Equal(tok1,d1e2) =>
(
d1exp_fpemsg(out, d1e2))
//
|D1Enone0() => ((*void*))
|D1Enone1(s0e1) => ((*void*))
//
|
D1Eerrck _ => d1exp_fpemsg(out, d1e)
end(*let*)//end-of-(auxmain(out,d1e))
//
in//local
//
#implfun
d1exp_fpemsg
( out, d1e0 ) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
d1e0.node() of
|
D1Eerrck(lvl, d1e1) =>
(
auxmain( out, d1e1 ); 
if
(lvl
>FPEMSG_ERRVL) then () else
let
val loc0 = d1e0.lctn() in
println
("TREAD01-ERROR:",loc0,":",d1e0)
end
)
| _(* otherwise *) => (  (* skipped *)  )
//
end(*let*)//end-of(d1exp_fpemsg(out,d1e0))
//
endloc(*local*)//end-of(local(d1exp_fpemsg))

(* ****** ****** *)
//
#implfun
l1d1e_fpemsg
(out, lde0) =
(
case+ lde0 of
|
D1LAB(lab,d1e1) => d1exp_fpemsg(out,d1e1)
) (*case+*)//end-of-(l1d1e_fpemsg(out,lde0))
//
(* ****** ****** *)
//
#implfun
f1arg_fpemsg
  (out, farg) =
(
case+
farg.node() of
|
F1ARGdyn0(dpat) =>
d1pat_fpemsg(out, dpat)
|
F1ARGsta0(s1qs) =>
let
val () =
s1qualst_fpemsg(out, s1qs)
endlet // end of [F1ARGsta0(_,_,_)]
|
F1ARGmet0(s1es) =>
let
val () =
s1explst_fpemsg(out, s1es)
endlet // end of [F1ARGmet0(_,_,_)]
)
//
(* ****** ****** *)

local

fun
auxmain
( out: FILR
, dcl: d1ecl): void =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
dcl.node() of
//
|
D1Cstatic(tknd,dcl1) =>
let
val () =
d1ecl_fpemsg(out, dcl1)
endlet//end-of(D1Cstatic(_,_))
|
D1Cextern(tknd,dcl1) =>
let
val () =
d1ecl_fpemsg(out, dcl1)
endlet//end-of(D1Cextern(_,_))
//
|
D1Clocal0(dcs1,dcs2) =>
let
val () =
d1eclist_fpemsg(out, dcs1)
val () =
d1eclist_fpemsg(out, dcs2)
endlet // end of [D1Clocal0(...)]
//
|
D1Cabssort _ => ( (*void*) )
//
|
D1Cstacst0
( tknd
, sid0, tmas, s1t1) =>
let
  val () =
  t1maglst_fpemsg(out, tmas)
  val () = fpemsg(out, s1t1)
endlet // end-of-(D1Cstacst0(...))
//
|
D1Csortdef
(tknd, tid0, tdf1) =>
let
val () = s1tdf_fpemsg(out, tdf1)
endlet // end-of-(D1Csortdef(...))
//
|
D1Csymload
( tknd
, symb, dqid, gopt) =>
let
(*
val () = fpemsg(out, symb)
val () = fpemsg(out, dqid)
*)
val () = g1expopt_fpemsg(out, gopt)
endlet // end-of-( D0Csymload(...) )
//
|
D1Cinclude
(tknd, g1e1) =>
(
  g1exp_fpemsg(out, g1e1))
|
D1Cstaload
(tknd, g1e1) =>
(
  g1exp_fpemsg(out, g1e1))
|
D1Cdyninit
(tknd, g1e1) =>
(
  g1exp_fpemsg(out, g1e1))
//
|
D1Cdatasort
(tknd, d1ts) => let
val () = d1tstlst_fpemsg(out, d1ts)
endlet // end-of-( D1Cdatasort(...) )
//
| D1Cnone0() => ( (*void*) )
| D1Cnone1(d0cl) => ( (*void*) )
//
|
D1Cvaldclst
(tknd, d1cs) => let
val () =
  d1valdclist_fpemsg(out, d1cs)
endlet // end-of-(D1Cvaldclst(_,_,_))
|
D1Cvardclst
(tknd, d1cs) => let
val () =
  d1vardclist_fpemsg(out, d1cs)
endlet // end-of-(D1Cvardclst(_,_,_))
//
|
D1Cfundclst
( tknd
, tqas, d1cs) => let
val () =
  t1qaglst_fpemsg(out, tqas)
val () =
  d1fundclist_fpemsg(out, d1cs)
endlet // end-of-(D1Cfundclst(_,_,_))
//
|
D1Cdynconst
( tknd
, tqas, d1cs) => let
val () =
  t1qaglst_fpemsg(out, tqas)
val () =
  d1cstdclist_fpemsg(out, d1cs)
endlet // end-of-(D1Cdynconst(_,_,_))
//
|
D1Cerrck(_,_) => d1ecl_fpemsg(out, dcl)
//
end (*let*) // end-of-(auxmain(out,dcl))

in(*in-of-local*)

#implfun
d1ecl_fpemsg
(out, dcl0) =
let
#impltmp
g_print$out<>() = out
in//let
case+
dcl0.node() of
|
D1Cerrck(lvl, d1cl)  =>
(
auxmain( out, d1cl );
if
(lvl
>FPEMSG_ERRVL) then () else
let
val loc0 = dcl0.lctn() in
println
("TREAD01-ERROR:",loc0,":",dcl0)
end
)
//
| _(* otherwise *) => (   (*skipped*)   )
end (*let*)//end-of(d1ecl_fpemsg(out,dcl0))
//
endloc(*local*)//end-of(local(d1ecl_fpemsg))

(* ****** ****** *)
//
#implfun
g1explst_fpemsg
(out, g1es) =
list_foreach<g1exp>(g1es) where
{
#impltmp
foreach$work<g1exp>(g1e1) = g1exp_fpemsg(out,g1e1)
}
//
#implfun
g1expopt_fpemsg
(out, gopt) =
optn_foreach<g1exp>(gopt) where
{
#impltmp
foreach$work<g1exp>(g1e1) = g1exp_fpemsg(out,g1e1)
}
//
(* ****** ****** *)
//
#implfun
sort1lst_fpemsg
(out, s1ts) =
list_foreach<sort1>(s1ts) where
{
#impltmp
foreach$work<sort1>(s1t1) = sort1_fpemsg(out,s1t1)
}
//
#implfun
sort1opt_fpemsg
(out, topt) =
optn_foreach<sort1>(topt) where
{
#impltmp
foreach$work<sort1>(s1t1) = sort1_fpemsg(out,s1t1)
}
//
(* ****** ****** *)
//
#implfun
s1explst_fpemsg
(out, s1es) =
list_foreach<s1exp>(s1es) where
{
#impltmp
foreach$work<s1exp>(s1e1) = s1exp_fpemsg(out,s1e1)
}
//
#implfun
s1expopt_fpemsg
(out, sopt) =
optn_foreach<s1exp>(sopt) where
{
#impltmp
foreach$work<s1exp>(s1e1) = s1exp_fpemsg(out,s1e1)
}
//
(* ****** ****** *)
//
#implfun
l1s1elst_fpemsg
(out, lses) =
list_foreach<l1s1e>(lses) where
{
#impltmp
foreach$work<l1s1e>(lse1) = l1s1e_fpemsg(out,lse1)
}
//
(* ****** ****** *)
//
#implfun
s1arglst_fpemsg
(out, s1as) =
list_foreach<s1arg>(s1as) where
{
#impltmp
foreach$work<s1arg>(s1a1) = s1arg_fpemsg(out,s1a1)
}
//
(* ****** ****** *)
//
#implfun
s1maglst_fpemsg
(out, smas) =
list_foreach<s1mag>(smas) where
{
#impltmp
foreach$work<s1mag>(sma1) = s1mag_fpemsg(out,sma1)
}
//
(* ****** ****** *)
//
#implfun
t1arglst_fpemsg
(out, t1as) =
list_foreach<t1arg>(t1as) where
{
#impltmp
foreach$work<t1arg>(t1a1) = t1arg_fpemsg(out,t1a1)
}
//
(* ****** ****** *)
//
#implfun
t1maglst_fpemsg
(out, tmas) =
list_foreach<t1mag>(tmas) where
{
#impltmp
foreach$work<t1mag>(tma1) = t1mag_fpemsg(out,tma1)
}
//
(* ****** ****** *)
//
#implfun
s1tcnlst_fpemsg
(out, tcns) =
list_foreach<s1tcn>(tcns) where
{
#impltmp
foreach$work<s1tcn>(tcn1) = s1tcn_fpemsg(out,tcn1)
}
//
(* ****** ****** *)
//
#implfun
d1tstlst_fpemsg
(out, d1ts) =
list_foreach<d1tst>(d1ts) where
{
#impltmp
foreach$work<d1tst>(d1t1) = d1tst_fpemsg(out,d1t1)
}
//
(* ****** ****** *)
//
#implfun
d1patlst_fpemsg
(out, d1ps) =
list_foreach<d1pat>(d1ps) where
{
#impltmp
foreach$work<d1pat>(d1p1) = d1pat_fpemsg(out,d1p1)
}
//
(* ****** ****** *)
//
#implfun
l1d1plst_fpemsg
(out, ldps) =
list_foreach<l1d1p>(ldps) where
{
#impltmp
foreach$work<l1d1p>(ldp1) = l1d1p_fpemsg(out,ldp1)
}
//
(* ****** ****** *)
//
#implfun
d1explst_fpemsg
(out, d1es) =
list_foreach<d1exp>(d1es) where
{
#impltmp
foreach$work<d1exp>(d1e1) = d1exp_fpemsg(out,d1e1)
}
//
(* ****** ****** *)
//
#implfun
l1d1elst_fpemsg
(out, ldes) =
list_foreach<l1d1e>(ldes) where
{
#impltmp
foreach$work<l1d1e>(lde1) = l1d1e_fpemsg(out,lde1)
}
//
(* ****** ****** *)
//
#implfun
f1arglst_fpemsg
(out, f1as) =
list_foreach<f1arg>(f1as) where
{
#impltmp
foreach$work<f1arg>(f1a1) = f1arg_fpemsg(out,f1a1)
}
//
(* ****** ****** *)
//
#implfun
d1eclist_fpemsg
(out, dcls) =
list_foreach<d1ecl>(dcls) where
{
#impltmp
foreach$work<d1ecl>(dcl1) = d1ecl_fpemsg(out,dcl1)
}
//
(* ****** ****** *)
//
#implfun
d1arglst_fpemsg
(out, d1as) =
list_foreach<d1arg>(d1as) where
{
#impltmp
foreach$work<d1arg>(d1a1) = d1arg_fpemsg(out,d1a1)
}
//
(* ****** ****** *)
//
#implfun
d1valdcl_fpemsg
(out, dval) =
let
//
val (  ) =
  d1pat_fpemsg(out, dpat)
//
val (  ) =
  teqd1exp_fpemsg(out, tdxp)
//
val (  ) =
  wths1exp_fpemsg(out, wsxp)
//
end where
{
  val dpat = d1valdcl_get_dpat(dval)
  val tdxp = d1valdcl_get_tdxp(dval)
  val wsxp = d1valdcl_get_wsxp(dval)
//
} (*where*)//end-of-[d1valdcl_fpemsg(out,dval)]
//
(* ****** ****** *)
//
#implfun
d1vardcl_fpemsg
(out, dvar) =
let
//
val (  ) =
  s1expopt_fpemsg(out, sres)
//
val (  ) =
  teqd1exp_fpemsg(out, dini)
//
end where
{
(*
  val dpid = d1vardcl_get_dpid(dvar)
  val vpid = d1vardcl_get_vpid(dvar)
*)
  val sres = d1vardcl_get_sres(dvar)
  val dini = d1vardcl_get_dini(dvar)
//
} (*where*)//end-of-[d1vardcl_fpemsg(out,dval)]
//
(* ****** ****** *)
//
#implfun
d1fundcl_fpemsg
(out, dfun) =
let
//
val (  ) =
  f1arglst_fpemsg(out, fags)
//
val (  ) =
  s1res_fpemsg( out , sres )
//
val (  ) =
  teqd1exp_fpemsg(out, tdxp)
//
val (  ) =
  wths1exp_fpemsg(out, wsxp)
//
end where
{
(*
  val dpid = d1fundcl_get_dpid(dfun)
*)
  val fags = d1fundcl_get_farg(dfun)
  val sres = d1fundcl_get_sres(dfun)
  val tdxp = d1fundcl_get_tdxp(dfun)
  val wsxp = d1fundcl_get_wsxp(dfun)
} (*where*)//end-of-[d1fundcl_fpemsg(out,dfun)]
//
(* ****** ****** *)
//
#implfun
d1cstdcl_fpemsg
(out, dcst) =
let
//
val (  ) =
  d1arglst_fpemsg(out, dags)
//
val (  ) =
  s1res_fpemsg( out , sres )
val (  ) = // d1res=teqd1exp
  teqd1exp_fpemsg( out, dres )
//
end where
{
(*
  val dpid = d1cstdcl_get_dpid(dcst)
*)
  val dags = d1cstdcl_get_darg(dcst)
  val sres = d1cstdcl_get_sres(dcst)
  val dres = d1cstdcl_get_dres(dcst)
} (*where*)//end-of-[d1cstdcl_fpemsg(out,dcst)]
//
(* ****** ****** *)
//
#implfun
d1valdclist_fpemsg
(out, d1vs) =
list_foreach<d1valdcl>(d1vs) where
{
#impltmp
foreach$work<d1valdcl>(dval) = d1valdcl_fpemsg(out,dval)
}
//
(* ****** ****** *)
//
#implfun
d1vardclist_fpemsg
(out, d1vs) =
list_foreach<d1vardcl>(d1vs) where
{
#impltmp
foreach$work<d1vardcl>(dvar) = d1vardcl_fpemsg(out,dvar)
}
//
(* ****** ****** *)
//
#implfun
d1fundclist_fpemsg
(out, d1fs) =
list_foreach<d1fundcl>(d1fs) where
{
#impltmp
foreach$work<d1fundcl>(dfun) = d1fundcl_fpemsg(out,dfun)
}
//
(* ****** ****** *)
//
#implfun
d1cstdclist_fpemsg
(out, d1cs) =
list_foreach<d1cstdcl>(d1cs) where
{
#impltmp
foreach$work<d1cstdcl>(dcst) = d1cstdcl_fpemsg(out,dcst)
}
//
(* ****** ****** *)

(* end of [ATS3/XATSOPT_tread01_errmsg.dats] *)
