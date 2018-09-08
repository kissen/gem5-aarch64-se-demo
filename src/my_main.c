#include "writestr.h"

void my_main(void)
{
	const char msg[] = "Hello, World!\n";
	writestr(sizeof(msg), msg);
}
