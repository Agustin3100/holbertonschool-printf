#include <stdarg.h>
#include <stdio.h>
#include"main.h"
/**
  *_printf - function print segun format.
  * @format: is a character string is composed of zero o more directives.
  * Return: count of character printed.
  *
  */
int  _printf(const char *format, ...)
{
va_list ap;
char *string;
int count = 0;
char s;

va_start(ap, format);

for (; *format; format++)
{
if (*format != '%')
{
_putchar(*format);
count += 1;
continue;
}
switch (*++format)
{
case 's':
for (string = va_arg(ap, char *); *string; string++)
{
_putchar(*string);
count += 1;
}
break;
case 'c':
s = va_arg(ap, int);
_putchar(s);
count += 1;
break;
default:
_putchar(*format);
count += 1;
break;
}
}
va_end(ap);
return (count);
}
