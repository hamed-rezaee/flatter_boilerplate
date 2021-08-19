import 'package:nylo_support/helpers/helper.dart';

class User extends Storable {
  late String name;
  late String token;

  @override
  void toStorage() => <String, dynamic>{'name': name, 'token': token};

  @override
  dynamic fromStorage(dynamic data) {
    name = data['name'];
    token = data['token'];
  }
}
