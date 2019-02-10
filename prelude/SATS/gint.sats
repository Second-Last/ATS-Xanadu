(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2019 Hongwei Xi, ATS Trustful Software, Inc.
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
// Author: Hongwei Xi
// Start Time: February, 2019
// Authoremail: gmhwxiATgmailDOTcom
//
(* ****** ****** *)

fun
<k1:type>
<k2:type>
g0int_cast
(g0int(k1)):<> g0int(k2)

(* ****** ****** *)
//
fun
<k1:type>
<k2:type>
g0int_succ
( g0int(k1) ): g0int(k2)
fun
<k1:type>
<k2:type>
g1int_succ
{i:int}
(x: g1int(k1, i)): g1int(k2, i+1)
//
fun
g0succ_sint
(x: sint):<> sint = $ext()
fun
g1succ_sint
{i:int}
(x: sint(i)):<> sint(i+1) = $ext()
//
overload succ with g0succ_sint of 10
overload succ with g1succ_sint of 11
//
(* ****** ****** *)
//
fun
<k1:type>
<k2:type>
g0int_pred
( g0int(k1) ): g0int(k2)
fun
<k1:type>
<k2:type>
g1int_pred
{i:int}
(x: g1int(k1, i)): g1int(k2, i-1)
fun
<k1:type>
<k2:type>
g1uint_pred
{i:int | i > 0}
(x: g1int(k1, i)): g1int(k2, i-1)
//
fun
g0pred_sint
(x: sint):<> sint = $ext()
fun
g1pred_sint
{i:int}
(x: sint(i)):<> sint(i-1) = $ext()
//
overload pred with g0pred_sint of 10
overload pred with g1pred_sint of 11
//
(* ****** ****** *)
//
fun
<k1
,k2:type>
<k3:type>
g0int_add
( g0int(k1)
, g0int(k2)): g0int(k3)
fun
<k1
,k2:type>
<k3:type>
g1int_add
{i,j:int}
( g1int(k1, i)
, g1int(k2, j)): g1int(k3, i+j)
//
(* ****** ****** *)
//
fun
g0add_sint_sint
( x: sint
, y: sint):<> sint = $ext()
fun
g1add_sint_sint
{i,j:int}
( x: sint(i)
, y: sint(j)):<> sint(i+j) = $ext()
//
overload + with g0add_sint_sint of 10
overload + with g1add_sint_sint of 12
//
(* ****** ****** *)
//
fun
<k1
,k2:type>
<k3:type>
g0int_sub
( g0int(k1)
, g0int(k2)): g0int(k3)
fun
<k1
,k2:type>
<k3:type>
g1int_sub
{i,j:int}
( g1int(k1, i)
, g1int(k2, j)): g1int(k3, i-j)
fun
<k1
,k2:type>
<k3:type>
g1uint_sub
{i,j:int
|i > j }
( g1int(k1, i)
, g1int(k2, j)): g1int(k3, i-j)
//
fun
g0sub_sint_sint
( x: sint
, y: sint):<> sint = $ext()
fun
g1sub_sint_sint
{i,j:int}
( x: sint(i)
, y: sint(i)):<> sint(i-j) = $ext()
//
overload - with g0sub_sint_sint of 10
overload - with g1sub_sint_sint of 12
//
(* ****** ****** *)
//
fun
<k1
,k2:type>
<k3:type>
g0int_mul
( g0int(k1)
, g0int(k2)): g0int(k3)
fun
<k1
,k2:type>
<k3:type>
g1int_mul
{i,j:int}
( g1int(k1, i)
, g1int(k2, j)): g1int(k3, i*j)
//
fun
g0mul_sint_sint
( x: sint
, y: sint):<> sint = $ext()
fun
g1mul_sint_sint
{i,j:int}
( x: sint(i)
, y: sint(i)):<> sint(i*j) = $ext()
//
overload * with g0mul_sint_sint of 10
overload * with g1mul_sint_sint of 12
//
(* ****** ****** *)
//
fun
<k1
,k2:type>
<k3:type>
g0int_div
( g0int(k1)
, g0int(k2)): g0int(k3)
fun
<k1
,k2:type>
<k3:type>
g1int_div
{i,j:int
|j != 0}
( g1int(k1, i)
, g1int(k2, j)): g1int(k3, i/j)
//
fun
g0div_sint_sint
( x: sint
, y: sint):<> sint = $ext()
fun
g1div_sint_sint
{i,j:int
|j != 0 }
( x: sint(i)
, y: sint(i)):<> sint(i/j) = $ext()
//
overload / with g0div_sint_sint of 10
overload / with g1div_sint_sint of 12
//
(* ****** ****** *)

(* end of [gint.sats] *)
