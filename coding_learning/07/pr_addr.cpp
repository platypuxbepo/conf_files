#include <iostream>
#include <stdlib.h>

using namespace std;

int main()
{
  int a = 2, b = 3, c = 4 /*,d = 5*/;
  int *pa = &a; // create a pointer (*) <<pa>> that can hold the value of an
                // <<int>>, and make it _point_ to the address (&) of <<a>>.
  int *pb = &b;
  int *pc = &c;
  // int *pd = d;
  cout << "Value of pointer pa is: " << pa << endl;
  // These really are about couting the address given to a, b and c.
  cout << "Value of pointer pb is: " << pb << endl;
  cout << "Value of pointer pc is: " << pc << endl;
  cout << "The values of a, b, and c are : ";
  cout << a << ", " << b << ", " << c << endl;
  return 0;
}
