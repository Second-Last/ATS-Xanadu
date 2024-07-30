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
//
(*
Author: Hongwei Xi
(*
Mon 29 Jul 2024 06:15:29 PM EDT
*)
Authoremail: gmhwxiATgmailDOTcom
*)
//
(* ****** ****** *)
(* ****** ****** *)
#staload
"./../SATS/gcls000.sats"
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
<xs : t0>
<x0 : t0>
GSEQ_forall
  (pf | xs) =
(
gseq_forall<xs><x0>(xs))
//
#impltmp
<xs : t0>
<x0 : t0>
GSEQ_rforall
  (pf | xs) =
(
gseq_rforall<xs><x0>(xs))
//
#impltmp
<xs : t0>
<x0 : t0>
GSEQ_iforall
  (pf | xs) =
(
gseq_iforall<xs><x0>(xs))
//
#impltmp
<xs : t0>
<x0 : t0>
GSEQ_irforall
  (pf | xs) =
(
gseq_irforall<xs><x0>(xs))
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
{x0 : t0}
GSEQ_forall
<list(x0)><x0>
  (pf | xs) =
(
  list_forall<x0>(xs))
#impltmp
{x0 : t0}
GSEQ_forall_c1fr
<list(x0)><x0>
  (pf | xs, test) =
(
  list_forall<x0>(xs))
where{
#impltmp
forall$test<x0>(x0) = test(x0)
}(*where*)//end-of-[GSEQ_forall_c1fr(pf|xs)]
//
(* ****** ****** *)
(* ****** ****** *)
//
(* ****** ****** *)(* ****** ****** *)
(* ****** ****** *)(* ****** ****** *)

(* end of [ATS3/XANADU_prelude_DATS_gcls000.dats] *)
