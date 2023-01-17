.data
N:
.word 3
M:
.word 2
size:
.word 6
matrix: 
.word -1, 1, -2
.word 2, -3, 3
result: 
.word 0 #sum of negative elements of the array


.text

main:
la a2, N # Columns. Constant, do not overwrite.
la a3, M  #Rows. Constant, do not overwrite.
la a4, size #Number of elements of the array
lw s2, 0(a4) #Load size to Saved Register 2
la a4, matrix  #Load address (la) of matrix to a4. 
call process
main_after_process:
call print
call exit

print: #print the result.
#Venus print ecall: 	ID = 1, prints integer in a1 
addi a0, x0, 1 #a0 is used for venus ecall ID.
add a1, x0, t5 #loading result from t5 to a1 for printing
ecall
ret

exit:
addi a0, x0, 10 
ecall

process:
lw t1, 0(a2) # N
lw t2, 0(a3) # M

addi t4, x0, 0 # row pointer

init:
addi t5, x0, 0 # result to save
addi t3, x0, 0 # row element number
addi a6, x0, 0 # array element counter

cycle:
lw t6, 0(a4) #load value from array
addi a4, a4, 4 #increment array pointer
blt x0, t6, negative_element #branch if array element < 0
addi a6, a6, 1 #increment array counter
after_increment:
beq s2, a6 main


negative_element:
add t5, t6, t5 #increment sum register
addi a6, a6, 1 #increment array counter
beq s2, a6 return
j after_increment

return:
ret