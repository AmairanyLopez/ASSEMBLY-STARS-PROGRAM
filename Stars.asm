;This program takes an integer from the user and display
;a pyramid formed by that number of rows and decreasing stars


INCLUDE Irvine32.inc


.data
number dWord 0
star BYTE  '*',0
str1 BYTE "Enter and integer: ", 0 

.code
main proc
mov edx, OFFSET str1 ;Move the first string into edx
call WriteString ;Display the string 
call ReadInt ;get value from user
mov number, eax ;save the input 
mov edx, OFFSET star 
mov ecx, 0 ;set counter
mov esi, 1 ;set counter


L1: 
cmp ecx, number ;compare numbers
je done ;once they are equal end the program
call crlf ;print new line
mov ebx, esi ;using an extra counter

L2: ;inner loop
mov eax, ecx 
add eax, ebx
call WriteString ;print the star
cmp ebx, number ;second loop comparison
je L2done 
inc ebx  ;counter
jmp L2

L2done:
inc ecx ;counter
inc esi ;counter
jmp L1


done: ;the end



main endp
end main