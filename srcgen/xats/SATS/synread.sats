(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Postiats - Unleashing the Potential of Types!
** Copyright (C) 2018 Hongwei Xi, ATS Trustful Software, Inc.
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
// Start Time: 2018-09-03
// Authoremail: gmhwxiATgmailDOTcom
//
(* ****** ****** *)

#staload "./parsing.sats"

(* ****** ****** *)
//
typedef
synreader
(a:t@ype) = (a) -> void
//
(* ****** ****** *)
//
fun
synread_sexp : synreader(s0exp)
fun
synread_sexplst : synreader(s0explst)
//
(* ****** ****** *)
//
fun
synread_dpat : synreader(d0pat)
fun
synread_dpatlst : synreader(d0patlst)
//
fun
synread_labdpat : synreader(labd0pat)
fun
synread_labdpatlst : synreader(labd0patlst)
//
(* ****** ****** *)
//
fun
synread_dexp : synreader(d0exp)
fun
synread_dexplst : synreader(d0explst)
//
fun
synread_labdexp : synreader(labd0exp)
fun
synread_labdexplst : synreader(labd0explst)
//
(* ****** ****** *)
//
fun
synread_decl : synreader(d0ecl)
fun
synread_declist : synreader(d0eclist)
//
(* ****** ****** *)

(* end of [xats_synread.sats] *)
