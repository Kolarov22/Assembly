include 'emu8086.inc'
org 100h

mov AL, 1
mov BL, 1
mov CX, n 
mov CH, 0

fact: 
MUL BL
inc BL

loop fact

call print_num


ret      

lowercase DB ? 
n DW 5

;DEFINE_GET_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
;DEFINE_PRINT_STRING 
;DEFINE_CLEAR_SCREEN

end
