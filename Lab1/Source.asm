title Lab1
INCLUDE Irvine32.inc
	p EQU 8d 
.data
	x SDWORD 16d
	y SDWORD 154d
	z SDWORD -17d
	w SDWORD ?

.code

main PROC
	; w=(x+z) -(50+x+y+z-p)

	MOV eax,x ; eax=x
	ADD eax,y ; eax=x+y

	MOV ebx,50d ; ebx=50
	ADD ebx,eax ; ebx=50+x+y
	ADD ebx,z	; ebx=50+x+y+z
	SUB ebx,p	; ebx=50+x+y+z-p
	SUB eax,ebx ;
	MOV w,eax   
	call WriteInt 



	exit
main ENDP

END main