#----------------------------------------------------------------
# Assebmler version of max_diff for maxdiff program (64 bit)
#----------------------------------------------------------------

	.text
	.type max_diffA, @function
	.globl max_diffA	

max_diffA:	

	#Kolejne argumenty w rejestrach rdi, rsi, rdx, rcx
	#Nie wolno zmienić zawartości rbp,rbx,r12,r13,r14,r15

	#Najpierw sprawdzam wzajemną relację dwóch pierwszy argumentów, jeden z nich będzie przechowywał wartość najmniejszą, a drugi największą, następnie osobno każdy z nich porównam z pozostałymi argumentami, na końcu odejmę zawartość największą od najmniejszej

	#W rejestrze docelowo rdi będzie znajdowała się wartość największa

	cmp %rdi,%rsi
	jbe pierwszywiekszy

	Push %rbp
	mov %rsi,%rbp
	mov %rdi,%rsi
	mov %rbp,%rdi
	Pop %rbp

pierwszywiekszy:

	#W tym momencie w %rdi znajduje się największa wartość spośród dwóch pierwszych argumentów, natomiast w %rsi najmniejsza

	#Szukanie najwiekszej

	cmp %rdi,%rdx
	jbe trzecimniejszy
	mov %rdx,%rdi

trzecimniejszy:
	cmp %rdi,%rcx
	jbe czwartymniejszy
	mov %rcx, %rdi

czwartymniejszy:

	#Analogiczne szukanie najmniejszej

	cmp %rsi,%rdx
	jge trzeciwiekszy
	mov %rdx,%rsi

trzeciwiekszy:
	cmp %rsi,%rcx
	jge czwartywiekszy
	mov %rcx, %rsi

czwartywiekszy:

	#Odejmuję największy od najmniejszego i mam maxdiff

	sub %rsi, %rdi
	mov %rdi, %rax

	ret

