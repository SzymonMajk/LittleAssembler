#----------------------------------------------------------------
# Assebmler version of max_diff for maxdiff program (64 bit)
#----------------------------------------------------------------

	.text
	.type max_indA, @function
	.globl max_indA	

max_indA:	

	#Kolejne argumenty w rejestrach rdi, rsi, rdx, rcx
	#Nie wolno zmienić zawartości rbp,rbx,r12,r13,r14,r15

	#W rax będę umieszczał adres największego, natomiast w r8 wartość aktualnego największego, jeżeli gdzieś powtórzy się zawartość z rax, wpisuję do rax 0 i kończę

	mov $1,%rax
	mov %rdi,%r8

	cmp %rsi,%rdi
	je rowne
	jg trzeci
	mov %rsi,%rdi
	mov $2,%rax	

trzeci:
	cmp %rdx,%rdi
	je rowne
	jg czwarty
	mov %rdx,%rdi
	mov $3,%rax

czwarty:
	cmp %rcx,%rdi
	je rowne
	jg koniec
	mov %rcx,%rdi
	mov $4, %rax
	jmp koniec
rowne:
	mov $0, %rax
koniec:

	ret

