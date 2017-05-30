#include <iostream>
using namespace std;

void triple_it(int *p);

int main()
{
  int a = 0;

  cout << "Gimme sth to triple with pointers : ";
  cin >> a;
  
  triple_it(&a); // Pass address of a

  cout << "Val. of a after tripling : " << a << endl;
  cout << "Val. of b after tripling : " << b << endl;

  return 0;
}

void triple_it(int *p)
{
  *p = *p * 3;
}
