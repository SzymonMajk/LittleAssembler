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
	
	#na później Push %rdi
	movq $0, %r10
	movq $0, %r8
	movq $0, %r9
next:
	mov %r10, %rax
	
	#W tym miejscu sprawdzam pierwszy bit i wykonuję odpowiednią operację
	
	#Sprawdzam pierwszy bit od prawej jest równy 1
	and $1, %rdi
	jz gotzero
	
	#Teraz wiem że to była jedynka
	#Musze sprawdzić czy przypadkiem już nie przypisywałem %r8
	cmp $0, %r8
	je ostatnijuz
	mov %r10,%r8
	
ostatnijuz:
	#Teraz skoro była jedynka to jeszcze zwiększam ilość znalezionych jedynek
	add $1, %r9
	
gotzero:
	#Teraz gdy nastąpił odpowiedni efekt w związku z pierwszym bitem, przesuwam rejestr rdi
	#w prawo o jeden, żeby sprawdzić drugi bit i dekrementuję iterator
	shr $1, %rdi
	inc %r10
	cmp $64, %r10
	jne next
	
	#Koniec pętli, w tym momencie w rejestrze %r8 powinien znaleźć się indeks ostatniego bitu
	#natomiast r rejestrze %r9, suma ilości bitów które były jedynkami
	
	movq %r8, (%rdx)
	movq %r9, (%rcx)
	
	#tutaj do testu
	mov %r9, %rax

	ret

