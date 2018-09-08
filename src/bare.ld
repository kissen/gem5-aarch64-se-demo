SECTIONS
	{
		. = 0x80080000 ;

		.text : {
			*(".startelf")
			*(".text")
			*(".rodata*")
			*(".data")
			*(".bss")
		}
	}
