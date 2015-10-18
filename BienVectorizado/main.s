	.file	"main.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	__powidf2
	.section	.text._ZSt3powdi,"axG",@progbits,_ZSt3powdi,comdat
	.weak	_ZSt3powdi
	.type	_ZSt3powdi, @function
_ZSt3powdi:
.LFB1289:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	__powidf2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1289:
	.size	_ZSt3powdi, .-_ZSt3powdi
	.text
	.globl	_Z21calcularMapeoInversoYii
	.type	_Z21calcularMapeoInversoYii, @function
_Z21calcularMapeoInversoYii:
.LFB1320:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -60(%ebp)
	fildl	-60(%ebp)
	fstpl	-48(%ebp)
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	fildl	-60(%ebp)
	fstpl	-40(%ebp)
	fildl	8(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fldl	.LC2
	fsubp	%st, %st(1)
	fstpl	-32(%ebp)
	fildl	12(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fldl	.LC2
	fsubp	%st, %st(1)
	fstpl	-24(%ebp)
	movl	$2, 8(%esp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_ZSt3powdi
	fstpl	-72(%ebp)
	movl	$2, 8(%esp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	_ZSt3powdi
	faddl	-72(%ebp)
	fstpl	-16(%ebp)
	fldl	-40(%ebp)
	fmull	-32(%ebp)
	fldl	-48(%ebp)
	fmull	-24(%ebp)
	fsubrp	%st, %st(1)
	fdivl	-16(%ebp)
	fnstcw	-62(%ebp)
	movzwl	-62(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -64(%ebp)
	fldcw	-64(%ebp)
	fistpl	-60(%ebp)
	fldcw	-62(%ebp)
	movl	-60(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1320:
	.size	_Z21calcularMapeoInversoYii, .-_Z21calcularMapeoInversoYii
	.globl	_Z21calcularMapeoInversoXii
	.type	_Z21calcularMapeoInversoXii, @function
_Z21calcularMapeoInversoXii:
.LFB1321:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -60(%ebp)
	fildl	-60(%ebp)
	fstpl	-48(%ebp)
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	fildl	-60(%ebp)
	fstpl	-40(%ebp)
	fildl	8(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fldl	.LC2
	fsubp	%st, %st(1)
	fstpl	-32(%ebp)
	fildl	12(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fldl	.LC2
	fsubp	%st, %st(1)
	fstpl	-24(%ebp)
	movl	$2, 8(%esp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_ZSt3powdi
	fstpl	-72(%ebp)
	movl	$2, 8(%esp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	_ZSt3powdi
	faddl	-72(%ebp)
	fstpl	-16(%ebp)
	fldl	-48(%ebp)
	fmull	-32(%ebp)
	fldl	-40(%ebp)
	fmull	-24(%ebp)
	faddp	%st, %st(1)
	fdivl	-16(%ebp)
	fnstcw	-62(%ebp)
	movzwl	-62(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -64(%ebp)
	fldcw	-64(%ebp)
	fistpl	-60(%ebp)
	fldcw	-62(%ebp)
	movl	-60(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1321:
	.size	_Z21calcularMapeoInversoXii, .-_Z21calcularMapeoInversoXii
	.globl	_Z14calcularMapeoXii
	.type	_Z14calcularMapeoXii, @function
_Z14calcularMapeoXii:
.LFB1322:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	fildl	8(%ebp)
	fldl	.LC2
	fmulp	%st, %st(1)
	fildl	12(%ebp)
	fldl	.LC2
	fmulp	%st, %st(1)
	fsubrp	%st, %st(1)
	fstpl	-48(%ebp)
	fildl	8(%ebp)
	fldl	.LC2
	fmulp	%st, %st(1)
	fildl	12(%ebp)
	fldl	.LC2
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	-40(%ebp)
	fildl	8(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	fstpl	-32(%ebp)
	fildl	12(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	fstpl	-24(%ebp)
	fildl	8(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	movl	$2, 8(%esp)
	fstpl	(%esp)
	call	_ZSt3powdi
	fstpl	-72(%ebp)
	fildl	12(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	movl	$2, 8(%esp)
	fstpl	(%esp)
	call	_ZSt3powdi
	faddl	-72(%ebp)
	fstpl	-16(%ebp)
	fldl	-48(%ebp)
	fmull	-32(%ebp)
	fldl	-40(%ebp)
	fmull	-24(%ebp)
	faddp	%st, %st(1)
	fdivl	-16(%ebp)
	fnstcw	-58(%ebp)
	movzwl	-58(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -60(%ebp)
	fldcw	-60(%ebp)
	fistpl	-64(%ebp)
	fldcw	-58(%ebp)
	movl	-64(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1322:
	.size	_Z14calcularMapeoXii, .-_Z14calcularMapeoXii
	.globl	_Z14calcularMapeoYii
	.type	_Z14calcularMapeoYii, @function
_Z14calcularMapeoYii:
.LFB1323:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$88, %esp
	fildl	8(%ebp)
	fldl	.LC2
	fmulp	%st, %st(1)
	fildl	12(%ebp)
	fldl	.LC2
	fmulp	%st, %st(1)
	fsubrp	%st, %st(1)
	fstpl	-48(%ebp)
	fildl	8(%ebp)
	fldl	.LC2
	fmulp	%st, %st(1)
	fildl	12(%ebp)
	fldl	.LC2
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	-40(%ebp)
	fildl	8(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	fstpl	-32(%ebp)
	fildl	12(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	fstpl	-24(%ebp)
	fildl	8(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	movl	$2, 8(%esp)
	fstpl	(%esp)
	call	_ZSt3powdi
	fstpl	-72(%ebp)
	fildl	12(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	movl	$2, 8(%esp)
	fstpl	(%esp)
	call	_ZSt3powdi
	faddl	-72(%ebp)
	fstpl	-16(%ebp)
	fldl	-48(%ebp)
	fchs
	fmull	-24(%ebp)
	fldl	-40(%ebp)
	fmull	-32(%ebp)
	faddp	%st, %st(1)
	fdivl	-16(%ebp)
	fnstcw	-58(%ebp)
	movzwl	-58(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -60(%ebp)
	fldcw	-60(%ebp)
	fistpl	-64(%ebp)
	fldcw	-58(%ebp)
	movl	-64(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1323:
	.size	_Z14calcularMapeoYii, .-_Z14calcularMapeoYii
	.globl	_Z6smoothPPPiiii
	.type	_Z6smoothPPPiiii, @function
_Z6smoothPPPiiii:
.LFB1324:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	12(%ebp), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	addl	$1, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	%eax, %ecx
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	addl	$1073741823, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	%ecx, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1324:
	.size	_Z6smoothPPPiiii, .-_Z6smoothPPPiiii
	.globl	_Z10suavizado2PPPiiiiiii
	.type	_Z10suavizado2PPPiiiiiii, @function
_Z10suavizado2PPPiiiiiii:
.LFB1325:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	cmpl	$0, 16(%ebp)
	je	.L14
	movl	16(%ebp), %eax
	jmp	.L15
.L14:
	movl	$1, %eax
.L15:
	movl	%eax, 16(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L16
	movl	12(%ebp), %eax
	jmp	.L17
.L16:
	movl	$1, %eax
.L17:
	movl	%eax, 12(%ebp)
	movl	24(%ebp), %eax
	subl	$1, %eax
	cmpl	16(%ebp), %eax
	jne	.L18
	movl	24(%ebp), %eax
	subl	$2, %eax
	jmp	.L19
.L18:
	movl	16(%ebp), %eax
.L19:
	movl	%eax, 16(%ebp)
	movl	28(%ebp), %eax
	subl	$1, %eax
	cmpl	12(%ebp), %eax
	jne	.L20
	movl	28(%ebp), %eax
	subl	$2, %eax
	jmp	.L21
.L20:
	movl	12(%ebp), %eax
.L21:
	movl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	addl	$1, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	%eax, %ecx
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	addl	$1073741823, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	%ecx, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L22
	movl	-8(%ebp), %eax
	sarl	$2, %eax
	jmp	.L23
.L22:
	movl	-4(%ebp), %eax
.L23:
	movl	%eax, -8(%ebp)
	cmpl	$1, 32(%ebp)
	je	.L24
	movl	-8(%ebp), %eax
	jmp	.L25
.L24:
	movl	$0, %eax
.L25:
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1325:
	.size	_Z10suavizado2PPPiiiiiii, .-_Z10suavizado2PPPiiiiiii
	.globl	_Z13calcularMapeoPPPiS1_iii
	.type	_Z13calcularMapeoPPPiS1_iii, @function
_Z13calcularMapeoPPPiS1_iii:
.LFB1326:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$104, %esp
	movl	$0, (%esp)
	call	omp_set_dynamic
	movl	$0, -72(%ebp)
	jmp	.L28
.L41:
	movl	$0, -68(%ebp)
	jmp	.L29
.L40:
	movl	$1, %eax
	subl	20(%ebp), %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -76(%ebp)
	fildl	-76(%ebp)
	fstpl	-48(%ebp)
	movl	20(%ebp), %eax
	subl	$1, %eax
	subl	-68(%ebp), %eax
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -76(%ebp)
	fildl	-76(%ebp)
	fstpl	-40(%ebp)
	fildl	-72(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fldl	.LC2
	fsubp	%st, %st(1)
	fstpl	-32(%ebp)
	movl	20(%ebp), %eax
	subl	$1, %eax
	subl	-68(%ebp), %eax
	movl	%eax, -76(%ebp)
	fildl	-76(%ebp)
	fldl	.LC1
	fmulp	%st, %st(1)
	fldl	.LC2
	fsubp	%st, %st(1)
	fstpl	-24(%ebp)
	movl	$2, 8(%esp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_ZSt3powdi
	fstpl	-88(%ebp)
	movl	$2, 8(%esp)
	fldl	-24(%ebp)
	fstpl	(%esp)
	call	_ZSt3powdi
	faddl	-88(%ebp)
	fstpl	-16(%ebp)
	fldl	-48(%ebp)
	fmull	-32(%ebp)
	fldl	-40(%ebp)
	fmull	-24(%ebp)
	faddp	%st, %st(1)
	fdivl	-16(%ebp)
	fnstcw	-78(%ebp)
	movzwl	-78(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -80(%ebp)
	fldcw	-80(%ebp)
	fistpl	-60(%ebp)
	fldcw	-78(%ebp)
	fldl	-40(%ebp)
	fmull	-32(%ebp)
	fldl	-48(%ebp)
	fmull	-24(%ebp)
	fsubrp	%st, %st(1)
	fdivl	-16(%ebp)
	fldcw	-80(%ebp)
	fistpl	-56(%ebp)
	fldcw	-78(%ebp)
	movl	$0, %eax
	cmpl	$0, -56(%ebp)
	cmovns	-56(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$0, %eax
	cmpl	$0, -60(%ebp)
	cmovns	-60(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-56(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	.L30
	movl	-56(%ebp), %eax
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	movl	%eax, -56(%ebp)
	movl	-60(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	.L32
	movl	-60(%ebp), %eax
	jmp	.L33
.L32:
	movl	$0, %eax
.L33:
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L34
	movl	-56(%ebp), %eax
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L36
	movl	-60(%ebp), %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	movl	%eax, -60(%ebp)
	movl	$0, -64(%ebp)
	jmp	.L38
.L39:
	movl	-60(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	subl	$1, %edx
	subl	-56(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-68(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-64(%ebp), %edx
	sall	$2, %edx
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -64(%ebp)
.L38:
	movl	-64(%ebp), %eax
	cmpl	24(%ebp), %eax
	jl	.L39
	addl	$1, -68(%ebp)
.L29:
	movl	-68(%ebp), %eax
	cmpl	20(%ebp), %eax
	jl	.L40
	addl	$1, -72(%ebp)
.L28:
	movl	-72(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L41
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1326:
	.size	_Z13calcularMapeoPPPiS1_iii, .-_Z13calcularMapeoPPPiS1_iii
	.globl	_Z9suavizadoPPPiS1_iii
	.type	_Z9suavizadoPPPiS1_iii, @function
_Z9suavizadoPPPiS1_iii:
.LFB1327:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	$1, -20(%ebp)
	jmp	.L43
.L50:
	movl	$1, -16(%ebp)
	jmp	.L44
.L49:
	movl	$0, -12(%ebp)
	jmp	.L45
.L48:
	movl	-20(%ebp), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %ecx
	sall	$2, %ecx
	addl	%ecx, %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %ecx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	addl	$1, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	%eax, %ecx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	addl	$1073741823, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	%ecx, %eax
	movl	%eax, -8(%ebp)
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L46
	movl	-8(%ebp), %eax
	sarl	$2, %eax
	jmp	.L47
.L46:
	movl	-4(%ebp), %eax
.L47:
	movl	%eax, -8(%ebp)
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -12(%ebp)
.L45:
	movl	-12(%ebp), %eax
	cmpl	24(%ebp), %eax
	jl	.L48
	addl	$1, -16(%ebp)
.L44:
	movl	20(%ebp), %eax
	subl	$1, %eax
	cmpl	-16(%ebp), %eax
	jg	.L49
	addl	$1, -20(%ebp)
.L43:
	movl	16(%ebp), %eax
	subl	$1, %eax
	cmpl	-20(%ebp), %eax
	jg	.L50
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1327:
	.size	_Z9suavizadoPPPiS1_iii, .-_Z9suavizadoPPPiS1_iii
	.section	.rodata
.LC4:
	.string	"sample.png"
.LC5:
	.string	"\n"
.LC6:
	.string	"output.bmp"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1328:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$176, %esp
	.cfi_offset 3, -12
	movl	$0, (%esp)
	call	FreeImage_Initialise
	movl	$FreeImage_DeInitialise, (%esp)
	call	atexit
	movl	$0, 4(%esp)
	movl	$.LC4, (%esp)
	call	FreeImage_GetFileType
	movl	%eax, 96(%esp)
	movl	$0, 8(%esp)
	movl	$.LC4, 4(%esp)
	movl	96(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_Load
	movl	%eax, 100(%esp)
	movl	100(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_ConvertTo32Bits
	movl	%eax, 104(%esp)
	movl	104(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_GetWidth
	movl	%eax, 108(%esp)
	movl	104(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_GetHeight
	movl	%eax, 112(%esp)
	movl	100(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_Unload
	movl	104(%esp), %eax
	movl	%eax, 100(%esp)
	movl	108(%esp), %eax
	movl	%eax, 116(%esp)
	movl	112(%esp), %eax
	movl	%eax, 120(%esp)
	movl	$3, 124(%esp)
	movl	116(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L52
	sall	$2, %eax
	jmp	.L53
.L52:
	movl	$-1, %eax
.L53:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 128(%esp)
	movl	$0, 36(%esp)
	jmp	.L54
.L57:
	movl	36(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	128(%esp), %eax
	leal	(%edx,%eax), %ebx
	movl	120(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L55
	sall	$2, %eax
	jmp	.L56
.L55:
	movl	$-1, %eax
.L56:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%ebx)
	addl	$1, 36(%esp)
.L54:
	movl	36(%esp), %eax
	cmpl	116(%esp), %eax
	jl	.L57
	movl	$0, 40(%esp)
	jmp	.L58
.L63:
	movl	$0, 44(%esp)
	jmp	.L59
.L62:
	movl	40(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	128(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	44(%esp), %edx
	sall	$2, %edx
	leal	(%eax,%edx), %ebx
	movl	124(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L60
	sall	$2, %eax
	jmp	.L61
.L60:
	movl	$-1, %eax
.L61:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%ebx)
	addl	$1, 44(%esp)
.L59:
	movl	44(%esp), %eax
	cmpl	120(%esp), %eax
	jl	.L62
	addl	$1, 40(%esp)
.L58:
	movl	40(%esp), %eax
	cmpl	116(%esp), %eax
	jl	.L63
	movl	116(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L64
	sall	$2, %eax
	jmp	.L65
.L64:
	movl	$-1, %eax
.L65:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 132(%esp)
	movl	$0, 48(%esp)
	jmp	.L66
.L69:
	movl	48(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	132(%esp), %eax
	leal	(%edx,%eax), %ebx
	movl	120(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L67
	sall	$2, %eax
	jmp	.L68
.L67:
	movl	$-1, %eax
.L68:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%ebx)
	addl	$1, 48(%esp)
.L66:
	movl	48(%esp), %eax
	cmpl	116(%esp), %eax
	jl	.L69
	movl	$0, 52(%esp)
	jmp	.L70
.L75:
	movl	$0, 56(%esp)
	jmp	.L71
.L74:
	movl	52(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	132(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	56(%esp), %edx
	sall	$2, %edx
	leal	(%eax,%edx), %ebx
	movl	124(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L72
	sall	$2, %eax
	jmp	.L73
.L72:
	movl	$-1, %eax
.L73:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%ebx)
	addl	$1, 56(%esp)
.L71:
	movl	56(%esp), %eax
	cmpl	120(%esp), %eax
	jl	.L74
	addl	$1, 52(%esp)
.L70:
	movl	52(%esp), %eax
	cmpl	116(%esp), %eax
	jl	.L75
	movl	116(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L76
	sall	$2, %eax
	jmp	.L77
.L76:
	movl	$-1, %eax
.L77:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 136(%esp)
	movl	$0, 60(%esp)
	jmp	.L78
.L81:
	movl	60(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	136(%esp), %eax
	leal	(%edx,%eax), %ebx
	movl	120(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L79
	sall	$2, %eax
	jmp	.L80
.L79:
	movl	$-1, %eax
.L80:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%ebx)
	addl	$1, 60(%esp)
.L78:
	movl	60(%esp), %eax
	cmpl	116(%esp), %eax
	jl	.L81
	movl	$0, 64(%esp)
	jmp	.L82
.L87:
	movl	$0, 68(%esp)
	jmp	.L83
.L86:
	movl	64(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	136(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	68(%esp), %edx
	sall	$2, %edx
	leal	(%eax,%edx), %ebx
	movl	124(%esp), %eax
	cmpl	$532676608, %eax
	ja	.L84
	sall	$2, %eax
	jmp	.L85
.L84:
	movl	$-1, %eax
.L85:
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%ebx)
	addl	$1, 68(%esp)
.L83:
	movl	68(%esp), %eax
	cmpl	120(%esp), %eax
	jl	.L86
	addl	$1, 64(%esp)
.L82:
	movl	64(%esp), %eax
	cmpl	116(%esp), %eax
	jl	.L87
	movl	$0, 72(%esp)
	jmp	.L88
.L91:
	movl	$0, 76(%esp)
	jmp	.L89
.L90:
	movl	76(%esp), %edx
	movl	72(%esp), %eax
	leal	156(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	100(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_GetPixelColor
	movl	72(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	128(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	76(%esp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movzbl	156(%esp), %edx
	movzbl	%dl, %edx
	movl	%edx, (%eax)
	movl	72(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	128(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	76(%esp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movzbl	157(%esp), %eax
	movzbl	%al, %eax
	movl	%eax, (%edx)
	movl	72(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	128(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	76(%esp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	leal	8(%eax), %edx
	movzbl	158(%esp), %eax
	movzbl	%al, %eax
	movl	%eax, (%edx)
	addl	$1, 76(%esp)
.L89:
	movl	76(%esp), %eax
	cmpl	112(%esp), %eax
	jl	.L90
	addl	$1, 72(%esp)
.L88:
	movl	72(%esp), %eax
	cmpl	108(%esp), %eax
	jl	.L91
	movl	128(%esp), %eax
	movl	(%eax), %eax
	movl	112(%esp), %edx
	addl	$1073741823, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	$0, (%eax)
	movl	128(%esp), %eax
	movl	(%eax), %eax
	movl	112(%esp), %edx
	addl	$1073741823, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	$0, (%eax)
	movl	128(%esp), %eax
	movl	(%eax), %eax
	movl	112(%esp), %edx
	addl	$1073741823, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	call	omp_get_wtime
	fstpl	160(%esp)
	movl	$3, 16(%esp)
	movl	112(%esp), %eax
	movl	%eax, 12(%esp)
	movl	108(%esp), %eax
	movl	%eax, 8(%esp)
	movl	128(%esp), %eax
	movl	%eax, 4(%esp)
	movl	132(%esp), %eax
	movl	%eax, (%esp)
	call	_Z13calcularMapeoPPPiS1_iii
	call	omp_get_wtime
	fsubl	160(%esp)
	fstpl	168(%esp)
	fldl	168(%esp)
	fstpl	4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZNSolsEd
	movl	$.LC5, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_Allocate
	movl	%eax, 140(%esp)
	movl	$0, 80(%esp)
	jmp	.L92
.L95:
	movl	$0, 84(%esp)
	jmp	.L93
.L94:
	movl	80(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	132(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	84(%esp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movb	%al, 156(%esp)
	movl	80(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	132(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	84(%esp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movb	%al, 157(%esp)
	movl	80(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	132(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	84(%esp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movb	%al, 158(%esp)
	movl	84(%esp), %edx
	movl	80(%esp), %eax
	leal	156(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	140(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_SetPixelColor
	addl	$1, 84(%esp)
.L93:
	movl	84(%esp), %eax
	cmpl	112(%esp), %eax
	jl	.L94
	addl	$1, 80(%esp)
.L92:
	movl	80(%esp), %eax
	cmpl	108(%esp), %eax
	jl	.L95
	movl	$0, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	_Z14calcularMapeoXii
	movl	%eax, 144(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_Z14calcularMapeoYii
	movl	%eax, 148(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	148(%esp), %eax
	movl	%eax, 4(%esp)
	movl	144(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_Allocate
	movl	%eax, 152(%esp)
	movl	$0, 88(%esp)
	jmp	.L96
.L99:
	movl	$0, 92(%esp)
	jmp	.L97
.L98:
	movl	92(%esp), %eax
	movl	112(%esp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	88(%esp), %eax
	leal	156(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	140(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_GetPixelColor
	movl	92(%esp), %eax
	movl	148(%esp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	88(%esp), %eax
	leal	156(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	152(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_SetPixelColor
	addl	$1, 92(%esp)
.L97:
	movl	92(%esp), %eax
	cmpl	148(%esp), %eax
	jl	.L98
	addl	$1, 88(%esp)
.L96:
	movl	88(%esp), %eax
	cmpl	144(%esp), %eax
	jl	.L99
	movl	$0, 12(%esp)
	movl	$.LC6, 8(%esp)
	movl	152(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	FreeImage_Save
	movl	100(%esp), %eax
	movl	%eax, (%esp)
	call	FreeImage_Unload
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1328:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1337:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L101
	cmpl	$65535, 12(%ebp)
	jne	.L101
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	$_ZNSt8ios_base4InitD1Ev, (%esp)
	call	__cxa_atexit
.L101:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1337:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z21calcularMapeoInversoYii, @function
_GLOBAL__sub_I__Z21calcularMapeoInversoYii:
.LFB1338:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1338:
	.size	_GLOBAL__sub_I__Z21calcularMapeoInversoYii, .-_GLOBAL__sub_I__Z21calcularMapeoInversoYii
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I__Z21calcularMapeoInversoYii
	.section	.rodata
	.align 8
.LC1:
	.long	-1133871366
	.long	1063818100
	.align 8
.LC2:
	.long	-858993459
	.long	1073794252
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
