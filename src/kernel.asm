bits 32
section .text
;multiboot spec
align 4
dd 0x1BADB002            ;magic
dd 0x00                  ;flags
dd - (0x1BADB002 + 0x00) ;checksum. m+f+c should be zero
    
global start
extern kmain ; Defined in the C file

start:
    cli
    mov esp, stack_space
    call kmain
    hlt

section .bss
resb 8192
stack_space: