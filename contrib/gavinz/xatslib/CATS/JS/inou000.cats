function XATS2JS_NODE_getchar()
{
  const fs = require("fs");
  
  // Set raw mode
  const originalSettings = process.stdin.isRaw;
  process.stdin.setRawMode(true);
  
  // Read a single byte synchronously
  const buffer = Buffer.alloc(1);
  fs.readSync(process.stdin.fd, buffer, 0, 1);
  
  // Restore original terminal settings
  process.stdin.setRawMode(originalSettings);
  
  // Return the character code
  return buffer[0];
}
