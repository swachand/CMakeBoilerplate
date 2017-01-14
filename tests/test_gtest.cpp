#include <gtest/gtest.h>
#include "library.h"

TEST(test, test1)
{
	LibraryClass lib(3);
	int x = lib.getx();
	ASSERT_EQ(3, x);
	lib.setx(-2);
	int x2 = lib.getx();
	ASSERT_EQ(-2, x2);
}

TEST(test, test2)
{
	FAIL();
}