include 'emu8086.inc'
org 100h

mov AX, 1
mov BX, 1
mov CX, terms

fibo:  
 call print_num 
 call pthis
 DB 13, 10, '', 0
 mov DX, BX
 add BX, AX
 mov AX, DX 
 

loop fibo
 

 



ret    

terms dw 7

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_pthis




