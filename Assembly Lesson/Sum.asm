section .data
    num1 db 10
    num2 db 20

section .bss
    res resb 1

section .text
    global _start

_start:
    mov al, [num1]    ; num1 -> al
    add al, [num2]    ; al + num2
    mov [res], al     ; write res
    ; Exit program
    mov eax, 1        ; syscall number for sys_exit
    xor ebx, ebx      ; exit code 0
    int 0x80          ; call kernel
