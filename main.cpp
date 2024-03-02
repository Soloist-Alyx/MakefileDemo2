#include <iostream>
#include "functions.h"
#include "helloTest/hello.h"
using namespace std;
int main()
{
    printHello();
    cout << "This is main:" << endl;
    cout << "The factorial of 5 is : " << factorial(5) << endl;
    hello();
    return 0;
}