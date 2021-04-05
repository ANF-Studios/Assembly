# Assembly [![Build main.asm](https://github.com/ANF-Studios/Assembly/actions/workflows/nasm_build.yml/badge.svg)](https://github.com/ANF-Studios/Assembly/actions/workflows/nasm_build.yml)
A backup of my Assembly code that I learn and write along the way.

# Repository structure
I am learning Assembly, I don't write some random pseudo code that works or does not work other times.

[main.asm](/main.asm) is the main file, where I doodle random stuff up.
The [collections](/collections) folder is stuff that I have already done and is guaranteed to work on Windows 10 with nasm.

Most of the assembly code I compile is using `nasm main.asm -f win32` and then `g++ main.obj`.
