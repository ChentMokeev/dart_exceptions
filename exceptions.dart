class WrongLoginException {
  String? param;
  WrongLoginException({this.param});
  @override
  String toString() {
    return 'Your login is wrong';
  }
}

class WrongPasswordException {
  String? param;
  WrongPasswordException({this.param});
  @override
  String toString() {
    return 'Your password is wrong';
  }
}