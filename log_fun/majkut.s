# Szymon Majkut
# Efekty: 
#----------------------------------------------------------------

	.text
	.type fun, @function
	.globl fun	

fun:	

	#Kolejne argumenty w rejestrach rdi, rsi, rdx, rcx
	#Nie wolno zmienić zawartości rbp,rbx,r12,r13,r14,r15

	#W %r8 przechowam indeks ostatniego bitu, który ma jedynkę
	#W %r9 przechowam sume bitów równych jeden
	#Rejestr %r10 będzie iteratorem
	
	#Wykonuję pętlę, która będzie sprawdzała pierwszy bit rejestru %rdi
	#jeżeli w zależności czy było tam zero czy jedynka wykonuję jakąś operację
	
	movq $64, %r10
next:
	mov %r10, %rax
	
	#W tym miejscu sprawdzam pierwszy bit i wykonuję odpowiednią operację
	
	dec %r10
	cmp $0, %r10
	jne next
	
	movq $10, %r8
	movq %r8, (%rdx)
	
	movq $20, %r8
	movq %r8, (%rcx)
	
	#mov $0, %rax

	ret

