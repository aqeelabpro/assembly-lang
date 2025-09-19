; Fibonacci Sequence - First 5 Numbers (F1=0, F2=1, F3=1, F4=2, F5=3) 

[org 0x0100] 
; F1 = 0 
mov ax, 0 
mov [firstNum], ax 

; F2 = 1 
mov ax, 1 
mov [secondNum], ax 

; F3 = F1 + F2 
mov ax, [firstNum] 
add ax, [secondNum] 
mov [thirdNum], ax 

; F4 = F2 + F3 
mov ax, [secondNum] 
add ax, [thirdNum] 
mov [fourthNum], ax 

; F5 = F3 + F4 
mov ax, [thirdNum] 
add ax, [fourthNum] 
mov [fifthNum], ax 

mov ax,0x4C00 

int 0x21 

; labels 

firstNum: dw 0 ; F1 

secondNum: dw 0 ; F2 

thirdNum: dw 0 ; F3 

fourthNum: dw 0 ; F4 

fifthNum: dw 0 ; F5 