#pragma once

class LibraryClass
{
public:
	LibraryClass();
	LibraryClass(const int x);

	int getx() const;
	void setx(const int x);
	
protected:
	int _x;
};
