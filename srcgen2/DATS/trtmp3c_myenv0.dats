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
Thu Nov  9 13:21:16 EST 2023
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
#staload "./../SATS/xstamp0.sats"
(* ****** ****** *)
#staload "./../SATS/xsymmap.sats"
(* ****** ****** *)
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/statyp2.sats"
(* ****** ****** *)
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/dynexp3.sats"
(* ****** ****** *)
#staload "./../SATS/trtmp3c.sats"
(* ****** ****** *)
(* ****** ****** *)
//
local
val
stamper =
stamper_new((*0*))
in//local
fun
the_tmpstq_stamp_new
  ((*void*)): stamp =
  stamper.getinc((*void*))
endloc // the_tmpstq_stamp_new
//
(* ****** ****** *)
(* ****** ****** *)
(*
local
*)
(* ****** ****** *)
//
datavwtp
tmpstq =
//
| tmpstq_nil of ()
//
| tmpstq_tsub of (s2vts)
//
| tmpstq_decl of
  (stamp, d3ecl, tmpstq)
//
| tmpstq_dexp of
  (stamp, d3exp, tmpstq)
//
| tmpstq_let0 of (tmpstq)
| tmpstq_loc1 of (tmpstq)
| tmpstq_loc2 of (tmpstq)
//
(* ****** ****** *)
(* ****** ****** *)
(*
in//local
*)
(* ****** ****** *)
(* ****** ****** *)
//
#implfun
tmpstq_nilq
(   stq   ) =
(
case+ stq of
| !
tmpstq_nil() => true
| _(*non-nil*) => false
) (* end of [tmpstq_nilq(stq)] *)
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
endloc (*local*) // end of [local(tr3cenv...)]
*)
//
(* ****** ****** *)

(* end of [ATS3/XATSOPT_srcgen2_trtmp3c_myenv0.dats] *)
