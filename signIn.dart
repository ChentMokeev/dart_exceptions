import 'exceptions.dart';

var correctChars = RegExp(r'[A-Za-z0-9]+$');

signIn(String login, String password, String confirmPassword) {
  if (login.length > 20 || !login.contains(correctChars)) {
    throw WrongLoginException(param: login);
  }
  if (!password.contains(correctChars) 
    || password != confirmPassword 
    || password.length > 20 
    || password.length == 0) {
    throw WrongPasswordException(param: password);
  }
  return 'logged in sucsessfuly';
}