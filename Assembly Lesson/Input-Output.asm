section .bss
    buffer resb 1

section .text
    global _start

_start:
    ; Read a character from stdin
    mov eax, 3        ; syscall number for sys_read
    mov ebx, 0        ; file descriptor 0 is stdin
    mov ecx, buffer   ; buffer to store the input
    mov edx, 1        ; number of bytes to read
    int 0x80          ; call kernel

    ; Write the character to stdout
    mov eax, 4        ; syscall number for sys_write
    mov ebx, 1        ; file descriptor 1 is stdout
    mov ecx, buffer   ; buffer containing the character
    mov edx, 1        ; number of bytes to write
    int 0x80          ; call kernel

    ; Exit program
    mov eax, 1        ; syscall number for sys_exit
    xor ebx, ebx      ; exit code 0
    int 0x80          ; call kernel
