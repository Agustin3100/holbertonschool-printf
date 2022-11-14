#include <stdarg.h>
#include <stddef.h>
#include <unistd.h>
#include "main.h"




/**
* _getcount- counts number of recursion.
* @n: . int for comparison
*
* Return: On success 1.
* On error, -1 is returned, and errno is set appropriately.
*/

int _getcount(int n)
{
	int counter = 0;
	unsigned int m = n;

	while (m > 0)
	{
		m = m / 10;
		counter++;
	}
	return (counter);
}




/**
* printnumber - converts an int to string using putchar..
* @n: long integer.
*
* Return: On success counter for int.
* On error, -1 is returned, and errno is set appropriately.
*/

int printnumber(long n)
{
	int count = 0;

	if (n < 0)
	{
		_putchar('-');
		n *= -1;
		count++;
	}
	if (n / 10)
		count += printnumber(n / 10);
	count++;

	_putchar(n % 10 + '0');
	return (count);
}



/**
* iprint - prints an integer.
* @ap: variadic argument.
*
* Return: counter of number..
* On error, 1 is returned, and errno is set appropriately.
*/

int iprint(va_list ap)
{
	int num;
	int count;

	if (ap)
	{
		num = va_arg(ap, int);
		if (num == 0)
		{
			_putchar('0');
			return (1);
		}
		count = printnumber(num);
	}
	return (count);
}
