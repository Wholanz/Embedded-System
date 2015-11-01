cmd_/home/embedded/exp7/simplecdev/simplecdev.o := gcc -Wp,-MD,/home/embedded/exp7/simplecdev/.simplecdev.o.d  -nostdinc -isystem /usr/lib/gcc/i686-linux-gnu/4.6/include -I/home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include -Iarch/x86/include/generated  -I/home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include -Iinclude -I/home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi -Iinclude/generated/uapi -include /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/kconfig.h   -I/home/embedded/exp7/simplecdev -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m32 -msoft-float -mregparm=3 -freg-struct-return -fno-pic -mpreferred-stack-boundary=2 -march=i586 -mtune=generic -maccumulate-outgoing-args -Wa,-mtune=generic32 -ffreestanding -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(simplecdev)"  -D"KBUILD_MODNAME=KBUILD_STR(simplecdev)" -c -o /home/embedded/exp7/simplecdev/simplecdev.o /home/embedded/exp7/simplecdev/simplecdev.c

source_/home/embedded/exp7/simplecdev/simplecdev.o := /home/embedded/exp7/simplecdev/simplecdev.c

deps_/home/embedded/exp7/simplecdev/simplecdev.o := \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/module.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/int-ll64.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/int-ll64.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/bitsperlong.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/bitsperlong.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/bitsperlong.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/posix_types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/stddef.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/stddef.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/posix_types_32.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/posix_types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/const.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/stat.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/stat.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/stat.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/symbol/prefix.h) \
  /usr/lib/gcc/i686-linux-gnu/4.6/include/stdarg.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/linkage.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/stringify.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/bitops.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/paravirt.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/asm.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/cpufeature.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/bitops/fls64.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/bitops/sched.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/arch_hweight.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/bitops/const_hweight.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/bitops/le.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/byteorder.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/byteorder/little_endian.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/byteorder/little_endian.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/swab.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/swab.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/swab.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/byteorder/generic.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/typecheck.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/printk.h \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/kern_levels.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/dynamic_debug.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/string.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/string.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/string_32.h \
    $(wildcard include/config/kmemcheck.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/errno.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/errno.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/errno.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/errno.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/errno-base.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/kernel.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/sysinfo.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/seqlock.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/bug.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/ia32/emulation.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/page.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/page_types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/page_32_types.h \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/highmem64g.h) \
    $(wildcard include/config/page/offset.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/page_32.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/3dnow.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/getorder.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/processor.h \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/x86/debugctlmsr.h) \
    $(wildcard include/config/cpu/sup/amd.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/processor-flags.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/vm86.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/ptrace.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/segment.h \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/ptrace.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/ptrace-abi.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/ptrace.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/vm86.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/math_emu.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/sigcontext.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/sigcontext.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/current.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/compat/vdso.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/pgtable_32_types.h \
    $(wildcard include/config/highmem.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/pgtable-3level_types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/pgtable-nopud.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/msr.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/msr.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/msr-index.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/ioctl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/ioctl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/ioctl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/ioctl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/cpumask.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/bitmap.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/desc_defs.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/special_insns.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/personality.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/personality.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/math64.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/div64.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/err.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/irqflags.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/ftrace.h \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/atomic.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/cmpxchg.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/cmpxchg_32.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/atomic64_32.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/atomic-long.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/bottom_half.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/barrier.h \
    $(wildcard include/config/x86/ppro/fence.h) \
    $(wildcard include/config/x86/oostore.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/spinlock_types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/spinlock_types_up.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/rwlock_types.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/spinlock_up.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/rwlock.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/spinlock_api_up.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/time.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/highuid.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/kmod.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/gfp.h \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/wait.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/wait.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/generated/bounds.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/notifier.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/rwsem.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/srcu.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/preempt/rt.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/completion.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/rcutiny.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/jiffies.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/timex.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/timex.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/param.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/param.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/param.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/timex.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/pfn.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/topology.h \
    $(wildcard include/config/x86/ht.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/topology.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/rbtree.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/sysctl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/elf.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/elf.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/user.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/user_32.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/auxvec.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/vdso.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/desc.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/ldt.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/mmu.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/elf.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/elf-em.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/kobject.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/sysfs.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/kobject_ns.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/kref.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/tracepoint.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/static_key.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/jump_label.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/export.h \
    $(wildcard include/config/modversions.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/module.h \
    $(wildcard include/config/m586.h) \
    $(wildcard include/config/m586tsc.h) \
    $(wildcard include/config/m586mmx.h) \
    $(wildcard include/config/mcore2.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/m686.h) \
    $(wildcard include/config/mpentiumii.h) \
    $(wildcard include/config/mpentiumiii.h) \
    $(wildcard include/config/mpentiumm.h) \
    $(wildcard include/config/mpentium4.h) \
    $(wildcard include/config/mk6.h) \
    $(wildcard include/config/mk8.h) \
    $(wildcard include/config/melan.h) \
    $(wildcard include/config/mcrusoe.h) \
    $(wildcard include/config/mefficeon.h) \
    $(wildcard include/config/mwinchipc6.h) \
    $(wildcard include/config/mwinchip3d.h) \
    $(wildcard include/config/mcyrixiii.h) \
    $(wildcard include/config/mviac3/2.h) \
    $(wildcard include/config/mviac7.h) \
    $(wildcard include/config/mgeodegx1.h) \
    $(wildcard include/config/mgeode/lx.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/ioport.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/klist.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/pm.h \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/ratelimit.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/asm/device.h \
    $(wildcard include/config/x86/dev/dma/ops.h) \
    $(wildcard include/config/intel/iommu.h) \
    $(wildcard include/config/amd/iommu.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/pm_wakeup.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/kdev_t.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/kdev_t.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/dcache.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/rculist.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/rculist_bl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/list_bl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/bit_spinlock.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/path.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/radix-tree.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/pid.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/capability.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/capability.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/semaphore.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/fiemap.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/shrinker.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/migrate_mode.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/percpu-rwsem.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/fs.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/limits.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/percpu_counter.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/dqblk_xfs.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/dqblk_v1.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/dqblk_v2.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/dqblk_qtree.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/projid.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/quota.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/nfs_fs_i.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/linux/fcntl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/linux/fcntl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/arch/x86/include/uapi/asm/fcntl.h \
  /home/embedded/new/meta-clanton_v1.0.0/yocto_build/tmp/work/clanton-poky-linux-uclibc/linux-yocto-clanton/3.8-r0/linux/include/uapi/asm-generic/fcntl.h \

/home/embedded/exp7/simplecdev/simplecdev.o: $(deps_/home/embedded/exp7/simplecdev/simplecdev.o)

$(deps_/home/embedded/exp7/simplecdev/simplecdev.o):
