import 'dart:io';

import 'exceptions.dart';
import 'signIn.dart';
import 'task2_User.dart';

void main() {
  var login = stdin.readLineSync()!;
  var password = stdin.readLineSync()!;

  var ivan = new User(login: login, password: password);

  try {
    final sign = signIn(ivan.login, ivan.password, "qwerty");
    print('logged in');
  } on WrongLoginException catch (e) {
    print(e);
  } on WrongPasswordException catch (e) {
    print(e);
  }
}