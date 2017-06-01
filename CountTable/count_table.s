#----------------------------------------------------------------
# Assebmler version of max_diff for maxdiff program (64 bit)
#----------------------------------------------------------------

	.text
	.type count_tableA, @function
	.globl count_tableA	

count_tableA:	

	#Kolejne argumenty w rejestrach rdi, rsi, rdx, rcx
	#Nie wolno zmienić zawartości rbp,rbx,r12,r13,r14,r15

	#Przejeżdzam pętlą po tablicy, której adres pierwszego elementu dostaję w pierwszym argumencie, tyle obiegów ile wartość drugiego argumentu
	xor %rax,%rax
	
next:
	#coś robić
	mov (%rdi),%eax
	add $4, %rdi
	dec %rsi
	cmp $0, %rsi
	jne next



	ret

