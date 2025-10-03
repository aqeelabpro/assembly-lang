[org 0x0100]

    jmp __start
__start:
    mov ax,0    ; load each number from array
    mov bx,0    ; base regiser(as index)
    mov cx,0    ; len of array

loop1:
    mov ax,[nums+bx]
    add cx,1            ; count length
    
    add bx,2
    cmp bx,20
    jne loop1
    
    ; if array exhausted, just jump to done
    jmp done

done:
    mov ax,0x4c00
    int 0x21

nums: dw 0, 1, 2, 3, 4, 5, 6, 7, 8, 9