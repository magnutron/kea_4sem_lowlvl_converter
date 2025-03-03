	.file	"converter.c"
	.text
	.globl	kelvin_to_fahrenheit
	.def	kelvin_to_fahrenheit;	.scl	2;	.type	32;	.endef
	.seh_proc	kelvin_to_fahrenheit
kelvin_to_fahrenheit:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	kelvin_to_celsius
	.def	kelvin_to_celsius;	.scl	2;	.type	32;	.endef
	.seh_proc	kelvin_to_celsius
kelvin_to_celsius:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	fahrenheit_to_kelvin
	.def	fahrenheit_to_kelvin;	.scl	2;	.type	32;	.endef
	.seh_proc	fahrenheit_to_kelvin
fahrenheit_to_kelvin:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	leal	-32(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	subl	%eax, %edx
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	fahrenheit_to_celsius
	.def	fahrenheit_to_celsius;	.scl	2;	.type	32;	.endef
	.seh_proc	fahrenheit_to_celsius
fahrenheit_to_celsius:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	leal	-32(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$954437177, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	celsius_to_kelvin
	.def	celsius_to_kelvin;	.scl	2;	.type	32;	.endef
	.seh_proc	celsius_to_kelvin
celsius_to_kelvin:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	16(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	celsius_to_fahrenheit
	.def	celsius_to_fahrenheit;	.scl	2;	.type	32;	.endef
	.seh_proc	celsius_to_fahrenheit
celsius_to_fahrenheit:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	32(%rdx), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "_________________________________________________________\0"
	.align 8
.LC5:
	.ascii "Please select an option from the menu below\0"
	.align 8
.LC6:
	.ascii "1. Convert from Celsius to Fahrenheit\0"
	.align 8
.LC7:
	.ascii "2. Convert from Fahrenheit to Celsius\0"
	.align 8
.LC8:
	.ascii "3. Convert from Celsius to Kelvin\0"
	.align 8
.LC9:
	.ascii "4. Convert from Kelvin to Celsius\0"
	.align 8
.LC10:
	.ascii "5. Convert from Fahrenheit to Kelvin\0"
	.align 8
.LC11:
	.ascii "6. Convert from Kelvin to Fahrenheit\0"
.LC12:
	.ascii "7. Return to main menu\0"
.LC13:
	.ascii "%d\0"
	.align 8
.LC14:
	.ascii "Enter the temperature in Celsius\0"
	.align 8
.LC15:
	.ascii "The temperature in Fahrenheit is %d\12\0"
	.align 8
.LC16:
	.ascii "Enter the temperature in Fahrenheit\0"
	.align 8
.LC17:
	.ascii "The temperature in Celsius is %d\12\0"
	.align 8
.LC18:
	.ascii "The temperature in Kelvin is %d\12\0"
	.align 8
.LC19:
	.ascii "Enter the temperature in Kelvin\0"
.LC20:
	.ascii "\33[1;1H\33[2J\0"
	.text
	.globl	display_temperature_menu
	.def	display_temperature_menu;	.scl	2;	.type	32;	.endef
	.seh_proc	display_temperature_menu
display_temperature_menu:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	ja	.L23
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L16(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L16(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L16:
	.long	.L23-.L16
	.long	.L22-.L16
	.long	.L21-.L16
	.long	.L20-.L16
	.long	.L19-.L16
	.long	.L18-.L16
	.long	.L17-.L16
	.long	.L15-.L16
	.text
.L22:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	celsius_to_fahrenheit
	movl	%eax, %edx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_temperature_menu
.L21:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	fahrenheit_to_celsius
	movl	%eax, %edx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_temperature_menu
.L20:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	celsius_to_kelvin
	movl	%eax, %edx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_temperature_menu
.L19:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	kelvin_to_celsius
	movl	%eax, %edx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_temperature_menu
.L18:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	fahrenheit_to_kelvin
	movl	%eax, %edx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_temperature_menu
.L17:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	kelvin_to_fahrenheit
	movl	%eax, %edx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_temperature_menu
.L15:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	display_menu
.L23:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	kilograms_to_ounces
	.def	kilograms_to_ounces;	.scl	2;	.type	32;	.endef
	.seh_proc	kilograms_to_ounces
kilograms_to_ounces:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	movsd	.LC21(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	kilograms_to_pounds
	.def	kilograms_to_pounds;	.scl	2;	.type	32;	.endef
	.seh_proc	kilograms_to_pounds
kilograms_to_pounds:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	movsd	.LC22(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	ounces_to_kilograms
	.def	ounces_to_kilograms;	.scl	2;	.type	32;	.endef
	.seh_proc	ounces_to_kilograms
ounces_to_kilograms:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	16(%rbp), %xmm0
	movsd	.LC21(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	ounces_to_pounds
	.def	ounces_to_pounds;	.scl	2;	.type	32;	.endef
	.seh_proc	ounces_to_pounds
ounces_to_pounds:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	16(%rbp), %xmm0
	movss	.LC23(%rip), %xmm1
	divss	%xmm1, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	pounds_to_kilograms
	.def	pounds_to_kilograms;	.scl	2;	.type	32;	.endef
	.seh_proc	pounds_to_kilograms
pounds_to_kilograms:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	movsd	.LC24(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	pounds_to_ounces
	.def	pounds_to_ounces;	.scl	2;	.type	32;	.endef
	.seh_proc	pounds_to_ounces
pounds_to_ounces:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	16(%rbp), %xmm1
	movss	.LC23(%rip), %xmm0
	mulss	%xmm1, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "1. Convert from Kilograms to Pounds\0"
	.align 8
.LC26:
	.ascii "2. Convert from Kilograms to Ounces\0"
	.align 8
.LC27:
	.ascii "3. Convert from Pounds to Kilograms\0"
	.align 8
.LC28:
	.ascii "4. Convert from Pounds to Ounces\0"
	.align 8
.LC29:
	.ascii "5. Convert from Ounces to Kilograms\0"
	.align 8
.LC30:
	.ascii "6. Convert from Ounces to Pounds\0"
.LC31:
	.ascii "Enter the weight in Kilograms\0"
.LC32:
	.ascii "%f\0"
.LC33:
	.ascii "The weight in Pounds is %.2f\12\0"
.LC34:
	.ascii "The weight in Ounces is %.2f\12\0"
.LC35:
	.ascii "Enter the weight in Pounds\0"
	.align 8
.LC36:
	.ascii "The weight in Kilograms is %.2f\12\0"
.LC37:
	.ascii "Enter the weight in Ounces\0"
	.text
	.globl	display_weight_menu
	.def	display_weight_menu;	.scl	2;	.type	32;	.endef
	.seh_proc	display_weight_menu
display_weight_menu:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC27(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC29(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	ja	.L47
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L39(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L39(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L39:
	.long	.L47-.L39
	.long	.L45-.L39
	.long	.L44-.L39
	.long	.L43-.L39
	.long	.L42-.L39
	.long	.L41-.L39
	.long	.L40-.L39
	.long	.L38-.L39
	.text
.L45:
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-8(%rbp), %eax
	movd	%eax, %xmm0
	call	kilograms_to_pounds
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_weight_menu
	jmp	.L37
.L44:
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-8(%rbp), %eax
	movd	%eax, %xmm0
	call	kilograms_to_ounces
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_weight_menu
	jmp	.L37
.L43:
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	pounds_to_kilograms
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_weight_menu
	jmp	.L37
.L42:
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	pounds_to_ounces
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_weight_menu
	jmp	.L37
.L41:
	leaq	.LC37(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-16(%rbp), %eax
	movd	%eax, %xmm0
	call	ounces_to_kilograms
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_weight_menu
	jmp	.L37
.L40:
	leaq	.LC37(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-16(%rbp), %eax
	movd	%eax, %xmm0
	call	ounces_to_pounds
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	display_weight_menu
	jmp	.L37
.L38:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	display_menu
	jmp	.L47
.L37:
.L47:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC38:
	.ascii "1. Convert from Kilometers -> Miles\0"
	.align 8
.LC39:
	.ascii "2. Convert from Miles -> Kilometers\0"
	.align 8
.LC40:
	.ascii "3. Convert from Kilometers -> Schoinion\0"
	.align 8
.LC41:
	.ascii "4. Convert from Schoinion -> Kilometers\0"
	.align 8
.LC42:
	.ascii "5. Convert from Miles -> Schoinion\0"
	.align 8
.LC43:
	.ascii "6. Convert from Schoinion -> Miles\0"
	.text
	.globl	display_distance_menu
	.def	display_distance_menu;	.scl	2;	.type	32;	.endef
	.seh_proc	display_distance_menu
display_distance_menu:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC38(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC39(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC40(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC41(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC42(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC43(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	cmpl	$6, %eax
	ja	.L58
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L51(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L51(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L51:
	.long	.L58-.L51
	.long	.L56-.L51
	.long	.L55-.L51
	.long	.L54-.L51
	.long	.L53-.L51
	.long	.L52-.L51
	.long	.L50-.L51
	.text
.L56:
	call	kilometers_to_miles
	jmp	.L57
.L55:
	call	miles_to_kilometers
	jmp	.L57
.L54:
	call	kilometers_to_schoinion
	jmp	.L57
.L53:
	call	schoinion_to_kilometers
	jmp	.L57
.L52:
	call	miles_to_schoinion
	jmp	.L57
.L50:
	call	schoinion_to_miles
	jmp	.L57
.L58:
	nop
.L57:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC44:
	.ascii "Enter the distance in Kilometers\0"
	.align 8
.LC46:
	.ascii "The distance in miles is: %.2f\12\0"
	.text
	.globl	kilometers_to_miles
	.def	kilometers_to_miles;	.scl	2;	.type	32;	.endef
	.seh_proc	kilometers_to_miles
kilometers_to_miles:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC44(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movss	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC45(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC47:
	.ascii "Enter the distance in Miles\0"
	.align 8
.LC48:
	.ascii "The distance in kilometers is: %.2f\12\0"
	.text
	.globl	miles_to_kilometers
	.def	miles_to_kilometers;	.scl	2;	.type	32;	.endef
	.seh_proc	miles_to_kilometers
miles_to_kilometers:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC45(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC48(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC50:
	.ascii "The distance in Schoinion is: %.2f\12\0"
	.text
	.globl	kilometers_to_schoinion
	.def	kilometers_to_schoinion;	.scl	2;	.type	32;	.endef
	.seh_proc	kilometers_to_schoinion
kilometers_to_schoinion:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC44(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movss	-8(%rbp), %xmm0
	movss	.LC49(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC50(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC51:
	.ascii "Enter the distance in Schoinion\0"
	.text
	.globl	schoinion_to_kilometers
	.def	schoinion_to_kilometers;	.scl	2;	.type	32;	.endef
	.seh_proc	schoinion_to_kilometers
schoinion_to_kilometers:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC51(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movss	-8(%rbp), %xmm1
	movss	.LC49(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC48(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	miles_to_schoinion
	.def	miles_to_schoinion;	.scl	2;	.type	32;	.endef
	.seh_proc	miles_to_schoinion
miles_to_schoinion:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movss	-8(%rbp), %xmm1
	movss	.LC52(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC50(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	schoinion_to_miles
	.def	schoinion_to_miles;	.scl	2;	.type	32;	.endef
	.seh_proc	schoinion_to_miles
schoinion_to_miles:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC51(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movss	-8(%rbp), %xmm0
	movss	.LC52(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC53:
	.ascii "1. Convert temperatures\0"
.LC54:
	.ascii "2. Convert distances\0"
.LC55:
	.ascii "3. Convert weights\0"
.LC56:
	.ascii "5. Exit\0"
	.text
	.globl	display_menu
	.def	display_menu;	.scl	2;	.type	32;	.endef
	.seh_proc	display_menu
display_menu:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC54(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC55(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC56(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	je	.L66
	cmpl	$5, %eax
	jg	.L72
	cmpl	$3, %eax
	je	.L68
	cmpl	$3, %eax
	jg	.L72
	cmpl	$1, %eax
	je	.L69
	cmpl	$2, %eax
	je	.L70
	jmp	.L72
.L69:
	call	display_temperature_menu
	jmp	.L71
.L70:
	call	display_distance_menu
	jmp	.L71
.L68:
	call	display_weight_menu
	jmp	.L71
.L66:
	movl	$0, %ecx
	call	exit
.L72:
	nop
.L71:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC57:
	.ascii "          |\0"
.LC58:
	.ascii "        --+--\0"
.LC59:
	.ascii "    /  \\  |\0"
.LC60:
	.ascii "   |    | |\0"
.LC61:
	.ascii "   \\____/ |\0"
.LC62:
	.ascii "   ( .. ) |\0"
.LC63:
	.ascii "   /\\__/\\ |      WOLOLOOOO\0"
.LC64:
	.ascii "  /\\ qp /\\|\0"
.LC65:
	.ascii " /  |  |  |\0"
.LC66:
	.ascii "/|  |db| /\\`|\0"
.LC67:
	.ascii "| \\ |  | \\|_|\0"
.LC68:
	.ascii "\\  \\|qp|  |\0"
.LC69:
	.ascii " \\__/  |  |\0"
.LC70:
	.ascii " |/||db|  |\0"
.LC71:
	.ascii " |  |  |  |\0"
.LC72:
	.ascii "-=Welcome to the CONVERTER!=-\0"
	.align 8
.LC73:
	.ascii "This program helps with converting different units\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	leaq	.LC57(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC58(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC59(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC60(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC61(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC62(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC63(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC64(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC65(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC66(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC67(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC68(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC69(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC70(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC71(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC72(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC73(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	display_menu
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	1717986918
	.long	1081152102
	.align 8
.LC1:
	.long	0
	.long	1075970048
	.align 8
.LC2:
	.long	0
	.long	1075052544
	.align 8
.LC3:
	.long	0
	.long	1077936128
	.align 8
.LC21:
	.long	1855425872
	.long	1078043410
	.align 8
.LC22:
	.long	-813638605
	.long	1073849103
	.align 4
.LC23:
	.long	1098907648
	.align 8
.LC24:
	.long	-1116828936
	.long	1071450022
	.align 8
.LC45:
	.long	1869994401
	.long	1071899205
	.align 4
.LC49:
	.long	1094713344
	.align 4
.LC52:
	.long	1168441344
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
