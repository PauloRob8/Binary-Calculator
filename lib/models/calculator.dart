import 'dart:math';

import 'package:flutter/cupertino.dart';

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

  String deconvert(int number){
    String binaryResult = '';
    var values = List(8);
    var values1 = List(16);

    if(number >= 256){
      for(int i = 0; number > 0; i++){
        values1[i] = number % 2;
        number = number ~/ 2;
        }    
    
      binaryResult = values1.reversed.join();
      return binaryResult.replaceAll(RegExp(r'null'), '0');
    }

    else{
      if(number < 0){
        number = number * (-1);
        for(int i = 0; number > 0; i++){
          values[i] = number % 2;
          number = number ~/ 2;
        }

      binaryResult = values.reversed.join();
      return '1 '+ binaryResult.replaceAll(RegExp(r'null'), '0');

      }
      for(int i = 0; number > 0; i++){
        values[i] = number % 2;
        number = number ~/ 2;
      }    
    
      binaryResult = values.reversed.join();
      return binaryResult.replaceAll(RegExp(r'null'), '0');
    }
    
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

  int divide(String num1, String num2){
    int result = 0;
    result = convert(num1) ~/ convert(num2);
    return result;
  }

  int remainder(String num1, String num2){
    int result = 0;
    result = convert(num1) % convert(num2);
    return result;
  }

}