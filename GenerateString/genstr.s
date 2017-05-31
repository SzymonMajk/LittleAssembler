#----------------------------------------------------------------
# Assebmler version of generate_string for maxdiff program (64 bit)
#----------------------------------------------------------------

	.text
	.type generate_strA, @function
	.globl generate_strA	

generate_strA:	

	#Kolejne argumenty w rejestrach rdi, rsi, rdx, rcx
	#Nie wolno zmienić zawartości rbp,rbx,r12,r13,r14,r15

	#Najpierw zapisujemy w rax pierwszego argumentu, aby zapamiętać gdzie zaczynał się ciąg znaków, następnie w pętli wykonującej się liczbę razy podaną w trzecim argumencie wyłuskujemy kolejne pozycje znaków, gdzie zmieniamy argument, na kolejny lub ustalony w drugim argumencie w zależności od czwartego argumentu

	mov %rdi,%rax
next:
	mov %rsi,(%rdi)
	inc %rdi
	dec %rdx

	cmp $0, %rcx
	je notchange
	inc %rsi

notchange:
	cmp $0, %rdx
	jne next

	movb $0, (%rdi)

	ret

