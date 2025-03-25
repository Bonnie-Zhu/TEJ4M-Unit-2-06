/* load01.s */
.data
.balign 4
myvar1: .word 3
.balign 4
myvar2: .word 4

.text
.balign 4
.global main
main:
    ldr r1, =myvar1   @ Load address
    ldr r1, [r1]      @ Load value (3)
    ldr r2, =myvar2   @ Load address
    ldr r2, [r2]      @ Load value (4)
    add r0, r1, r2    @ 3+4=7
    bx lr
