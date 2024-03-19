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
Sat 16 Mar 2024 12:43:42 PM EDT
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
(* ****** ****** *)
(* ****** ****** *)
//
#staload "./intrep0.sats"
//
(* ****** ****** *)
#typedef sym_t = sym_t
#typedef loc_t = loc_t
(* ****** ****** *)
//
datatype
i1lab(x0:type) =
|
I1LAB of (label, x0(*elt*))
//
(* ****** ****** *)
//
fun
<x0:type>
i1lab_fprint
( out: FILR
, lab: i1lab( x0 )): (void)
//
(* ****** ****** *)
(* ****** ****** *)
#abstype i1opr_tbox // p0tr
#abstype i1reg_tbox // p0tr
#typedef i1opr = i1opr_tbox
#typedef i1reg = i1reg_tbox
(* ****** ****** *)
//
#typedef i1reglst = list(i1reg)
//
(* ****** ****** *)
//
fun
i1opr_make(name:sym_t): i1opr
//
fun
i1reg_new1( (*void*) ): i1reg
//
(* ****** ****** *)
//
fun
i1opr_fprint(FILR, i1opr): void
fun
i1reg_fprint(FILR, i1reg): void
//
(* ****** ****** *)
(* ****** ****** *)
//
datatype
i1val =
//
|I1Vnil of ()
//
|I1Vint of token
|I1Vbtf of sym_t
|I1Vchr of token
|I1Vflt of token
|I1Vstr of token
//
(* ****** ****** *)
//
(*
|I1Vcst of (d2cst)
|I1Vcon of (d2con)
*)
//
(* ****** ****** *)
|I1Vreg of (i1reg)
(* ****** ****** *)
//
|I1Vtup0 of (i1valist)
|I1Vtup1 of (token, i1valist)
|I1Vrcd2 of (token, l1i1vlst)
//
(* ****** ****** *)
//
|I1Vnone0 of ((*0*)) |I1Vnone1 of (i0exp)
//
(* ****** ****** *)
//
and i1let =
I1LET of (i1reg, i1bfi)
//
and i1cmp =
|I1CMP0 of (i1val)
|I1CMP1 of (i1letlst, i1val)
//
(* ****** ****** *)
//
and i1bfi =
//
|I1BFIopr of
( i1opr(*opnm*)
, i1valist(*args*))//primopr
//
|I1BFItup0 of (i1valist)//flat
|I1BFItup1 of (token, i1valist)
|I1BFItup1 of (token, l1i1vlst)
//
|I1BFIdapp of (i1val, i1valist)
//
|I1BFIift0 of
( i1val
, i1cmp(*then*), i1cmp(*else*) )
//
where
{
//
  #typedef l1i1v = i1lab(i1val)
//
  #typedef i1valist = list(i1val)
  #typedef l1i1vlst = list(l1i1v)
  #typedef i1letlst = list(i1let)
//
}(*where*)//end-of-(i1val/cmp/let/bfi)
//
(* ****** ****** *)
//
fun
i1val_fprint( FILR , i1val ): void
//
fun
i1let_fprint( FILR , i1let ): void
fun
i1cmp_fprint( FILR , i1cmp ): void
fun
i1bfi_fprint( FILR , i1bfi ): void
//
(* ****** ****** *)
(* ****** ****** *)

(***********************************************************************)
(* end of [ATS3/XANADU_srcgen2_xats2js_srcgen1_SATS_intrep1.sats] *)
(***********************************************************************)
