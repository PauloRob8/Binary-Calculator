import 'dart:math';

class Calculator{
  int number1;
  int number2;


  int convert (String number){
    
    int result = 0;
    result += (int.parse(number[7]) * 1) + (int.parse(number[6]) * 2) + (int.parse(number[5]) * 4) +
    (int.parse(number[4]) * 8) + (int.parse(number[3]) * 16) + (int.parse(number[2]) * 32) + (int.parse(number[1]) * 64) +
    (int.parse(number[0]) * 128);
    
    return result;
  }

  int sum (String num1, String num2){
    int result = 0;
    result = convert(num1) + convert(num2);
    return result;
  }
  int subtract(String num1, String num2){
    int result = 0;
    result = convert(num1) - convert(num2);
    return result;
  }
  int multply(String num1, String num2){
    int result = 0;
    result = convert(num1) * convert(num2);
    return result;
  }

  int division(String num1, String num2){
    int result = 0;
    result = (convert(num1) / convert(num2)) as int;
    return result;
  }

  int rest(String num1, String num2){
    int result = 0;
    result = convert(num1) % convert(num2);
    return result;
  }

}