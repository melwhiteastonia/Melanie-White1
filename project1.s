.data

output: .asciiz "Output:" #this will print the base conversion 
string: .space 11 #array goes here with 10 elements
array2: .space 11 #valid inputs go here
#list: .asciiz "012345789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStT"
.text #enables text input

main:
la $s1, 0
la $s3, 0
la $s4, 0   #for valid charactar 

# create the string space and gets the user input
li $v0, 8 #gets the system ready to read the code
la $a0, string #address to store the variable
li $a1, 11 #a string of 10 integers
move $t0, $a0 #a pointer to the temporary space


syscall 

#may have a problem. try to connect the input with the string

# loads the string 

la $a0, string      #loads string address into register $a0
li $a1, 11          #loads the actual string into a1
li $v0, 8            #read string


#prints the charactar of a string

la $t0, string
lb $a0, 4($t0)
li $v0, 11
syscall

loop: #loop to iterate over a string

lb $a0, ($t0)	#loads the string
add $t0, $t0, 1 #increments one to the string
beqz $a0, end
beq $a0, 10, end
beq $a0, 32, spacecharactar
bne, $s4, 1, checkpoint   #if it is true that the charactar is valid then it will go to the (offset)




checkpoint: #loop to check if the charactar is valid 

la $s4, 1 #basically affirming the existence of a charactar 

blt $a0, 48, invalid
blt $a0, 58, valid_digit   #if ascii is less than 57 (valid), but if less than 48 (invalid), so 48<n<58

blt $a0, 65, invalid
blt $a0, 85, valid_upper     #65<n(ascii#)<84

blt $a0, 97, invalid
blt $a0, 117, valid_lower #97<n(ascii#)<117

syscall 

j invalid #the end of the loop 

invalid: #if the charactar is invalid 

#move $a0, $s2
li $v0, 1
la $a0, $s2

li $v0, 10

syscall 

valid_digit: #if the valid charactar is a digit

subu $s2, $a0, 48 #subtract 48 to find the real value
addu $s1, $s1, $s2 #add the real value to a register which holds the result

j loop

valid_upper:

subu $s2, $a0, 65 #subtract 65 to find the real value
addu $s1, $s1, $s2 #add the real value to the register holding the result

j loop

valid_lower: 

subu $s2, $a0, 97 #subtract 97 to find the real value
addu $s1, $s1, $s2 #add the real value to the register holding the result


j loop



 



							



#-----------------------------------------------------------------------------------------------------------------------------------------------------------------

#prints whatever is stored in the string 





syscall


#gets the user input for the string #input


#prompts the output
#li $v0, 4  #code to display text
#la $a0, output 
#syscall
 



#  compare 1st charactar to first space in array with a first charactar in string, which means we must access the first charactar in the string and the first charactar in the array, and if they do not meet the conditions "being the same
#we are comparing the 

#lb (load byte command) 
