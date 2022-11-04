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
Fri 04 Nov 2022 04:28:36 PM EDT
*)
Authoremail: gmhwxiATgmailDOTcom
*)
//
(* ****** ****** *)
#include
"./../HATS/xatsopt_sats.hats"
(* ****** ****** *)
#define
ATS_PACKNAME
"ATS3.XANADU.xatsopt-20220500"
(* ****** ****** *)
//
#staload
TMP = "./xstamp0.sats"
//
#typedef stamp = $TMP.stamp
//
(* ****** ****** *)
//
#staload
LAB = "./xlabel0.sats"
#staload
LOC = "./locinfo.sats"
//
#typedef lab_t = $LAB.lab_t
#typedef label = $LAB.label
//
#typedef loc_t = $LOC.loc_t
#typedef loctn = $LOC.loctn
#typedef lcsrc = $LOC.lcsrc
//
(* ****** ****** *)
//
#staload
SYM = "./xsymbol.sats"
#staload
LEX = "./lexing0.sats"
//
#typedef sym_t = $SYM.sym_t
#typedef token = $LEX.token
//
(* ****** ****** *)
#staload "./staexp2.sats"
(* ****** ****** *)
//
datatype
s2typ_node =
//
| T2Pbas of sym_t // type
//
| T2Pcst of s2cst // constant
| T2Pvar of s2var // variable
//
// HX-2022-11-04: end of [datatype(s2typ_node)
//
(* ****** ****** *)
//
fun
s2typ_fprint:(FILR,s2typ)->void
//
(* ****** ****** *)
fun
s2typ_get_sort(s2typ): sort2
fun
l2t2p_get_sort(l2t2p): sort2
fun
s2typ_get_node(s2typ): s2typ_node
fun
l2t2p_get_node(l2t2p): s2typ_node
(* ****** ****** *)
#symload sort with s2typ_get_sort
#symload sort with l2t2p_get_sort
#symload node with s2typ_get_node
#symload node with l2t2p_get_node
(* ****** ****** *)
//
fun
s2typ_none0((*void*)): s2typ
//
(* ****** ****** *)
fun
s2typ_make_node
(srt:sort2,nod:s2typ_node): s2typ
#symload s2typ with s2typ_make_node
(* ****** ****** *)

(* end of [ATS3/XATSOPT_srcgen2_statyp2.sats] *)
