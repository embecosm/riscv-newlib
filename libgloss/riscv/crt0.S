/* Copyright (c) 2017  SiFive Inc. All rights reserved.

   This copyrighted material is made available to anyone wishing to use,
   modify, copy, or redistribute it subject to the terms and conditions
   of the FreeBSD License.   This program is distributed in the hope that
   it will be useful, but WITHOUT ANY WARRANTY expressed or implied,
   including the implied warranties of MERCHANTABILITY or FITNESS FOR
   A PARTICULAR PURPOSE.  A copy of this license is available at
   http://www.opensource.org/licenses.
*/

#=========================================================================
# crt0.S : Entry point for RISC-V user programs
#=========================================================================
#ifdef STACK_ERASE
  .data
  .global sp_before_main
sp_before_main:  .word   0
#endif // STACK_ERASE
  .text
  .global _start
  .type   _start, @function
_start:
  # Initialize global pointer
.option push
.option norelax
1:auipc gp, %pcrel_hi(__global_pointer$)
  addi  gp, gp, %pcrel_lo(1b)
.option pop

  # Clear the bss segment
  la      a0, _edata
  la      a2, _end
  sub     a2, a2, a0
  li      a1, 0
  call    memset

  la      a0, __libc_fini_array   # Register global termination functions
  call    atexit                  #  to be called upon exit
  call    __libc_init_array       # Run global initialization functions

  lw      a0, 0(sp)                  # a0 = argc
  addi    a1, sp, __SIZEOF_POINTER__ # a1 = argv
  li      a2, 0                      # a2 = envp = NULL

#ifdef STACK_ERASE
# Save the stack pointer for checking after main returns
  lui     t1, %hi(sp_before_main)
  addi    t2, t1, %lo(sp_before_main)
  sw      sp, 0(t2)

# Fill stack with zeros, in preparation for checking
  addi    t1, sp, -2048 # 2kb, if I am not mistaken
stack_zero:
  beq     t1, sp, call_main
  sw      x0, 0(t1)
  addi    t1, t1, 4
  j       stack_zero

# Normal entry into main
call_main:
#endif // STACK_ERASE

  call    main

#ifdef STACK_ERASE
# After main, check sp is as it was before
  lw      t1, sp_before_main
  bne     sp, t1, bad_sp

# Then check stack values are zero - if they were modified they should have
# been erased subsequently
  addi    t1, sp, -2048
check_stack:
  beq     t1, sp, tail_exit
  lw      t2, 0(t1)
  bne     x0, t2, bad_stack_val
  addi    t1, t1, 4
  j check_stack

# Two different error conditions:

# 1. Non-zero value in stack
bad_stack_val:
  li a0, 66
  j tail_exit

# 2. SP didn't match what it was before main
bad_sp:
  li a0, 67
  j tail_exit

tail_exit:
#endif // STACK_ERASE

  tail    exit
  .size  _start, .-_start

  .global _init
  .type   _init, @function
  .global _fini
  .type   _fini, @function
_init:
_fini:
  # These don't have to do anything since we use init_array/fini_array.
  ret
  .size  _init, .-_init
  .size  _fini, .-_fini
