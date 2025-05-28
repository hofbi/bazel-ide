#include <iostream>

#include "math_utils.h"

int main() {
  std::cout << "Math Utils Demo\n";
  std::cout << "===============\n";

  int a = 10, b = 5;

  std::cout << "a = " << a << ", b = " << b << "\n";
  std::cout << "add(a, b) = " << math_utils::add(a, b) << "\n";
  std::cout << "multiply(a, b) = " << math_utils::multiply(a, b) << "\n";

  std::cout << "\nChecking if numbers are even:\n";
  for (int i = 1; i <= 5; ++i) {
    std::cout << i << " is " << (math_utils::is_even(i) ? "even" : "odd")
              << "\n";
  }

  return 0;
}
