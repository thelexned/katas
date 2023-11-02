# TDD Katas

## FizzBuzz
Write a program that prints one line for each number from 1 to 100

Usually just print the number itself.

For multiples of three print Fizz instead of the number

For the multiples of five print Buzz instead of the number

For numbers which are multiples of both three and five print FizzBuzz instead of the number



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

## Game of Life
Implement Conway's Game of Life. 

The game consists of a two-dimensional grid of cells, each of which can be alive or dead. 

The cells evolve in steps, with all the changes occurring at the same time. 

The rules are as follows:
1. Any live cell with fewer than two live neighbors dies, as if by underpopulation.
2. Any live cell with two or three live neighbors lives on to the next generation.
3. Any live cell with more than three live neighbors dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

Note: each cell in the grid has eight neighbors, which are the cells adjacent to it on all sides, including diagonals.

## String Calculator
### Step 1
Create a simple String calculator with a method signature:

```
int Add(string numbers)
```
The method can take up to two numbers, separated by commas, and will return their sum.

For example “” or “1” or “1,2” as inputs.

For an empty string it will return 0.

### Step 2
Allow the Add method to handle an unknown amount of numbers.

### Step 3
Allow the Add method to handle new lines between numbers (instead of commas):

The following input is ok: “1\n2,3” (will equal 6)

The following input is NOT ok: “1,\n” (not need to prove it - just clarifying)

### Step 4
Support different delimiters:

To change a delimiter, the beginning of the string will contain a separate line that looks like this: “//[delimiter]\n[numbers…]” for example “//;\n1;2” should return three where the default delimiter is ‘;’.

The first line is optional. All existing scenarios should still be supported.

### Step 5
Calling Add with a negative number will throw an exception “negatives not allowed” - and the negative that was passed.

If there are multiple negatives, show all of them in the exception message.

### Step 6
Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2

### Step 7
Delimiters can be of any length with the following format: “//[delimiter]\n” for example: “//[***]\n1***2***3” should return 6.

### Step 8
Allow multiple delimiters like this: “//[delim1][delim2]\n” for example “//[*][%]\n1*2%3” should return 6.

### Step 9
Make sure you can also handle multiple delimiters with length longer than one char.

