.global writestr

writestr:
	# x8 is the syscall number, 64 is write
	mov x8, #64

	# x0 contains n, x1 pointer to data
	mov x2, x0
	mov x0, #1

	# write(fd=x0=1, buf=x1=str, count=x2=n)
	svc #0

	ret
