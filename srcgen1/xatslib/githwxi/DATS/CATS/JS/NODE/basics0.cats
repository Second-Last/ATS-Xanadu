/* ****** ****** */
/* ****** ****** */
/*
Basics for Xats2js/Node
*/
/* ****** ****** */
/* ****** ****** */
//
const
XATS2JS_NODE_fs =
require( 'fs' ) ;
//
/* ****** ****** */
/* ****** ****** */
//
function
XATS2JS_NODE_g_stdin()
{ return process.stdin ; }
function
XATS2JS_NODE_g_stdout()
{ return process.stdout ; }
function
XATS2JS_NODE_g_stderr()
{ return process.stderr ; }
//
/* ****** ****** */
/* ****** ****** */
//
function
XATS2JS_NODE_the_XATSHOME_get
  (/*0*/)
{
  let xhm =
  process.env['XATSHOME']
  return (
    (xhm===undefined) ? "" : xhm
  ) // return: the_XATSHOME_get()
}
//
/* ****** ****** */
/* ****** ****** */
//
function
XATS2JS_NODE_g_fprint
  (out, obj)
{
  out.write(obj.toString());
  return; // XATS2JS_NODE_g_fprint
}
//
/* ****** ****** */
//
function
XATS2JS_NODE_bool_fprint
  (out, obj)
{
  XATS2JS_NODE_g_fprint(out, obj);
  return ; // XATS2JS_NODE_bool_fprint
}
function
XATS2JS_NODE_char_fprint
  (out, obj)
{
  let
  rep = String.fromCharCode(obj);
  XATS2JS_NODE_g_fprint(out, rep);
  return ; // XATS2JS_NODE_char_fprint
}
function
XATS2JS_NODE_strn_fprint
  (out, obj)
{
  XATS2JS_NODE_g_fprint(out, obj);
  return ; // XATS2JS_NODE_strn_fprint
}
//
/* ****** ****** */
//
function
XATS2JS_NODE_gint_fprint$sint
  (out, obj)
{
  XATS2JS_NODE_g_fprint(out, obj);
  return ; // XATS2JS_NODE_gint_fprint$sint
}
function
XATS2JS_NODE_gint_fprint$uint
  (out, obj)
{
  XATS2JS_NODE_g_fprint(out, obj);
  return ; // XATS2JS_NODE_gint_fprint$uint
}
//
/* ****** ****** */
//
function
XATS2JS_NODE_gflt_fprint$sflt
  (out, obj)
{
  XATS2JS_NODE_g_fprint(out, obj);
  return ; // XATS2JS_NODE_gflt_fprint$sflt
}
function
XATS2JS_NODE_gflt_fprint$dflt
  (out, obj)
{
  XATS2JS_NODE_g_fprint(out, obj);
  return ; // XATS2JS_NODE_gflt_fprint$dflt
}
//
/* ****** ****** */
/* ****** ****** */
//
function
XATS2JS_NODE_fs_rexists
  (fpath)
{
  let // local var
  R_OK = XATS2JS_NODE_fs.constants.R_OK;
  try {
    XATS2JS_NODE_fs.accessSync(fpath, R_OK)
    return 1; // HX: [fpath] is R-available
  } catch(err) {
    return 0; // HX: [fpath] is R-unavailable
  }
} // end-of-[XATS2JS_NODE_fs_rexists(fpath)]
//
/* ****** ****** */
//
function
XATS2JS_NODE_fs_readFileSync
  (fpath)
{
  return String(XATS2JS_NODE_fs.readFileSync(fpath));
}
//
/* ****** ****** */
/* ****** ****** */
//
/* ****** ****** *//* ****** ****** *//* ****** ****** */
/* ****** ****** *//* ****** ****** *//* ****** ****** */

/* end of [ATS3/XANADU_xatslib_githwxi_DATS_CATS_JS_NODE_basics0.cats] */
