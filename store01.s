/* -- store01.s */
.data
.balign 4          @ Align to 4 bytes
myvar1: .word 0
.balign 4          @ Align to 4 bytes
myvar2: .word 0

.text
.balign 4          @ Align code to 4 bytes
.global main
main:
    ldr r1, =myvar1   @ Load address of myvar1
    mov r3, #3        @ r3 = 3
    str r3, [r1]      @ Store 3 into myvar1
    ldr r2, =myvar2   @ Load address of myvar2
    mov r3, #4        @ r3 = 4
    str r3, [r2]      @ Store 4 into myvar2

    ldr r1, [r1]      @ Load myvar1 (3)
    ldr r2, [r2]      @ Load myvar2 (4)
    add r0, r1, r2    @ r0 = 3 + 4
    bx lr             @ Exit
