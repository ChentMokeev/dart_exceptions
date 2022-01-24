import 'dart:io';

import 'exceptions.dart';
import 'signIn.dart';
import 'task2_User.dart';

void main() {
  print('Введите логин: ');
  var login = stdin.readLineSync()!;
  print('Введите пароль: ');
  var password = stdin.readLineSync()!;
  print('Повторите пароль: ');
  var confirmPassword = stdin.readLineSync()!;

  var ivan = new User(login: login, password: password);

  try {
    final sign = signIn(ivan.login, ivan.password, confirmPassword);
    print('logged in');
  } on WrongLoginException catch (e) {
    print(e);
  } on WrongPasswordException catch (e) {
    print(e);
  }
}