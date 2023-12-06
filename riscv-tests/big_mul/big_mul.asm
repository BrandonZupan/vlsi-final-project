.text
.global _start


_start:

    # multiply a0 by a1
    li a0, 65535
    li a1, 65535

    mul a2, a0, a1
    mulhu a3, a0, a1

    # output should be 65025 in a0
    # 0xfE01
    
    # Exit program
    li x0, 10   # System call code for exit
    ecall       # Exit program

