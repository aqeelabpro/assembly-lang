[org 0x0100]
    jmp __start

__start:
    mov bx,0
    mov ax,0
    mov dx,0
findEvenSum:
    mov ax,[nums+bx]
    and ax,1
    cmp ax,0            ; if 0 even, otherwise odd
    je even             ; jump to label even, if even

    ; if not even
    add bx,2
    cmp bx,18
    jne findEvenSum

    ; when whole array exhausted, just jmp to done
    jmp done

even:
    mov ax,[nums+bx]
    add dx,ax
    add bx,2
    cmp bx,18
    jne findEvenSum
    ; when whole array exhausted, just jmp to done
    jmp done

done:
    mov [sumOfEvens],dx
    mov ax,0x4c00
    int 0x21

nums: dw 0,1,2,3,4,5,6,7,8,9
sumOfEvens: dw 0
