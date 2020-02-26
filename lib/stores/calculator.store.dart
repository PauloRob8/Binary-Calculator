import 'package:binary_operations/models/calculator.dart';
import 'package:mobx/mobx.dart';
part 'calculator.store.g.dart';


class CalculatorStore = _CalculatorStore with _$CalculatorStore;

abstract class _CalculatorStore with Store{

    @observable
    int number = 0;
    @observable
    String binaryResult = '0';

    @action
    void sum(String num1,String num2,Calculator calculator){
      number = calculator.sum(num1, num2);
      binaryResult = calculator.deconvert(number);
    }

    @action
    void subtract(String num1,String num2,Calculator calculator){
      number = calculator.subtract(num1, num2);
      binaryResult = calculator.deconvert(number);
    }

    @action
    void multply(String num1,String num2,Calculator calculator){
      number = calculator.multply(num1, num2);
      binaryResult = calculator.deconvert(number);
    }

    @action
    void divide(String num1,String num2,Calculator calculator){
      number = calculator.divide(num1, num2);
      binaryResult = calculator.deconvert(number);
    }

    @action
    void remainder(String num1,String num2,Calculator calculator){
      number = calculator.remainder(num1, num2);
      binaryResult = calculator.deconvert(number);
    }
    

}