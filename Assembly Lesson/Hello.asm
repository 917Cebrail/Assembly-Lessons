section .data
    hello db 'Hello, World!',0

section .bss

section .text
    global _start

_start:
    ; Write our string to stdout
    mov eax, 4        ; syscall number for sys_write
    mov ebx, 1        ; file descriptor 1 is stdout
    mov ecx, hello    ; pointer to our message
    mov edx, 13       ; length of our message
    int 0x80          ; call kernel

    ; Exit program
    mov eax, 1        ; syscall number for sys_exit
    xor ebx, ebx      ; exit code 0
    int 0x80          ; call kernel
