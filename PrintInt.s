.text
.global main
main:

    #push the stack
    SUB sp, sp, #4
    STR lr, [sp, #0]

    #prompt user for input
    LDR r0, =prompt1
    BL printf

    #read the user input
    LDR r0, =format1
    LDR r1, =num1
    BL scanf

    #print the string with user input
    LDR r0, =output1
    LDR r1, =num1
    LDR r1, [r1, #0]
    BL printf

    #print the string with user input and tabs
    LDR r0, =output2
    LDR r1, =num1
    LDR r1, [r1, #0]
    BL printf

    #print the string with user input and quotation marks
    LDR r0, =output3
    LDR r1, =num1
    LDR r1, [r1, #0]
    BL printf

    #pop the stack
    LDR lr, [sp, #0]
    ADD sp, sp, #4
    MOV pc, lr



.data
    prompt1: .asciz "How old are you? "
    format1: .asciz "%d"
    num1:    .word  0
    output1: .asciz "You are %d years old\n"
    output2: .asciz "Put another way, you are\t%d\tyears old\n"
    output3: .asciz "\"And...you are still %d years old...\"\n\n"
