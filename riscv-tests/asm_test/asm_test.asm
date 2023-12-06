# RISC-V assembly code to multiply 5 and 6

# Declare variables
.text
.global _start

_start:
    # Initialize registers

    # 655025
    li a0, 255
    li a1, 255 
    mul a2, a0, a1    # 0x01
    mulhu a3, a0, a1 # 0xFE

    li a0, 0
    li a1, 0
    mul a2, a0, a1  # 0x00
    mulhu a3, a0, a1 # 0x00

    li a0, 61
    li a1, 67
    mul a2, a0, a1  # 0xF7
    mulhu a3, a0, a1 # 0x0F

    # signed tests
    li a0, -2
    li a1, 7
    mul a2, a0, a1     # 0xF2
    mulh a3, a0, a1    # 0xFF

    # unsigned test
    li a0, 126
    li a1, 4
    divu a2, a0, a1  # 1f
    rem a3, a0, a1 # 2

    # unsigned divide
    # divide by zero
    # precision loss



    # Exit program
    li x0, 10   # System call code for exit
    ecall       # Exit program
