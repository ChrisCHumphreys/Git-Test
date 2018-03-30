#include <iostream>

using namespace std;

int main()
{
  int output = 0;
  int inputValue = 0;

  cout << "Please enter a number: " << endl;
  cin >> inputValue; 
  for (int i = 1; i <= inputValue; i++)
  {
    output += i;
  }

  cout << "The sum of the numbers from 1 to " << inputValue << " is " << output << endl;
  output = 1;

  for (int i = 1; i <= inputValue; i++)
  {
    output *= i;
  }

  cout << "The product of the numbers from 1 to " << inputValue << " is " << output << endl;

  return 0;
}
