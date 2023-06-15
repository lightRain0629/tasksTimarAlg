// if i've imported 'dart:io' i could read any int from console in dart pad or in vs code but in dart pad its doesn't worked, 
//so i've pasted 5 to function u can test any number in first problem, 
//i will add only function for every problem, then u can test every solved problem by pasting name of function and requests of them...
import 'dart:math' as math;

void main() {
evenOrOdd(5);
}

//Problem 1
//Write a program that takes an integer as input and determines whether it is even or odd.
evenOrOdd(int a){
 a.isEven? print('Its even'): print('Its odd');
}


//Problem 2 
//Write a program that generates the Fibonacci series up to a given number of terms. 
//The Fibonacci series starts with 0 and 1, and each subsequent term is the sum of the previous two terms.
fibonachiSeries(int n){
 int fib1 = 1;
int fib2 = 1;
  int i = 0;
  int fibSum = 0;
  while (i<n-2){
        fibSum = fib1 + fib2;
    fib1 = fib2;
    fib2 = fibSum;
    i = i + 1;
    print(fib2);
  }
}

//Problem 3
//Write a program that takes a string as input and reverses it. For example, if the input is "hello," the program should output "olleh."
reversedString(String reverseThis){
  print(reverseThis.split('').reversed.join());
}



//Problem 4
// Write a program that determines whether a given year is a leap year or not. 
//A leap year is divisible by 4, but not divisible by 100, unless it is also divisible by 400.
leapYear(int year){
 int res = year % 4;
  if (res == 0){
    print('Leap year');
  } else {
    print ('Is not leap year');
  }
}

//Problem 6
//Write a program that checks whether a given string is a palindrome or not.
//A palindrome is a word, phrase, number, or other sequence of characters that reads the same forward and backward.
palindromeWord(String str){
  List list = str.split('');  
  bool res = false;
  
  for (var i=0; i<list.length; i++){
    if (list[i]== list.reversed.toList()[i]){
      res = true;
    } else {
      res = false;
    }
  }
  print(res);
}

//Problem 9
//Write a program that calculates the sum of all elements in an array of integers.
sumOfArray(List<int> array){
  int res = 0;
  for (var i=0; i<array.length; i++){
    res = res + array[i];
  }
  print(res);
}

//Problem 10
//Write a program that finds the maximum and minimum values in an array of integers.

// Min value
minInt(List<int> arr ){
  int res = arr[0];
  for( var i = 0; i<arr.length; i++){
    res = math.min(arr[i],res);
}
print(res);
}
//Max value
maxInt(List<int> arr ){
  int res = arr[0];
  for( var i = 0; i<arr.length; i++){
    res = math.max(arr[i],res);
}
print(res);
}

//Problem 11
//Write a program that takes a string as input and counts the number of vowels and consonants in it.
countVovelsAndConsonants(String countMe){
  String withoutSpace = countMe.replaceAll(' ','').toLowerCase();
  List codeUnits = withoutSpace.codeUnits;
  int vCount = 0;
  int cCount = 0;
  
  for (var i = 0; i<codeUnits.length; i++){
   if (codeUnits[i]==111 || codeUnits[i]==117 || codeUnits[i]== 105 
       || codeUnits[i]== 101 || codeUnits[i]== 97){
     vCount++;
   } else {
     cCount++;
   }
  }
  print('vovels $vCount');
  print('consonants $cCount');
}

//Problem 13
//Write a program that finds the largest word in a sentence. 
//The program should ignore punctuation marks and consider words as sequences of characters separated by spaces.
largestWord(String sentence){
  List separatedWords = sentence.split(' ');
  int res = separatedWords[0].length;
  for ( var i=1; i<separatedWords.length; i++){
    
    res = math.max(separatedWords[i].length, res);
  }
  print(res);
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
