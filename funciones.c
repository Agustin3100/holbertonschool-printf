#include <unistd.h>
#include<stdarg.h>
#include "main.h"
/**
* _putchar - write  character to stdout.
* @c: The character to print.
*
* Return: On success 1.
* On error, -1 is returned, and errno is set appropriately.
*/
int _putchar(char c)
{
	return (write(1, &c, 1));
}


/**
 * printchar - prints a charecter to stdout.
 * @ap: variadic parameter.
 *
 * Return: number of charecters printed.
 */

int printchar(va_list ap)
{
	char c = va_arg(ap, int);

	_putchar(c);
	return (1);
}
/**
  * printper - print character '%' in stdou.
  * @ap: variadic parameter.
  * Return: number of character printed.
  */

int printper(__attribute__((unused))va_list ap)
{

	write(1, "%", 1);

	return (1);
}
/**
  * printstr - printed string in stdout.
  * @ap: variadic parameter.
  * Return: Number of character printed.= NULL return (null).
  */




int printstr(va_list ap)
{
	int i = 0;
	char *str;

	str = va_arg(ap, char *);
	if (str == NULL)
	{
		write(1, "(null)", 6);
		return (6);
	}

	while (str[i])
	{
		write(1, &str[i], 1);
		i++;
	}

	return (i);
}
/** More information in the manpage*/

