.text
.global _start


_start:

    # multiply a0 by a1
    li a0, 65535
    li a1, 65535

    mv	a2,a0
    li	a0,0
l1: and	a3,a1,1
    beqz	a3, l2
    add	a0,a0,a2
l2: srl	a1,a1,0x1
    sll	a2,a2,0x1
    bnez	a1, l1

    # output should be 65025 in a0
    # 0xfE01
    
    # Exit program
    li x0, 10   # System call code for exit
    ecall       # Exit program
