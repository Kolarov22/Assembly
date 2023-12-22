include 'emu8086.inc'
org 100h

mov DX, 20 
lea SI, lowercase
call get_string 

call clear_screen



print:
cmp [DI], 0
 je stop
 mov AX, [DI]
 sub AX, 32
 mov [SI], AX
 putc [SI]
 inc SI
 inc DI
 jmp print
 
stop:


ret      

lowercase DB ?

DEFINE_GET_STRING
;DEFINE_PRINT_NUM
;DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING 
DEFINE_CLEAR_SCREEN

end
