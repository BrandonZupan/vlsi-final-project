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
    
    # unsigned divide
    # divide by zero
    # precision loss



    # Exit program
    li x0, 10   # System call code for exit
    ecall       # Exit program
