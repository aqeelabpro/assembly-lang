[org 0x0100]

    jmp __start
__start:
    mov ax,0
    mov cx,[nums]
    mov [maxEl],cx
    mov dx,[maxEl]
    mov cx,0
    mov bx,2 ; we already have first element in maxEl

loop1:
    mov ax,[nums+bx]
    cmp [nums+bx+2],ax
    jg updateMax

    add bx,2
    cmp bx,20
    jne loop1

    ; if array exhausted, just jump to done
    jmp done

updateMax:
    mov ax,[nums+bx+2]
    mov [maxEl],ax
    mov dx,[maxEl]
    
    add bx,2
    cmp bx,20
    jne loop1

    ; if array exhausted, just jump to done
    jmp done
done:
    mov ax,0x4c00
    int 0x21

nums: dw 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
maxEl: dw 0