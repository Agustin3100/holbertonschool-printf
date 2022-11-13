#include <stdarg.h>
#include <stddef.h>
#include <unistd.h>
#include "main.h"


void _printnum(int n)
{
	unsigned int m = n;

	if (m / 10 != 0)
	{
		_printnum(m / 10);
	}
	_putchar(m % 10 + '0');
}




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

int printnumber(long n)
{
	int count = 0;

	if (n < 0) {
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

int iprint(va_list arg)
{
	int num;
	int count; 

	if (arg)
	{
		num = va_arg(arg, int);
		if (num == 0)
		{
			_putchar('0');
			return (1);
		}
		count = printnumber(num);
	}
	return (count);
}  


