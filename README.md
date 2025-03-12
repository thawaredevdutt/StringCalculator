## String Calculator
The following is a TDD Kata- an exercise in coding, refactoring and test-first approach.

1. Create a simple String calculator with a method signature similar to this
    int add(string numbers)

    Input: a string of comma separated numbers
    Output: an integer, sum of the numbers
    
    Examples:
    Input: "", "1", "1,5"
    Output: 0, 1, 6
    Hints:
  
    - Start with the simplest test case of an empty string and move to one and two numbers
    - Remember to solve things as simply as possible so that you force yourself to write tests you did not think about
    - Remember to refactor after each passing test
    

2. Allow the add method to handle an any amount of numbers.


3. Allow the add method to handle new lines between numbers (instead of commas).
    - The following input is valid: "1\n2,3" (will return 6)
    - The following input is invalid: "1,\n"

  
4. Support different delimiters
    - To change delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]", for example "//;\n1;2" here the delimiter is ";" and this should return 3.


5. Calling add with a negative number will throw an exception "negative numbers not allowed <negative_number>".
    - If there are multiple negative numbers, show all of them in the exception message, separated by commas



# Getting started
To run this project locally, clone the repository and install the dependencies: 
```
git clone https://github.com/thawaredevdutt/StringCalculator.git
cd StringCalculator
bundle install
```

To run tests:
```
rspec lib/spec/calculator_spec.rb
```
