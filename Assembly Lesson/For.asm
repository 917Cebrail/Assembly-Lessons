section .bss
    sum resb 4

section .text
    global _start

_start:
    mov ecx, 10        ; 10 time (for)
    xor eax, eax       ; total -> eax
    xor ebx, ebx       ; numbers -> ebx

loop_start:
    inc ebx            ; ebx +1
    add eax, ebx       ; eax + ebx
    loop loop_start    ; ecx != 0 continue

    ; write this result
    mov [sum], eax

    ; Exit program
    mov eax, 1         ; syscall number for sys_exit
    xor ebx, ebx       ; exit code 0
    int 0x80           ; call kernel
