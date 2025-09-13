; Copy contents of memory location with offset 0F25 in the current data segment into AX.
[org 0x0100]
mov ax, [0F25]

;Move contents of memory location with offset 0C10 to memory location with offset
00FF in the current data segment. 
; We can't directly write copy data from memory to memory

[org 0x0100]
mov ax,[0C10]
mov [00FF],ax


[org 0x0100]
mov ax,[digit2]
add ax,[digit3]
mov [digit1],ax

digit1: dw 0
digit2: dw 5
digit3: dw 10


; Immediate Addressing Mode
[org 0x0100]
mov ax, 5


[org 0x0100]
mov ax, [digit] ; Direct Addressing Mode

mov ax, 0x4c00
int 0x21

digit: dw 10



[org 0x0100]
mov bx, digit ; Indirect Addressing Mode
mov ax, 1
add ax,[bx]

mov ax, 0x4c00
int 0x21

digit: dw 10