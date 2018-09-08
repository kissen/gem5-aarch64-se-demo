gem5 aarch64 Hello World
========================

This repository contains a *hello world* application that runs on
[gem5](http://www.gem5.org/Main_Page) in aarch64 system call emulation
(SE) mode.

This hello world requires no special libraries, all you need is an
aarch64 tool chain. You can either compile it yourself, get the
`gcc-aarch64-linux-gnu` Debian package or use the default `gcc` on an
aarch64 target (e.g. a Raspberry Pi 3 running [a 64 bit
OS](https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-3)).

Running
-------

1. Update `src/Makefile` to fit with your tool chain. You'll want to
   update the `CROSS-{CC,AS,LD}` variables.

2. Run `make` in the `src` directory.

3. In the `gem5` directory, run

		build/ARM/gem5.opt configs/example/se.py -c /PATH/TO/../src/kernel.elf

Limitations
-----------

Currently, the only supported IO is the `write` system call,
interfaced through the `writestr` function. For more advanced
projects, you should use a full embedded C library. I know people have
had success with [Newlib](https://sourceware.org/newlib/).
