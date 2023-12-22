include 'emu8086.inc'
org 100h

call scan_num
lea SI, powers2


mov AX, CX
div base10
mov CL, AL
jpe even
jpo odd 


even:
mov DL, 0

odd:
mov DL, 1

buildNumber:
mov AH, 0
mov AL, CL
div base10
mov CL, AL
cmp AH, 0
je nextDigit
add DL, [SI]
inc SI
cmp CL, 0
jne buildNumber

nextDigit:
inc SI   
cmp CL, 0
jne buildNumber

mov AH, 0
mov AL, DL  

call clear_screen
call print_num


 





        
ret
    
powers2 db 2, 4, 8, 16, 32, 64, 128
base10 db 10
    
define_print_num_uns
define_print_num
define_clear_screen
define_scan_num 
                   
end