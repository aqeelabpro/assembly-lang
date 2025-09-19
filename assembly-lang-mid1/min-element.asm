[org 0x0100]

    jmp __start
__start:
    mov ax,0
    mov cx,[nums]
    mov [minEl],cx
    mov dx,[minEl]
    mov cx,0
    mov bx,2 ; we already have first element in minEl

loop1:
    mov ax,[nums+bx]
    cmp [nums+bx+2],ax
    jl updateLess

    add bx,2
    cmp bx,20
    jne loop1

    ; if array exhausted, just jump to done
    jmp done

updateLess:
    mov ax,[nums+bx+2]
    mov [minEl],ax
    mov dx,[minEl]
    
    add bx,2
    cmp bx,20
    jne loop1

    ; if array exhausted, just jump to done
    jmp done
done:
    mov ax,0x4c00
    int 0x21

nums: dw 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
minEl: dw 0