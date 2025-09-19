[org 0x0100]

mov ax, 5          ; immediate
mov ax, [digit]    ; direct
mov bx, digit
add ax, [bx]       ; indirect

mov ax, 0x4c00
int 0x21

digit: dw 10