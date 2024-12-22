#include <iostream>
#include "calculator.h"

int main() {
    std::cout << "Starting program..." << std::endl;

    Calculator calc;
    std::cout << "Add: " << calc.Add(3.5, 2.5) << std::endl;
    std::cout << "Sub: " << calc.Sub(5.0, 1.5) << std::endl;

    std::cout << "Press Enter to exit..." << std::endl;
    std::cin.get();
    return 0;
}
