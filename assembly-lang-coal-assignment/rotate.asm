; Program to rotate values of registers clockwise 

[org 0x0100] 

mov ax,10 ; Initial Value in ax 

mov bx,20 ; Initial Value in bx 

mov cx,30 ; Initial Value in cx 

 

; first clockwise rotation 

mov dx,bx ; preserve value of `bx` so we can use it for next register(cx) 

mov bx,ax ; mov value of ax into bx 

mov ax,cx ; preserve value of `cx` so we can use it for next register(ax) 

mov cx,dx ; mov dx = bx to cx 


; second clockwise rotation 

mov dx,bx ; preserve value of `bx` so we can use it for next register(cx) 

mov bx,ax ; mov value of ax into bx 

mov ax,cx ; preserve value of `cx` so we can use it for next register(ax) 

mov cx,dx ; mov dx = bx to cx 