fun getchar(): char =
  XATS2JS_NODE_getchar()
	  where
    {
      #extern fun XATS2JS_NODE_getchar(): char = $extnam()
    }
