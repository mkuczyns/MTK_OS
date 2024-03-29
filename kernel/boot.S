// AArch64 mode
 
// To keep this in the first portion of the binary.
.section ".text.boot"
 
// Make _start global.
.globl _start
 
    .org 0x80000
// Entry point for the kernel. Registers are not defined as in AArch32.
_start:
    // read cpu id, stop slave cores
    mrs     x1, mpidr_el1
    and     x1, x1, #3
    cbz     x1, 2f

1:  wfe
    b       1b

2:  // set stack before our code
    ldr     x1, =_start
    mov     sp, x1
 
    // clear bss
    ldr     x1, =__bss_start
    ldr     w2, =__bss_size
3:  cbz     w2, 4f
    str     xzr, [x1], #8
    sub     w2, w2, #1
    cbnz    w2, 3b
 
    // jump to C code, should not return
4:  bl      kernel_main
    // for failsafe, halt this core too
    b 1b