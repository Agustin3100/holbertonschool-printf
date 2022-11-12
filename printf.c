#include <stdarg.h>
#include <stdio.h>
#include"main.h"
#include<stdlib.h>
/**
  *_printf - function print segun format.
  * @format: is a character string is composed of zero o more directives.
  * Return: count of character printed.
  */

int  _printf(const char *format, ...)
{
va_list ap;
int count = 0, i;
int (*ptr)(va_list ap);

if (format == NULL)
	return (-1);

va_start(ap, format);

	for (i = 0; format[i] != '\0'; i++)
	{
		if (format[i] == '%')
		{
		i++;
		switch (format[i])
		{
			case 's':
			case 'c':
			case '%':
				ptr = op_func(&format[i]);
				count += ptr(ap);
				break;
			case '\0':
				return (-1);
			default:
				_putchar('%');
				_putchar(format[i]);
				count += 2;
		}
		}
	else
		{
		_putchar(format[i]);
		count += 1;
		}
	}
va_end(ap);
return (count);
}

