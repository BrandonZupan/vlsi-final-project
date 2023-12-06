.text
.global _start

_start:
    j main

# gcc divide functions
divide:
    add sp, sp, -12
    sw ra, 8(sp)
    jal udivsi3
    lw ra, 8(sp)
    add sp, sp, 12
    ret

udivsi3:
    mv	a2,a1
    mv	a1,a0
    li	a0,-1
    beqz	a2,l1
    li	a3,1
    bgeu	a2,a1,l2
l3: blez	a2,l2
    sll	a2,a2,0x1
    sll	a3,a3,0x1
    bltu	a2,a1, l3
l2: li	a0,0
l5: bltu	a1,a2,l4
    sub	a1,a1,a2
    or	a0,a0,a3
l4: srl	a3,a3,0x1
    srl	a2,a2,0x1
    bnez	a3,l5
l1: ret

mod:
    add	sp,sp,-12
    sw	ra,8(sp)
    jal	umodsi3
    lw	ra,8(sp)
    add	sp,sp,12
    ret

umodsi3:
    mv	t0,ra
    jal	udivsi3
    mv	a0,a1
    jr	t0
    neg	a0,a0
    bgtz	a1, m1
    neg	a1,a1
    j	udivsi3
    neg	a1,a1
m1: mv	t0,ra
    jal	udivsi3
    neg	a0,a0
    jr	t0



main:

    li sp, 0x1000   # last address in mem

    li a0, 100
    li a1, 9

    jal udivsi3
    add sp, sp, -4  # store result on stack
    sw a0, 0(sp)

    li a0, 100
    li a1, 9

    jal umodsi3
    mv a0, a1       # store result in a1

    # get div result from stack
    lw a0, 0(sp)
    add sp, sp, 4

    # exit program
    li x0, 10
    ecall
