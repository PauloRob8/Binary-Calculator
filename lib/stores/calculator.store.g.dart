// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculatorStore on _CalculatorStore, Store {
  final _$numberAtom = Atom(name: '_CalculatorStore.number');

  @override
  int get number {
    _$numberAtom.context.enforceReadPolicy(_$numberAtom);
    _$numberAtom.reportObserved();
    return super.number;
  }

  @override
  set number(int value) {
    _$numberAtom.context.conditionallyRunInAction(() {
      super.number = value;
      _$numberAtom.reportChanged();
    }, _$numberAtom, name: '${_$numberAtom.name}_set');
  }

  final _$binaryResultAtom = Atom(name: '_CalculatorStore.binaryResult');

  @override
  String get binaryResult {
    _$binaryResultAtom.context.enforceReadPolicy(_$binaryResultAtom);
    _$binaryResultAtom.reportObserved();
    return super.binaryResult;
  }

  @override
  set binaryResult(String value) {
    _$binaryResultAtom.context.conditionallyRunInAction(() {
      super.binaryResult = value;
      _$binaryResultAtom.reportChanged();
    }, _$binaryResultAtom, name: '${_$binaryResultAtom.name}_set');
  }

  final _$_CalculatorStoreActionController =
      ActionController(name: '_CalculatorStore');

  @override
  void sum(String num1, String num2, Calculator calculator) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction();
    try {
      return super.sum(num1, num2, calculator);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void subtract(String num1, String num2, Calculator calculator) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction();
    try {
      return super.subtract(num1, num2, calculator);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void multply(String num1, String num2, Calculator calculator) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction();
    try {
      return super.multply(num1, num2, calculator);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void divide(String num1, String num2, Calculator calculator) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction();
    try {
      return super.divide(num1, num2, calculator);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remainder(String num1, String num2, Calculator calculator) {
    final _$actionInfo = _$_CalculatorStoreActionController.startAction();
    try {
      return super.remainder(num1, num2, calculator);
    } finally {
      _$_CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'number: ${number.toString()},binaryResult: ${binaryResult.toString()}';
    return '{$string}';
  }
}
