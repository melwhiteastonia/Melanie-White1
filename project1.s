.data

#input: .asciiz "Input:" #this will both print the text and allow the user to input
output: .asciiz "Output:" #this will print the base conversion 
string: .space 11 #array goes here with 10 elements
list: .byte '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'a', 'B', 'b', 'C', 'c', 'D', 'd', 'E', 'e', 'F', 'f', 'G', 'g', 'H', 'h', 'I', 'i', 'J', 'j', 'K', 'k', 'L', 'l', 'M', 'm', 'N', 'n', 'O', 'o', 'P', 'p', 'Q', 'q', 'R', 'r', 'S', 's', 'T', 't'  #the alphabet will go here(hard-coded)
.text #enables text input

main:

# create the string space and gets the user input
li $v0, 8 #gets the system ready to read the code
la $a0, string #address to store the variable
li $a1, 11 #a string of 10 ith one extra space 

syscall 

#may have a problem. try to connect the input with the string

# loads the string 

la $a0,string      #loads string address into register $a0
li $a1,11          #loads the actual string into a1
li $v0,8            #read string
syscall 

jal comparision

comparison: 
li $v0, 10 #exits the program
syscall

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
