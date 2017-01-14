#include <iostream>
#include "Library.h"

int main(int argc, char* argv[])
{
	std::cout << "Hello" << std::endl;
	LibraryClass lib(3);
	std::cout << lib.getx() << std::endl;
}