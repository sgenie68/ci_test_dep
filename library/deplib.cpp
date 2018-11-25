#include <stdio.h>
#include "deplib.h"

// Initializer.
__attribute__((constructor))
static void initializer(void) {
    printf("[%s] initializer()\n", __FILE__);
}

// Finalizer.
__attribute__((destructor))
static void finalizer(void) {
    printf("[%s] finalizer()\n", __FILE__);
}


int func1(int a)
{
	return a+a;
}

int func2(int a)
{
	return a+a+a;
}


