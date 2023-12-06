# Uses multiply extension to check if number is prime

.text
.global _start

_start:
    li sp, 0x1000
    j main

main:
    li s2, 97   # input
    li s4, 0    # div count
    
    li s3, 2

loop:
    # if a0 mod a1 is equal to 0, return 0
    # if a0 mod a1 is not equal to 0, incremement
    # if a1 == a0, return 1

    rem a0, s2, s3
    add s4, s4, 1
    beqz a0, prime

    # not prime
    add s3, s3, 1

    # if s2 == s3, we are done
    beq s2, s3, not_prime

    # else go to loop
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

