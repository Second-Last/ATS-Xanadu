(* ****** ****** *)
(* ****** ****** *)
(*
Basics for
srcgen1/xatslib/JS/NODE/.
*)
(* ****** ****** *)
(* ****** ****** *)
#staload
"srcgen1\
/xatslib\
/libcats/SATS/libcats.sats"
(* ****** ****** *)
#staload
"srcgen1\
/xatslib\
/githwxi/SATS/githwxi.sats"
(* ****** ****** *)
(* ****** ****** *)
//
#impltmp
<(*tmp*)>
the_XATSHOME_get() =
(
XATS2JS_NODE_the_XATSHOME_get
  ( (*void*) )) where
{
#extern
fun
XATS2JS_NODE_the_XATSHOME_get
  ((*void*)): strn = $extnam()
}
//
(* ****** ****** *)
(* ****** ****** *)
//
#extern
fun
XATS2JS_NODE_g_stdin
  ((*void*)): FILR = $extnam()
#extern
fun
XATS2JS_NODE_g_stdout
  ((*void*)): FILR = $extnam()
#extern
fun
XATS2JS_NODE_g_stderr
  ((*void*)): FILR = $extnam()
//
#impltmp
g_stdin< > = XATS2JS_NODE_g_stdin
#impltmp
g_stdout< > = XATS2JS_NODE_g_stdout
#impltmp
g_stderr< > = XATS2JS_NODE_g_stderr
//
(* ****** ****** *)
//
#impltmp
<>(*tmp*)
fpath_rexists
  (path) =
(
XATS2JS_NODE_fs_rexists(path)
) where
{
#extern
fun
XATS2JS_NODE_fs_rexists
  (path: strn): bool = $extnam()
}
//
(* ****** ****** *)

#impltmp
<>(*tmp*)
fpath_strmize_char
  (path) =
let
val
opt =
XATS2JS_NODE_fs_readFileSync
  (path)
in//let
if
stropt_nilq(opt)
then
strm_vt_nil((*void*))
else
strn_strmize(stropt_unsome(opt))
end where
{
#extern
fun
XATS2JS_NODE_fs_readFileSync
  (path: strn): stropt = $extnam()
} (* end of [fpath_strmize_char] *)

(* ****** ****** *)
//
#extern
fun
XATS2JS_NODE_bool_fprint:
(FILR, bool) -> void = $extnam()
#impltmp
bool_fprint<> = XATS2JS_NODE_bool_fprint
#extern
fun
XATS2JS_NODE_char_fprint:
(FILR, char) -> void = $extnam()
#impltmp
char_fprint<> = XATS2JS_NODE_char_fprint
#extern
fun
XATS2JS_NODE_strn_fprint:
(FILR, strn) -> void = $extnam()
#impltmp
strn_fprint<> = XATS2JS_NODE_strn_fprint
//
#extern
fun
XATS2JS_NODE_gint_fprint$sint:
(FILR, sint) -> void = $extnam()
#impltmp
gint_fprint$sint<> = XATS2JS_NODE_gint_fprint$sint
#extern
fun
XATS2JS_NODE_gint_fprint$uint:
(FILR, uint) -> void = $extnam()
#impltmp
gint_fprint$uint<> = XATS2JS_NODE_gint_fprint$uint
//
#extern
fun
XATS2JS_NODE_gflt_fprint$sflt:
(FILR, sflt) -> void = $extnam()
#impltmp
gflt_fprint$sflt<> = XATS2JS_NODE_gflt_fprint$sflt
#extern
fun
XATS2JS_NODE_gflt_fprint$dflt:
(FILR, dflt) -> void = $extnam()
#impltmp
gflt_fprint$dflt<> = XATS2JS_NODE_gflt_fprint$dflt
//
(* ****** ****** *)
(* ****** ****** *)
//
(* ****** ****** *)(* ****** ****** *)(* ****** ****** *)
(* ****** ****** *)(* ****** ****** *)(* ****** ****** *)

(* end of [ATS3/XANADU_xatslib_githwxi_DATS_CATS_JS_NODE_basics0.dats] *)
