#include <iostream>
using namespace std;
#define lgt 5 // LD addition to change the nb of indices, 
              // lower is easier for testing.

void sort(int n);
void swap (int *p1, int *p2);

int arr[lgt];

int main()
{
  for (int i = 0; i < lgt; ++i) {
    cout << "Enter array element #" << i << ": ";
    cin >> arr[i];
  }
  sort(lgt);

  cout << "Here is the array, sorted : " << endl;
  for (int i = 0; i < lgt; ++i) {
    cout << arr[i] << " ";
 }
  return 0;
}

// Sort function : sort array named a with n elements.

void sort (int n) {

  for (int i = n - 1; i > 0; --i) {
    for (int j = 0; j < i; ++j) {
      //      in_order = true;
      bool in_order;
      if (arr[j - 1] < arr[j]) {
        swap (arr[j + 1], arr[j]);
        in_order = false;
      }
      if (in_order == true) break;
    }
  }

}

// Swap function.
// Swap the values pointed to by p1 and p2.

void swap(int *p1, int *p2) {
  int temp = *p1;
  *p1 = *p2;
  *p2 = temp;
}
ss
