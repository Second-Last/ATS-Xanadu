(* ****** ****** *)
#staload UN =
"prelude/SATS/unsafex.sats"
(* ****** ****** *)
//
#include
"prelude/HATS/prelude_dats.hats"
//
#include
"\
srcgen1\
/prelude/HATS/CATS/JS/prelude_dats.hats"
//
(* ****** ****** *)
(* ****** ****** *)

fun
length1(xs: list(sint)): sint =
(
case+ xs of
| list_nil() => 0
| list_cons(_, xs) => 1 + length1(xs)
)

(* ****** ****** *)
(* ****** ****** *)

fun
length2(xs: list(sint)): sint =
(
case+ xs of
|
list_nil() => 0
|
list_cons(_, list_nil()) => 1
|
list_cons(_, list_cons(_, xs)) => 2 + length2(xs)
)

(* ****** ****** *)
(* ****** ****** *)

fun
length3(xs: list(sint)): sint = list_length<sint>(xs)

(* ****** ****** *)
(* ****** ****** *)

(* end of [ATS3/XATS2JS_TEST_JS_DATA_mytest09.dats] *)
