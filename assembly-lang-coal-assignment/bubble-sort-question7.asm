[org 0x0100]

; -------- Iteration 1 --------
; Compare [0],[1] (2,4 → OK)
mov ax,[rollNo]
mov bx,[rollNo+1]
mov [rollNo],ax
mov [rollNo+1],bx

; Compare [1],[2] (4,0 → swap)
mov ax,[rollNo+1]
mov bx,[rollNo+2]
mov dx,bx
mov [rollNo+2],ax
mov [rollNo+1],dx

; Compare [2],[3] (4,5 → OK)
mov ax,[rollNo+2]
mov bx,[rollNo+3]
mov [rollNo+2],ax
mov [rollNo+3],bx

; Compare [3],[4] (5,1 → swap)
mov ax,[rollNo+3]
mov bx,[rollNo+4]
mov dx,bx
mov [rollNo+4],ax
mov [rollNo+3],dx

; Compare [4],[5] (5,4 → swap)
mov ax,[rollNo+4]
mov bx,[rollNo+5]
mov dx,bx
mov [rollNo+5],ax
mov [rollNo+4],dx

; -------- Iteration 2 --------
; Compare [0],[1] (2,0 → swap)
mov ax,[rollNo]
mov bx,[rollNo+1]
mov dx,bx
mov [rollNo+1],ax
mov [rollNo],dx

; Compare [1],[2] (2,4 → OK)
mov ax,[rollNo+1]
mov bx,[rollNo+2]
mov [rollNo+1],ax
mov [rollNo+2],bx

; Compare [2],[3] (4,1 → swap)
mov ax,[rollNo+2]
mov bx,[rollNo+3]
mov dx,bx
mov [rollNo+3],ax
mov [rollNo+2],dx

; Compare [3],[4] (4,4 → OK)
mov ax,[rollNo+3]
mov bx,[rollNo+4]
mov [rollNo+3],ax
mov [rollNo+4],bx

; Compare [4],[5] (4,5 → OK)
mov ax,[rollNo+4]
mov bx,[rollNo+5]
mov [rollNo+4],ax
mov [rollNo+5],bx

; -------- Iteration 3 --------
; Compare [0],[1] (0,2 → OK)
mov ax,[rollNo]
mov bx,[rollNo+1]
mov [rollNo],ax
mov [rollNo+1],bx

; Compare [1],[2] (2,1 → swap)
mov ax,[rollNo+1]
mov bx,[rollNo+2]
mov dx,bx
mov [rollNo+2],ax

rollNo: db 2,4,0,5,1,4