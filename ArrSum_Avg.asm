include 'emu8086.inc'
org 100h      

mov CX, n
lea SI, x
lea DI, y 

addArrays:

mov AL, [SI]
add [DI], AL 
inc SI
inc DI

loop addArrays 

mov CX, n 
mov AX, 0 
sub DI, n
        
        
mov AX, 0        
getSum:
add AX, [DI]
inc DI   

loop getSum

div n
mov AH, 0 



call print_num
              
mov dl, 1              
gotoxy 0, dl

mov CX, n
sub DI, n

printArray:
mov AH, 0
mov AL, [DI] 
call print_num  
call pthis
DB 13, 10, '', 0
inc DI


loop printArray





ret
   
x DB 5, 3, 2, 10, 6
y DB 10, 2, 5, 2, 10
n DW 5

DEFINE_PTHIS
DEFINE_PRINT_NUM   
DEFINE_PRINT_NUM_UNS

end


