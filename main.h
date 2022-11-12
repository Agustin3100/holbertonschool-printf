#include <stdarg.h>
#ifndef MAIN
#define MAIN
<<<<<<< HEAD
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
	char p;
	int (*f)(va_list);
} op_t;

	int printchar(va_list ap);
	int _putchar(char c);
	int printstr(va_list);
	int printper(va_list);
	int printk(va_list);
=======
int _putchar(char c);
int  _printf(const char *format, ...);
int iprint(unsigned int n);
>>>>>>> 55b8411d9ee75c538ca76fdf5f7c16853e0a30f5
#endif
