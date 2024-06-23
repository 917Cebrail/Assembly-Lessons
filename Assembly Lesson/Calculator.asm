section .data
    x db 10
    y db 20

section .bss
    sum resb 1
    diff resb 1
    product resb 1
    quotient resb 1

section .text
    global _start

_start:
    mov al, [x]
    add al, [y]
    mov [sum], al

    mov al, [x]
    sub al, [y]
    mov [diff], al

    mov al, [x]
    mov bl, [y]
    mul bl
    mov [product], al

    mov ax, [x]
    xor dx, dx
    mov bl, [y]
    div bl
    mov [quotient], al
    
    mov eax, 1
    xor ebx, ebx
    int 0x80
