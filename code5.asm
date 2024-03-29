; PROGRAM# 01
; Create a shape with pattern
.MODEL SMALL         
.STACK 100H          
.DATA                
.CODE                
MAIN PROC            
mov ah, 6            
mov al, 15             
mov bh,01000000b
mov ch, 2             
mov cl, 2
mov dh, 20
mov dl, 34
int 10h   
mov ah, 6            
mov al, 13           
mov bh,00010000b  
mov ch, 6             
mov cl, 5
mov dh, 19        
mov dl, 31
int 10h
mov ah, 6            
mov al, 11             
mov bh,01100000b
mov ch, 8             
mov cl, 7
mov dh, 18        
mov dl, 29
int 10h
mov ah, 4CH     
int 21h    
MAIN ENDP           
end main