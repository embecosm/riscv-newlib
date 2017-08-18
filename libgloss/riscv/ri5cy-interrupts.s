        .section .interrupts, "ax"
__ri5cy_interrupt_0:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_1:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_2:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_3:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_4:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_5:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_6:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_7:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_8:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_9:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_10:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_11:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_12:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_13:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_14:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_15:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_16:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_17:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_18:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_19:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_20:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_21:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_22:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_23:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_24:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_25:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_26:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_27:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_28:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_29:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_30:
        j __ri5cy_interrupt_0
__ri5cy_interrupt_31:
        j __ri5cy_interrupt_0
.globl __ri5cy_reset_handler
__ri5cy_reset_handler:
        j __ri5cy_jump_to_start
__ri5cy_illegal_handler:
        j __ri5cy_reset_handler
__ri5cy_ecall_handler:
        j __ri5cy_reset_handler

__ri5cy_jump_to_start:
        j _start
