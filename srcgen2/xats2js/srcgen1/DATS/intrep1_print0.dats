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
//
Sat 16 Mar 2024 01:21:12 PM EDT
//
Authoremail: gmhwxiATgmailDOTcom
*)
//
(* ****** ****** *)
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
(* ****** ****** *)
#staload "./../SATS/intrep1.sats"
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
i1val_fprint
(out, i1v0) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+ i1v0 of
//
|I1Vnil() =>
print("I1Vnil(",")")
//
|I1Vint(int) =>
print("I1Vint(",int,")")
|I1Vbtf(btf) =>
print("I1Vbtf(",btf,")")
|I1Vchr(chr) =>
print("I1Vchr(",chr,")")
|I1Vstr(str) =>
print("I1Vstr(",str,")")
//
(*
|I1Vtup0(i1vs) =>
print("I1Vtup0(", i1vs, ")")
|I1Vtup1(tknd, i1vs) =>
print("I1Vtup1(",tknd,";",i1vs,")")
|I1Vrcd2(tknd, livs) =>
print("I1Vrcd2(",tknd,";",livs,")")
*)
//
|I1Vnone0() => print( "I1Vnone0(",")" )
|I1Vnone1(i0e1) => print("I1Vnone1(", i0e1, ")")
//
end(*let*)//end-of-[i1val_fprint(out, i1v0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
i1bfi_fprint
(out, ibfi) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+ ibfi of
//
|I1BFIopr
( iopr, i1vs) =>
(
print("I1BFIopr(");
print(iopr, ";", i1vs, ")"))
//
|I1BFIdapp
( i1f0, i1vs) =>
(
print("I1BFIdapp(");
print(i1f0, ";", i1vs, ")"))
//
|I1BFItup0(i1vs) =>
print
("I1BFItup0(", i1vs, ")")
|I1BFItup1
(tknd, i1vs) =>
(
print("I1BFItup1(");
print(tknd, ";", i1vs, ")"))
|I1BFIrcd2
( tknd, livs) =>
(
print("I1BFIrcd2(");
print(tknd, ";", livs, ")"))
//
|I1BFIift0
( test
, ithn, iels) =>
(
print
("I1BFIif0(");
print
(test,";",ithn,";",iels,")"))
//
end(*let*)//end-of-[i1bfi_fprint(out, ibfi)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
i1let_fprint
(out, ilet) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+ ilet of
|I1LETnew0(ireg) =>
print("I1LETnew0(", ")")
|I1LETnew1(ireg, ibfi) =>
print("I1LETnew1(", ireg, ";", ibfi, ")")
//
end(*let*)//end-of-[i1cmp_fprint(out, ilet)]
//
(* ****** ****** *)
//
#implfun
i1cmp_fprint
(out, icmp) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+ icmp of
|I1CMPcons(ilts, ival) =>
print("I1CMPcons(", ilts, ";", ival, ")")
//
end(*let*)//end-of-[i1cmp_fprint(out, icmp)]
//
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
i1dcl_fprint
(out, dcl0) =
let
#impltmp
g_print$out<>() = out
in//let
//
case+
dcl0.node() of
//
|I1Dlocal0
(head, body) =>
print
("I1Dlocal0(", head, ";", body, ")")
//
|I1Dnone0() => print( "I1Dnone0(",")" )
|I1Dnone1(dcl1) => print("I1Dnone1(", dcl1, ")")
//
end(*let*)//end-of-[i1dcl_fprint(out, dcl0)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(***********************************************************************)
(* end of [ATS3/XANADU_srcgen2_xats2js_srcgen1_DATS_intrep1_print0.dats] *)
(***********************************************************************)
