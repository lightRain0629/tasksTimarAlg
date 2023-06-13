// if i've imported 'dart:io' i could read any int from console in dart pad or in vs code but in dart pad its doesn't worked, 
//so i've pasted 5 to function u can test any number in first problem, 
//i will add only function for every problem, then u can test every solved problem by pasting name of function and requests of them...

void main() {
evenOrOdd(5);
}

//Problem 1
//Write a program that takes an integer as input and determines whether it is even or odd.
evenOrOdd(int a){
 a.isEven? print('Its even'): print('Its odd');
}

//Problem 3
//Write a program that takes a string as input and reverses it. For example, if the input is "hello," the program should output "olleh."
reversedString(String reverseThis){
  print(reverseThis.split('').reversed.join());
}



//Problem 17
//Write a program that finds the missing number in a given array of consecutive integers from 1 to n, where only one number is missing.
findMissingInt(List<int> intList){
          for (var i = 0; i < intList.length; i++) {
          if(i+1==intList[i]){
            print('All are present');
          } else { 
          print (' ${i+1} is missing');
            }
        }
}
