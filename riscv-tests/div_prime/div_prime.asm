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


    li s2, 997  # input


    li s3, 2
loop:
    # if a0 mod a1 is equal to 0, return 0
    # if a0 mod a1 is not equal to 0, incremement
    # if a1 == a0, return 1

    mv a0, s2
    mv a1, s3

    jal mod

    beqz a0, prime

    # not prime
    add s3, s3, 1

    # if s2 == s3, we are done
    beq s2, s3, not_prime

    # else, go to loop
    j loop



prime:
    li a0, 0
    j end

not_prime:
    li a0, 1
    j end

end:
    # exit program
    li x0, 10
    ecall


    


