#include <stdarg.h>
#ifndef struct_h
#define struct_h
typedef struct argt
{
	char *arg;
	int (*f)(va_list dot);


} str_t;
int  _printf(const char *format, ...);
int iprint(va_list args);

int _puts(char *str);
int _strlen(char *s);
#endif
