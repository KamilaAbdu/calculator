import 'dart:io';

void main() {
  calc();
}

void calc() {
  print('Введите первое число: ');
  int? firstInputNum = int.tryParse(stdin.readLineSync()!);
  if (firstInputNum == null) {
    print('Некорректный ввод. Пожалуйста, введите число.');
    return;
  }

  print('Введите второе число: ');
  int? secondInputNum = int.tryParse(stdin.readLineSync()!);
  if (secondInputNum == null) {
    print('Некорректный ввод. Пожалуйста, введите число.');
    return;
  }

  print('Введите действие (+, -, *, /): ');
  String action = stdin.readLineSync()!;

  switch (action) {
    case '+':
      print('Результат: ${firstInputNum + secondInputNum}');
      break;
    case '-':
      print('Результат: ${firstInputNum - secondInputNum}');
      break;
    case '*':
      print('Результат: ${firstInputNum * secondInputNum}');
      break;
    case '/':
    if (secondInputNum == 0){
      print('Ошибка: деление на ноль.');
      } else { 
      print('Результат: ${firstInputNum / secondInputNum}');
    }
      break;
    default:
      print('Некорректное дейстие. Введите предложенные варианты.');
  }
}
