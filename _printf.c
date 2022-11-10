#include <stdarg.h>
#include <unistd.h>
#include <stdio.h>

#include "struct.h"

/**
 *_printf - function print segun format.
 * @format: is a character string is composed of zero o more directives.
 * Return: count of character printed.
 *
 */
int _printf(const char * format, ...) {
  
	va_list ap;
  char * string;
  int count = 0;
  char s;
  int n;
  long int inter;

  va_start(ap, format);

  if(!format)
{
	write(1,"(nul)",5);
}

  for (;* format; format++) {
    if ( * format != '%') {
      _putchar( * format);
      count += 1;
      continue;
    }
    switch ( * ++format) {
    case 's':
      for (string = va_arg(ap, char * );* string; string++) {
        _putchar( * string);
        count += 1;
      }
      break;
    case 'c':
      s = va_arg(ap, int);
      _putchar(s);
      count += 1;
      break;

    case 'd': 
	 inter = va_arg(ap, int);

        if (inter < 0)
        {
                inter = -inter;
                _putchar(45);
                 _puts(converter(inter, 10)) + 1;
        }
         _puts(converter(inter, 10));

      break;
   

    
    
     

   
    


    default:
      _putchar( * format);
      count += 1;
      break;
    }
  
  
  va_end(ap);
  
  return (count);
}
