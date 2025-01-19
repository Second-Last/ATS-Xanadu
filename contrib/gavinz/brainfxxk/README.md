An interpreter for brainfxxk written in ATS3.

## Instructions to Run

Except for setep 1,
the following assumes you're in `contrib/gavinz/brainfxxk`,
i.e. in the same directory level as this `README.md`
file.
For step 1, you need to be in the root directory of this git repository.

1. `make -f Makefile_overall` to compile ATS3
   compilers and prelude. You should perform this step in the root directory of
   this repository.

2. `make -C ../xatslib` to compile my `xatslib` which provides
   additional functions
   that are
   not yet merged into `prelude`.

3. `make all` to compile the brainfxxk interpreter.

4. `bun run BUILD/main.js <input-file>` to interpret a
   brainfxxk program. For example,
   `bun run BUILD/main.js hello.bf`.
   To increase stack limit, run with `bun run --stack-size=4096 BUILD/main.js
   rot13.bf`
