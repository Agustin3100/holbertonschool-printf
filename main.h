#ifndef MAIN
#define MAIN
#include <stdarg.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>


int _printf(const char *format, ...);
int (*op_func(const char *op))(va_list);

/**
 * struct func - struct for choose directive format.
 * @p: charecter to compare.
 * @f: function que devuelve.
 *
 */
typedef struct func
	{

	char op;
	
	
	int (*f)(va_list ap);
} op_t;

	int printchar(va_list ap);
	int _putchar(char c);
	int printstr(va_list);
	int printper(va_list);
	int printk(va_list);
	int iprint(va_list ap);
	int _printint(va_list ap);
	void _printnum(int n);
	int _getcount(int n);
	int printnumber(long n);

#endif
