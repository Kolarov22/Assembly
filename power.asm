include 'emu8086.inc'
org 100h 

mov CX, n
mov AX, 1

power:
mul m

loop power

call print_num




ret      

lowercase DB ? 

m DW 2
n DW 10

;DEFINE_GET_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
;DEFINE_PRINT_STRING 
;DEFINE_CLEAR_SCREEN

end
