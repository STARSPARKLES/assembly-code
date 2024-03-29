;PROGRAM #  02
;Check input number is greater or not to the imitated number in code
.model small
.stack 100h
.data
result1 db 'GREATER THAN$'
result2 db 'LESS THAN$'
.code
main proc
mov ax, @data
mov ds, ax
mov ah, 1
int 21h
mov dl, al
sub dl, 48
mov bl, 3
cmp dl, bl
jl less
mov dx, 10
mov ah, 2
int 21h
mov dx, 13
mov ah, 2
int 21h
mov dx, offset result1
mov ah, 9
int 21h
mov ah, 4ch
int 21h
less:
mov dx, 10
mov ah, 2
int 21h
mov dx, 13
mov ah, 2
int 21h
mov dx, offset result2
mov ah, 9
int 21h
mov ah, 4ch
int 21h
main endp
end main
