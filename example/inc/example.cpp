#include <iostream>
#include <map>
#include <string>
#include <vector>
#include <sstream>

using namespace std;

class Base {
protected:
	int value;
public:
	Base() : value(0) {};
	Base(int val) : value(val) {};

	int get() { return value; };
	virtual void show() = 0;
};

class A : public Base {
public:
	A() : Base() {};
	A(int val) : Base(val) {};

	void show() { cout << "class A: " << get() << endl; };
};

class B : public Base {
public:
	B() : Base() {};
	B(int val) : Base(val) {};

	void show() { cout << "class B: " << get() << endl; }
};