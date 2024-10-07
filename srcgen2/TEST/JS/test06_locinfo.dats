(* ****** ****** *)
#include
"./../..\
/HATS/xatsopt_sats.hats"
#include
"./../..\
/HATS/xatsopt_dats.hats"
(* ****** ****** *)
#staload
"./../../SATS/locinfo.sats"
(* ****** ****** *)
#include
"./../../DATS/locinfo.dats"
#include
"./../../DATS/locinfo_print0.dats"
(* ****** ****** *)

val pos0 =
postn(0, 0, 0)
and pos1 =
postn(5, 1, 2)
val (  ) =
prerrsln("postn(0, 0, 0) = ", pos0)
and (  ) =
prerrsln("postn(5, 1, 2) = ", pos1)
val (  ) =
prerrsln("(pos0 < pos1) = ", (pos0 < pos1))
val (  ) =
prerrsln("pos0\\cmp(pos1) = ", (pos0\cmp(pos1)))

(* ****** ****** *)

val loc0 =
loctn(LCSRCnone0(), pos0, pos1)
val loc1 =
loctn(LCSRCsome1("__XSTRING__"), pos0, pos1)
val (  ) = prerrsln("loc0 = ", loc0)
val (  ) = prerrsln("loc1 = ", loc1)

(* ****** ****** *)

(* end of [ATS3/XATSOPT_TEST_JS_test06_locinfo.dats] *)
