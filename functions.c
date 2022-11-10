#include <stddef.h>
#include <stdarg.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

	int _putchar(char c);
	int _puts(char *str);
	int _strlen(char *s);
	char *converter(long int num, int base)
{
	static const char set[] = "0123456789abcdef";
	static char bufer[64];
	char *ptr = NULL;
	int rest = 0;

	ptr = &bufer[63];
	*ptr = '\0';
	if (num == 0)
	{
		*--ptr = '0';
	}
	for (; num != 0;)
	{
		rest = num % base;
		*--ptr = set[rest];
		num = num / base;
	}
	return (ptr);
}

int iprint(va_list args)
{
	long int inter = va_arg(args, int);

	if (inter < 0)
	{
		inter = -inter;
		_putchar(45);
		return (_puts(converter(inter, 10)) + 1);
	}
	return (_puts(converter(inter, 10)));
}





/**
 * _putchar - writes the character c to stdout
 * @c: The character to print
 *
 * Return: On success 1.
 * On error, -1 is returned, and errno is set appropriately.
 */
int _putchar(char c)
{
	return (write(1, &c, 1));
}
/**
 * _puts - prints a string
 * @str: pointer to the address of the first position of the string
 *
 * Return: the output value from write
 */
int _puts(char *str)
{
	return (write(1, str, _strlen(str)));
}

/**
 * _strlen - returns the length of a string
 * @s: pinter to addres os strign
 *
 * Return: all elements of the stirng
 */
int _strlen(char *s)
{
	int count = 0;

	for (; s[count]; count++)
		;
	return (count);
}
