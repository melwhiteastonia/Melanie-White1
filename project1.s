.data

input: .asciiz "Input:" #this will both print the text and allow the user to input
output: .asciiz "Output:" # this will print the base conversion 
.text #enables text input

main: #program starts here 

#prints the input string


la $a0, input #address it to the string "input"
li $v0, 4 # creates in empty register for the string
syscall

#gets the user input for the string #input

li $v0, 8 #stores the user input in the register $v0
li $v0, 10 #exits the program
syscall





