#----------------------------------------------------------------
# Assebmler version of generate_string for maxdiff program (64 bit)
#----------------------------------------------------------------

	.text
	.type create_strA, @function
	.globl create_strA	

create_strA:	

	#Kolejne argumenty w rejestrach rdi, rsi, rdx, rcx
	#Nie wolno zmienić zawartości rbp,rbx,r12,r13,r14,r15

	#Przechodzimy pętlą, dodajemy raz z jednego raz z drugiego napisu, zwiększając odpowiednio wartości, dopóki drugi z argumentów nie będzie równy 0, (zakładamy że trzeci argument nie może być krótszy niż drugi), po wszystkim pamiętamy, aby dodać znak końca do napisu, aha, no i oczywiście zapisujemy w %rax początek pierwszego argumentu na początku

	mov %rdi,%rax
	push %rdi

next:
	mov (%rsi),%rcx
	mov %rcx, (%rdi)
	inc %rsi
	inc %rdi

	mov (%rdx),%rcx
	mov %rcx, (%rdi)
	inc %rdx
	inc %rdi

	cmp $0, (%rsi)
	jne next

	movb $0, (%rdi)

	pop %rax
	ret

