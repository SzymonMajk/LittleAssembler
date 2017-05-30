#----------------------------------------------------------------
# Assebmler version of max_diff for maxdiff program, i386 (32 bit)
#----------------------------------------------------------------

	.text
	.type max_diffA, @function
	.globl max_diffA	

max_diffA:	

#prolog funkcji
	push %ebp
	mov %esp,%ebp

#miejsce dla dwóch zmiennych lokalnych
	# min -4(%ebp)
	# max -8(%ebp)
	sub $8, %esp


#otrzymujemy cztery zmienne, więc ich kolejne adresy to 4(%ebp), 8(%ebp), 12(%ebp), 16(%ebp)

#przypisuje pierwsza zmienna jako najwieksza i najmniejsza, jeżeli trzeba pozostałe zmienią te wyniki
	mov 4(%ebp), %eax
	mov %eax, -4(%ebp)
	mov %eax, -8(%ebp)

#sprawdzam w pętli każdy z arguntów czy mniejszy od najmniejszego albo czy wiekszy od najwiekszego
	movl $3, %ecx

next:
	# część odpowiedzialna za sprawdzanie wartości
	dec %ecx
	cmp $0, %ecx
	jnz next

#odejmuje wartosc najwieksza od najmniejszej i wynik w %eax

	mov -8(%ebp), %eax
	sub -4(%ebp), %eax

#trailer funkcji
	mov %ebp,%esp
	pop %ebp
	ret

