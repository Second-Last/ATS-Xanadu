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
// Start Time: August, 2018
// Authoremail: gmhwxiATgmailDOTcom
//
(* ****** ****** *)
//
#staload
LAB = "./label0.sats"
#staload
LOC = "./location.sats"
//
typedef label = $LAB.label
typedef loc_t = $LOC.location
//
#staload
SYM = "./symbol.sats"
typedef sym_t = $SYM.sym_t
//
#staload
LEX = "./lexing.sats"
typedef token = $LEX.token
typedef tokenopt = $LEX.tokenopt
typedef tokenlst = $LEX.tokenlst
//
(* ****** ****** *)

#staload
S0E = "./staexp0.sats"

(* ****** ****** *)
//
abstbox sort1_tbox = ptr
abstbox s1exp_tbox = ptr
//
(* ****** ****** *)
//
typedef sort1 = sort1_tbox
typedef sort1lst = List0(sort1)
typedef sort1opt = Option(sort1)
//
typedef s1exp = s1exp_tbox
typedef s1explst = List0(s1exp)
typedef s1expopt = Option(s1exp)
//
(* ****** ****** *)

datatype
sort1_node =
//
  | S1Tid of token
//
// HX-2018-08: operators
//
  | S1Tapp of () // apply
//
  | S1Ttype of int(*kind*)
    (*prop/view/type/t0ype/viewtype/viewt0ype*)
//
  | S1Tapps of (sort1, sort1lst)
  | S1Tlist of sort1lst // temporary
  | S1Tqual of (token, sort1)
  | S1Tnone of ((*error indication*))
// end of [sort1_node]

(* ****** ****** *)
//
fun
sort1_get_loc(sort1): loc_t
fun
sort1_get_node(sort1): sort1_node
//
overload .loc with sort1_get_loc
overload .node with sort1_get_node
//
fun print_sort1 : print_type(sort1)
fun prerr_sort1 : prerr_type(sort1)
fun fprint_sort1 : fprint_type(sort1)
//
overload print with print_sort1
overload prerr with prerr_sort1
overload fprint with fprint_sort1
//
fun
sort1_none(loc: loc_t): sort1
fun
sort1_make_node
(loc: loc_t, node: sort1_node): sort1
//
(* ****** ****** *)
//
abstbox
s1rtcon_tbox = ptr
typedef
s1rtcon = s1rtcon_tbox
typedef
s1rtconlst = List0(s1rtcon)
//
datatype
s1rtcon_node =
| S1RTCON of (token, sort1opt) 
//
fun
s1rtcon_get_loc(s1rtcon): loc_t
fun
s1rtcon_get_node(s1rtcon): s1rtcon_node
//
overload .loc with s1rtcon_get_loc
overload .node with s1rtcon_get_node
//
fun print_s1rtcon : print_type(s1rtcon)
fun prerr_s1rtcon : prerr_type(s1rtcon)
fun fprint_s1rtcon : fprint_type(s1rtcon)
//
overload print with print_s1rtcon
overload prerr with prerr_s1rtcon
overload fprint with fprint_s1rtcon
//
fun
s1rtcon_make_node
(loc: loc_t, node: s1rtcon_node): s1rtcon
//
(* ****** ****** *)
//
abstbox
d1tsort_tbox = ptr
typedef
d1tsort = d1tsort_tbox
typedef
d1tsortlst = List0(d1tsort)
//
datatype
d1tsort_node =
| D1TSORT of (token, s1rtconlst)
//
fun
d1tsort_get_loc
  (x0: d1tsort): loc_t
fun
d1tsort_get_node
  (x0: d1tsort): d1tsort_node
