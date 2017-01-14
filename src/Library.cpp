#include "Library.h"

LibraryClass::LibraryClass() : _x(1)
{}

LibraryClass::LibraryClass(const int x) : _x(x)
{}

int LibraryClass::getx() const {
	return _x;
}

void LibraryClass::setx(const int x) {
	_x = x;
}