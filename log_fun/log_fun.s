# Function get four parameters:
#  we will be looking for number of bits and sum of indexes of bits with value one in the, the number to looking must be send in first parameter (we are counting bits from right to left),
# when second parameter is 2 we return multiplied indexes, if parameter is 1 then we return sum indexes, otherwise we must return 0,
#  we use third parameter to return value of first bit from the right which value is equal to one, return -1 means all bits are 0,
#  we use fourth parameter to return number of bits whose value is equal to one
	
	.text
	.type fun, @function
	.globl fun	

fun:	
	#Function arguments in: rdi, rsi, rdx, rcx
	#It is not allowed to change value of: rbp,rbx,r12,r13,r14,r15
	#Register r8 will be iterator for main loop from 0 to 64
	#In register r9 I will storage current value of my bit mask
	#My loop will be looking for first bit from right in %rdi value and proceed operations defined in function description

        #######################################################################
	
	#A need to check neutral value for sum or multiply in rax
	Push %rbx
	mov $0, %rax
        cmp $2, %rsi
        jne noMultiply
        mov $1, %rax
        
noMultiply:
	#Initialise values for my tmp registers
	movq $0, %r8
	movl $-1,(%rdx)
	movq $0, %rbx
	
checkNextBit:
	#Check first right bit's value
	movq $1, %r9
	and %rdi, %r9
	jz lastBitEqualZero
	
	#Check if last bit has been already set, if no we avoid changing r8
	cmp $-1, (%rdx)
	jne lastAlreadySet
	mov %r8,(%rdx)
	
lastAlreadySet:
	#First right bit is one, so I proceed increment number of ones
	inc %rbx
	
	#In case of value in second parametr, proceed multiply or sum
        cmp $2, %rsi
        jne trySum
        #multiply...
        je lastBitEqualZero
        
trySum:
        cmp $1, %rsi
        jne lastBitEqualZero
        #sum...
	
lastBitEqualZero:
	#Shrink right rdi, to get vaule of next bit on the left of actual first right, then increment iterator
	shr $1, %rdi
	inc %r8
	cmp $64, %r8
	jne checkNextBit
	
        #I need to rewrite number of ones to fourth parameter
        movl %ebx, (%rcx)
	Pop %rbx
	
	ret
	