//
overload .loc with d1tsort_get_loc
overload .node with d1tsort_get_node
//
fun
print_d1tsort: print_type(d1tsort)
fun
prerr_d1tsort: prerr_type(d1tsort)
fun
fprint_d1tsort: fprint_type(d1tsort)
//
overload print with print_d1tsort
overload prerr with prerr_d1tsort
overload fprint with fprint_d1tsort
//
fun
d1tsort_make_node
(loc: loc_t, node: d1tsort_node): d1tsort
//
(* ****** ****** *)
//
abstbox s1arg_tbox = ptr
typedef s1arg = s1arg_tbox
typedef s1arglst = List0(s1arg)
//
datatype
s1arg_node =
| S1ARGsome of (token, sort1opt)
//
fun
s1arg_get_loc(s1arg): loc_t
fun
s1arg_get_node(s1arg): s1arg_node
//
overload .loc with s1arg_get_loc
overload .node with s1arg_get_node
//
fun print_s1arg : print_type(s1arg)
fun prerr_s1arg : prerr_type(s1arg)
fun fprint_s1arg : fprint_type(s1arg)
//
overload print with print_s1arg
overload prerr with prerr_s1arg
overload fprint with fprint_s1arg
//
fun
s1arg_make_node
(loc: loc_t, node: s1arg_node): s1arg
//
(* ****** ****** *)
//
abstbox
s1rtdef_tbox = ptr
typedef
s1rtdef = s1rtdef_tbox
//
datatype
s1rtdef_node =
| S1RTDEFsort of sort1
| S1RTDEFsubset of (s1arg, s1explst)
//
fun
s1rtdef_get_loc(s1rtdef): loc_t
fun
s1rtdef_get_node(s1rtdef): s1rtdef_node
//
overload .loc with s1rtdef_get_loc
overload .node with s1rtdef_get_node
//
fun print_s1rtdef : print_type(s1rtdef)
fun prerr_s1rtdef : prerr_type(s1rtdef)
fun fprint_s1rtdef : fprint_type(s1rtdef)
//
overload print with print_s1rtdef
overload prerr with prerr_s1rtdef
overload fprint with fprint_s1rtdef
//
fun
s1rtdef_make_node
(loc: loc_t, node: s1rtdef_node): s1rtdef
//
(* ****** ****** *)
//
abstbox s1marg_tbox = ptr
typedef s1marg = s1marg_tbox
typedef s1marglst = List0(s1marg)
//
datatype
s1marg_node = S1MARGlist of (s1arglst)
//
fun
s1marg_get_loc(s1marg): loc_t
fun
s1marg_get_node(s1marg): s1marg_node
//
overload .loc with s1marg_get_loc
overload .node with s1marg_get_node
//
fun print_s1marg : print_type(s1marg)
fun prerr_s1marg : prerr_type(s1marg)
fun fprint_s1marg : fprint_type(s1marg)
//
overload print with print_s1marg
overload prerr with prerr_s1marg
overload fprint with fprint_s1marg
//
fun
s1marg_make_node
(loc: loc_t, node: s1marg_node): s1marg
//
(* ****** ****** *)
//
abstbox t1arg_tbox = ptr
typedef t1arg = t1arg_tbox
typedef t1arglst = List0(t1arg)
//
datatype
t1arg_node =
| T1ARGsome of (sort1, tokenopt)
//
fun
t1arg_get_loc(t1arg): loc_t
fun
t1arg_get_node(t1arg): t1arg_node
//
overload .loc with t1arg_get_loc
overload .node with t1arg_get_node
//
fun print_t1arg : print_type(t1arg)
fun prerr_t1arg : prerr_type(t1arg)
fun fprint_t1arg : fprint_type(t1arg)
//
overload print with print_t1arg
overload prerr with prerr_t1arg
overload fprint with fprint_t1arg
//
fun
t1arg_make_node
(loc: loc_t, node: t1arg_node): t1arg
//
(* ****** ****** *)
//
abstbox t1marg_tbox = ptr
typedef t1marg = t1marg_tbox
typedef t1marglst = List0(t1marg)
//
datatype
t1marg_node =
| T1MARGnone of token(*sort*)
| T1MARGlist of t1arglst(*arglst*)
//
fun
t1marg_get_loc(t1marg): loc_t
fun
t1marg_get_node(t1marg): t1marg_node
//
overload .loc with t1marg_get_loc
overload .node with t1marg_get_node
//
fun print_t1marg : print_type(t1marg)
fun prerr_t1marg : prerr_type(t1marg)
fun fprint_t1marg : fprint_type(t1marg)
//
overload print with print_t1marg
overload prerr with prerr_t1marg
overload fprint with fprint_t1marg
//
fun
t1marg_make_node
(loc: loc_t, node: t1marg_node): t1marg
//
(* ****** ****** *)
//
abstbox s1qua_tbox = ptr
typedef s1qua = s1qua_tbox
typedef s1qualst = List0(s1qua)
//
datatype
s1qua_node =
| S1QUAprop of s1exp
| S1QUAvars of (tokenlst, sort1)
//
fun
s1qua_get_loc(s1qua): loc_t
fun
s1qua_get_node(s1qua): s1qua_node
//
overload .loc with s1qua_get_loc
overload .node with s1qua_get_node
//
fun print_s1qua : print_type(s1qua)
fun prerr_s1qua : prerr_type(s1qua)
fun fprint_s1qua : fprint_type(s1qua)
//
overload print with print_s1qua
overload prerr with prerr_s1qua
overload fprint with fprint_s1qua
//
fun
s1qua_make_node
(loc: loc_t, node: s1qua_node): s1qua
//
(* ****** ****** *)
//
abstbox s1uni_tbox = ptr
typedef s1uni = s1uni_tbox
typedef s1unilst = List0(s1uni)
//
datatype
s1uni_node =
| S1UNInone of (token)
| S1UNIsome of (token, s1qualst, token)
//
fun
s1uni_get_loc(s1uni): loc_t
fun
s1uni_get_node(s1uni): s1uni_node
//
overload .loc with s1uni_get_loc
overload .node with s1uni_get_node
//
fun print_s1uni : print_type(s1uni)
fun prerr_s1uni : prerr_type(s1uni)
fun fprint_s1uni : fprint_type(s1uni)
//
overload print with print_s1uni
overload prerr with prerr_s1uni
overload fprint with fprint_s1uni
//
fun
s1uni_make_node
(loc: loc_t, node: s1uni_node): s1uni
//
(* ****** ****** *)

