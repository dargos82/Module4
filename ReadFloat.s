#Program Name: ReadFloat
#Author: David Blossom
#Date: 19 Jun 2024
#Purpose: Prompt a user for input as a float, print output as a double
#Input: num1
#Output: output1

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
    LDR r0, =input1
    LDR r1, =num1
    BL scanf

    #move value of num1 into s0
    LDR r0, =output1
    LDR r1, =num1
    VLDR s0, [r1, #0]
    
    
    #convert float to double, store in d0
    vcvt.f64.f32 d1, s0

    #print the string with user input
    VMOV r2, r3, d1
    BL printf

    #pop the stack
    LDR lr, [sp, #0]
    ADD sp, sp, #4
    MOV pc, lr



.data
    prompt1: .asciz "Enter a decimal: \n"
    input1:  .asciz "%f"
    num1:    .word  0
    output1: .asciz "You entered: %f\n"
