; bootloader.asm // Created by Nav Pahwa 2021
loop:
    jmp loop ; Loop; Go back to label "loop"

times 510-($-$$) db 0 ; Fill 510 bytes with 0s
dw 0xaa55 ; Add these last two bytes completing 512 bytes for the bootsector