stadef sl0abeled = $S0E.sl0abeled

(* ****** ****** *)

typedef labs1exp = sl0abeled(s1exp)
typedef labs1explst = List0(labs1exp)

(* ****** ****** *)

datatype
s1exp_node =
//
| S1Eid of token
//
| S1Eint of token
| S1Echr of token
| S1Eflt of token
| S1Estr of token
//
// HX-2018-08: operators:
//
| S1Eapp of () // apply
| S1Einf of () // backslash
| S1Eopr of s1exp // backslash
//
| S1Eapps of
  (s1exp, s1explst)
//
| S1Elist of s1explst // temp.
| S1Elist of
  (s1explst, s1explst) // temp.
//
| S1Etuple of
  (int, s1explst)
| S1Etuple of
  (int, s1explst, s1explst)
//
| S1Erecord of
  (int, labs1explst)
| S1Erecord of
  (int, labs1explst, labs1explst)
//
| S1Eforall of (s1qualst)
| S1Eexists of (int(*#*), s1qualst)
//
| S1Elam of
  (s1marglst(*arg*), sort1opt(*res*), s1exp)
//
| S1Eanno of (s1exp, sort1)
//
| S1Equal of (token(*mod*), s1exp)
//
| S1Enone of ((*error indication*))
// end of [s1exp_node]

(* ****** ****** *)
//
fun
s1exp_get_loc(s1exp): loc_t
fun
s1exp_get_node(s1exp): s1exp_node
//
overload .loc with s1exp_get_loc
overload .node with s1exp_get_node
//
fun print_s1exp : print_type(s1exp)
fun prerr_s1exp : prerr_type(s1exp)
fun fprint_s1exp : fprint_type(s1exp)
//
overload print with print_s1exp
overload prerr with prerr_s1exp
overload fprint with fprint_s1exp
//
fun
s1exp_none(loc: loc_t): s1exp
fun
s1exp_make_node
(loc: loc_t, node: s1exp_node): s1exp
//
(* ****** ****** *)
//
abstbox
d1atcon_tbox = ptr
typedef
d1atcon = d1atcon_tbox
typedef
d1atconlst = List0(d1atcon)
//
datatype
d1atcon_node =
| D1ATCON of
  (s1unilst, token, s1exp, s1expopt) 
//
fun
d1atcon_get_loc(d1atcon): loc_t
fun
d1atcon_get_node(d1atcon): d1atcon_node
//
overload .loc with d1atcon_get_loc
overload .node with d1atcon_get_node
//
fun print_d1atcon : print_type(d1atcon)
fun prerr_d1atcon : prerr_type(d1atcon)
fun fprint_d1atcon : fprint_type(d1atcon)
//
overload print with print_d1atcon
overload prerr with prerr_d1atcon
overload fprint with fprint_d1atcon
//
fun
d1atcon_make_node
(loc: loc_t, node: d1atcon_node): d1atcon
//
(* ****** ****** *)

(* end of [xats_staexp1.sats] *)
