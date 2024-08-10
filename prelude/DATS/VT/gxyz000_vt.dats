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
(*
Sat 27 Jul 2024 01:32:19 PM EDT
*)
Authoremail: gmhwxiATgmailDOTcom
*)
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
HX-2024-07-29:
Sat 03 Aug 2024 05:17:37 PM EDT
*)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_forall0(xs) =
(
  gseq_forall<xs><x0>(xs))
where
{
#impltmp
forall$test<x0> = forall$test0<x0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_forall1(xs) =
(
  gseq_forall<xs><x0>(xs))
where
{
#impltmp
forall$test<x0> = forall$test1<x0>
}
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_rforall0(xs) =
(
  gseq_rforall<xs><x0>(xs))
where
{
#impltmp
rforall$test<x0> = rforall$test0<x0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_rforall1(xs) =
(
  gseq_rforall<xs><x0>(xs))
where
{
#impltmp
rforall$test<x0> = rforall$test1<x0>
}
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_iforall0(xs) =
(
  gseq_iforall<xs><x0>(xs))
where
{
#impltmp
iforall$test<x0> = iforall$test0<x0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_iforall1(xs) =
(
  gseq_iforall<xs><x0>(xs))
where
{
#impltmp
iforall$test<x0> = iforall$test1<x0>
}
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_irforall0(xs) =
(
  gseq_irforall<xs><x0>(xs))
where
{
#impltmp
irforall$test<x0> = irforall$test0<x0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_irforall1(xs) =
(
  gseq_irforall<xs><x0>(xs))
where
{
#impltmp
irforall$test<x0> = irforall$test1<x0>
}
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_forall0_f1un
  (xs, test) =
(
  gseq_forall_f1un<xs><x0>(xs, test))
#impltmp
< xs:t0 >
< x0:t0 >
gseq_forall1_f1un
  (xs, test) =
(
  gseq_forall_f1un<xs><x0>(xs, test))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_rforall0_f1un
  (xs, test) =
(
  gseq_rforall_f1un<xs><x0>(xs, test))
#impltmp
< xs:t0 >
< x0:t0 >
gseq_rforall1_f1un
  (xs, test) =
(
  gseq_rforall_f1un<xs><x0>(xs, test))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_iforall0_f2un
  (xs, test) =
(
  gseq_iforall_f2un<xs><x0>(xs, test))
#impltmp
< xs:t0 >
< x0:t0 >
gseq_iforall1_f2un
  (xs, test) =
(
  gseq_iforall_f2un<xs><x0>(xs, test))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_irforall0_f2un
  (xs, test) =
(
  gseq_irforall_f2un<xs><x0>(xs, test))
#impltmp
< xs:t0 >
< x0:t0 >
gseq_irforall1_f2un
  (xs, test) =
(
  gseq_irforall_f2un<xs><x0>(xs, test))
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
HX-2024-08-03:
Sat 03 Aug 2024 05:37:49 PM EDT
*)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_foritm0(xs) =
(
  gseq_foritm<xs><x0>(xs))
where
{
#impltmp
foritm$work<x0> = foritm$work0<x0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_foritm1(xs) =
(
  gseq_foritm<xs><x0>(xs))
where
{
#impltmp
foritm$work<x0> = foritm$work1<x0>
}
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_rforitm0(xs) =
(
  gseq_rforitm<xs><x0>(xs))
where
{
#impltmp
rforitm$work<x0> = rforitm$work0<x0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_rforitm1(xs) =
(
  gseq_rforitm<xs><x0>(xs))
where
{
#impltmp
rforitm$work<x0> = rforitm$work1<x0>
}
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_iforitm0(xs) =
(
  gseq_iforitm<xs><x0>(xs))
where
{
#impltmp
iforitm$work<x0> = iforitm$work0<x0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_iforitm1(xs) =
(
  gseq_iforitm<xs><x0>(xs))
where
{
#impltmp
iforitm$work<x0> = iforitm$work1<x0>
}
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_irforitm0(xs) =
(
  gseq_irforitm<xs><x0>(xs))
where
{
#impltmp
irforitm$work<x0> = irforitm$work0<x0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_irforitm1(xs) =
(
  gseq_irforitm<xs><x0>(xs))
where
{
#impltmp
irforitm$work<x0> = irforitm$work1<x0>
}
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_foritm0_f1un
  (xs, work) =
(
  gseq_foritm_f1un<xs><x0>(xs, work))
#impltmp
< xs:t0 >
< x0:t0 >
gseq_foritm1_f1un
  (xs, work) =
(
  gseq_foritm_f1un<xs><x0>(xs, work))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_rforitm0_f1un
  (xs, work) =
(
  gseq_rforitm_f1un<xs><x0>(xs, work))
#impltmp
< xs:t0 >
< x0:t0 >
gseq_rforitm1_f1un
  (xs, work) =
(
  gseq_rforitm_f1un<xs><x0>(xs, work))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_iforitm0_f2un
  (xs, work) =
(
  gseq_iforitm_f2un<xs><x0>(xs, work))
#impltmp
< xs:t0 >
< x0:t0 >
gseq_iforitm1_f2un
  (xs, work) =
(
  gseq_iforitm_f2un<xs><x0>(xs, work))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
gseq_irforitm0_f2un
  (xs, work) =
(
  gseq_irforitm_f2un<xs><x0>(xs, work))
#impltmp
< xs:t0 >
< x0:t0 >
gseq_irforitm1_f2un
  (xs, work) =
(
  gseq_irforitm_f2un<xs><x0>(xs, work))
//
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_folditm0(xs, r0) =
(
gseq_folditm<xs><x0><r0>(xs, r0))
where
{
#impltmp
folditm$fopr<x0><r0> = folditm$fopr0<x0><r0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_folditm1(xs, r0) =
(
gseq_folditm<xs><x0><r0>(xs, r0))
where
{
#impltmp
folditm$fopr<x0><r0> = folditm$fopr1<x0><r0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_folditm0_f2un
  (xs, r0, fopr) =
(
gseq_folditm_f2un<xs><x0><r0>(xs, r0, fopr))
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_folditm1_f2un
  (xs, r0, fopr) =
(
gseq_folditm_f2un<xs><x0><r0>(xs, r0, fopr))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_rfolditm0(xs, r0) =
(
gseq_rfolditm<xs><x0><r0>(xs, r0))
where
{
#impltmp
rfolditm$fopr<x0><r0> = rfolditm$fopr0<x0><r0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_rfolditm1(xs, r0) =
(
gseq_rfolditm<xs><x0><r0>(xs, r0))
where
{
#impltmp
rfolditm$fopr<x0><r0> = rfolditm$fopr1<x0><r0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_rfolditm0_f2un
  (xs, r0, fopr) =
(
gseq_rfolditm_f2un<xs><x0><r0>(xs, r0, fopr))
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_rfolditm1_f2un
  (xs, r0, fopr) =
(
gseq_rfolditm_f2un<xs><x0><r0>(xs, r0, fopr))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_ifolditm0(xs, r0) =
(
gseq_ifolditm<xs><x0><r0>(xs, r0))
where
{
#impltmp
ifolditm$fopr<x0><r0> = ifolditm$fopr0<x0><r0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_ifolditm1(xs, r0) =
(
gseq_ifolditm<xs><x0><r0>(xs, r0))
where
{
#impltmp
ifolditm$fopr<x0><r0> = ifolditm$fopr1<x0><r0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_ifolditm0_f3un
  (xs, r0, fopr) =
(
gseq_ifolditm_f3un<xs><x0><r0>(xs, r0, fopr))
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_ifolditm1_f3un
  (xs, r0, fopr) =
(
gseq_ifolditm_f3un<xs><x0><r0>(xs, r0, fopr))
//
(* ****** ****** *)
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_irfolditm0(xs, r0) =
(
gseq_irfolditm<xs><x0><r0>(xs, r0))
where
{
#impltmp
irfolditm$fopr<x0><r0> = irfolditm$fopr0<x0><r0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_irfolditm1(xs, r0) =
(
gseq_irfolditm<xs><x0><r0>(xs, r0))
where
{
#impltmp
irfolditm$fopr<x0><r0> = irfolditm$fopr1<x0><r0>
}
//
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_irfolditm0_f3un
  (xs, r0, fopr) =
(
gseq_irfolditm_f3un<xs><x0><r0>(xs, r0, fopr))
#impltmp
< xs:t0 >
< x0:t0 >
< r0:vt >
gseq_irfolditm1_f3un
  (xs, r0, fopr) =
(
gseq_irfolditm_f3un<xs><x0><r0>(xs, r0, fopr))
//
(* ****** ****** *)
(* ****** ****** *)
//
(*
HX-2024-08-05:
Mon 05 Aug 2024 05:49:43 PM EDT
*)
//
#impltmp
< xs: t0 >
< x0: t0 >
gseq_strmize0 = gseq_strmize<xs><x0>
#impltmp
< xs: t0 >
< x0: t0 >
gseq_strmize1 = gseq_strmize<xs><x0>
//
(* ****** ****** *)
//
#impltmp
< xs: t0 >
< x0: t0 >
gseq_rstrmize0 = gseq_rstrmize<xs><x0>
#impltmp
< xs: t0 >
< x0: t0 >
gseq_rstrmize1 = gseq_rstrmize<xs><x0>
//
(* ****** ****** *)
(* ****** ****** *)
//
(* ****** ****** *)(* ****** ****** *)(* ****** ****** *)
(* ****** ****** *)(* ****** ****** *)(* ****** ****** *)

(* end of [ATS3/XANADU_prelude_DATS_VT_gxyz000_vt.dats] *)
