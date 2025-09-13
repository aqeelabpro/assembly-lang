[org 0x0100]

; -------------------------------
; unsigned comparison examples
; ja  - jump if above (cf=0 & zf=0)
; jb  - jump if smaller (cf=1)
; jae - jump if above or equal (cf=0)
; jbe - jump if smaller or equal (cf=1 or zf=1)
; je  - jump if equal (zf=1)
; jne - jump if not equal (zf=0)
; -------------------------------

; ---- ja example ----
mov ax,5
mov bx,3
cmp ax,bx
ja above5_3
nop

; ---- jb example ----
mov ax,3
mov bx,5
cmp ax,bx
jb smaller3_5
nop

; ---- jbe example ----
mov ax,3
mov bx,5
cmp ax,bx
jbe smallerOrEqual3_5
nop

; ---- jae example ----
mov ax,5
mov bx,5
cmp ax,bx
jae aboveOrEqual5_5
nop

; ---- je example ----
mov ax,5
mov bx,5
cmp ax,bx
je equal5_5
nop

; ---- jne example ----
mov ax,5
mov bx,3
cmp ax,bx
jne notEqual5_3
nop

; -------------------------------
; signed comparison examples
; jg  - jump if greater (signed)
; jl  - jump if smaller (signed)
; jge - jump if greater or equal (signed)
; jle - jump if smaller or equal (signed)
; je  - jump if equal (zf=1)
; jne - jump if not equal (zf=0)
; -------------------------------

; ---- jg example ----
mov ax,5
mov bx,3
cmp ax,bx
jg signedGreater5_3
nop

; ---- jl example ----
mov ax,-5
mov bx,3
cmp ax,bx
jl signedSmallerMinus5_3
nop

; ---- jge example ----
mov ax,5
mov bx,5
cmp ax,bx
jge signedGreaterOrEqual5_5
nop

; ---- jle example ----
mov ax,-5
mov bx,3
cmp ax,bx
jle signedSmallerOrEqualMinus5_3
nop

; ---- je example ----
mov ax,5
mov bx,5
cmp ax,bx
je signedEqual5_5
nop

; ---- jne example ----
mov ax,5
mov bx,3
cmp ax,bx
jne signedNotEqual5_3
nop

mov ax,0x4c00
int 0x21

; ---------------------------------
; jump labels/data at end
; ---------------------------------

above5_3:
    nop
smaller3_5:
    nop
smallerOrEqual3_5:
    nop
aboveOrEqual5_5:
    nop
equal5_5:
    nop
notEqual5_3:
    nop
signedGreater5_3:
    nop
signedSmallerMinus5_3:
    nop
signedGreaterOrEqual5_5:
    nop
signedSmallerOrEqualMinus5_3:
    nop
signedEqual5_5:
    nop
signedNotEqual5_3:
    nop
