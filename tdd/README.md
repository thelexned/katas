# TDD Katas

# TDD

The TDD process can be outlined in the following steps:

* Write a Test: Start by writing a test that describes the expected behavior of the function or feature you're planning to implement. This test should fail initially since the feature isn't implemented yet (Red phase).
* Implement the Feature: Write the minimum amount of code required for the test to pass. This often means the implementation is not yet perfect (Green phase).
* Refactor the Code: Clean up the new code, ensuring it fits well with the existing codebase and adheres to good coding practices. Refactoring should not change the behavior of the code — it should still pass the test (Refactor phase).
* Repeat: Go back to writing the next test for the next bit of functionality or for edge cases and go through the cycle again.

## Roman Numerals
Write a method String convert(int) that takes a number and converts it to the according String representation.

### Examples
   1 ➔ I
   
   2 ➔ II
   
   3 ➔ III
   
   4 ➔ IV
   
   5 ➔ V
   
   9 ➔ IX

  21 ➔ XXI
  
  50 ➔ L
 
 100 ➔ C
 
 500 ➔ D

1000 ➔ M

## FizzBuzz
Write a program that does the following for any integer number:

If the number is usually not a special case, the program should just return the number.

If the number can be evenly divided by 3, the program should return "Fizz" instead of the number.

If the number can be evenly divided by 5, the program should return "Buzz" instead of the number.

If the number can be evenly divided by both 3 and 5, the program should return "FizzBuzz" instead of the number.

## String Calculator
### Step 1
Create a simple String calculator with a method signature:

```
int Add(string numbers)
```
The method can take up to two numbers, separated by commas, and will return their sum.

For example `“”` or `“1”` or `“1,2”` as inputs.

For an empty string it will return 0.

### Step 2
Allow the Add method to handle an unknown amount of numbers.

### Step 3
Allow the Add method to handle new lines between numbers (instead of commas):

The following input is ok: `“1\n2,3”` (will equal 6)

The following input is NOT ok: `“1,\n”` (not need to prove it - just clarifying)

### Step 4
Support different delimiters:

To change a delimiter, the beginning of the string will contain a separate line that looks like this: `“//[delimiter]\n[numbers…]”` for example `“//;\n1;2”` should return three where the default delimiter is ‘;’.

The first line is optional. All existing scenarios should still be supported.

### Step 5
Calling Add with a negative number will throw an exception “negatives not allowed” - and the negative that was passed.

If there are multiple negatives, show all of them in the exception message.

### Step 6
Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2

### Step 7
Delimiters can be of any length with the following format: `“//[delimiter]\n”` for example: `“//[***]\n1***2***3”` should return 6.

### Step 8
Allow multiple delimiters like this: `“//[delim1][delim2]\n”` for example `“//[*][%]\n1*2%3”` should return 6.

### Step 9
Make sure you can also handle multiple delimiters with length longer than one char.


## Prime Factors

Write a function generate that, given an integer, returns a list containing the prime factors in numerical sequence.

Start with writing a test for factoring the number 1, then 2, then 3, up to at least 30.

This Kata is less about finding an efficient algorithm and more about practicing the TDD process.

### Here's how prime factorization works:

Start with the smallest prime number, which is 2.

Divide the original number by this prime number.

If the number is divisible by the prime number, then this prime number is a prime factor. Divide the original number by the prime factor and repeat the process with the result.

If the number is not divisible by the prime number, move to the next smallest prime number.

Repeat the process until the number is reduced to 1.

### For example, let's find the prime factors of 28:

Start with the smallest prime number, 2.

28 is divisible by 2, so 2 is a prime factor.

Divide 28 by 2, and you get 14.

14 is also divisible by 2, so you have another prime factor of 2.

Divide 14 by 2, and you get 7.

7 is a prime number itself, so it is also a prime factor.

Divide 7 by 7, and you get 1, which ends the process.

So the prime factors of 28 are 2, 2, and 7


## Todo List Kata

Develop a simple in-memory Todo list API with functions like `addTask(description)`, `removeTask(id)`, `updateTask(id, description)`, and `getTasks()`.

Start with the simplest test case of adding a task to the todo list, then proceed with removing a task, updating a task, and listing all tasks.

Work with objects or dictionaries to represent individual tasks, with properties like id, description, and completed.
