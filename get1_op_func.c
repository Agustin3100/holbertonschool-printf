#include"main.h"
#include<stdio.h>
#include<stdarg.h>
/**
  * *op_func - Search directives of format.
  * @op: pointer to adress of next character of the directive.
  * Return: pointer of the function printfotmst.NUll when format not valid.
  */
int (*op_func(const char *op))(va_list)
{
		op_t ops[] = {
			{ 's', printstr},
			{ 'c', printchar},
			{ '%', printper},
			{ '\0', NULL}
			};

		int i;

		for (i = 0; ops[i].p != '\0'; i++)
		{
			if (ops[i].p == *op)
			{
				return (ops[i].f);
			}
		}
		return (NULL);
}
