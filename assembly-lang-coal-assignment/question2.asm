; Question 2
[org 0x0100] 

;Copy contents of memory location with offset 0F25 in the current data segment into AX.
mov ax, [0F25]

;Move contents of memory location with offset 0C10 to memory 
;location with offset 00FF in the current data segment. 
mov ax,[0C10] 
mov [00FF],ax 



;Consider a memory variable with three numbers (digit1, digit2, digit3). 
;Add the values of 2nd and 3rd numbers and store their result in the first index. 

mov ax,[digit2] 
add ax,[digit3] 
mov [digit1],ax 

digit1: dw 0 

digit2: dw 5 

digit3: dw 10