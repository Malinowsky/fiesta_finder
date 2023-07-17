import 'package:meta/meta.dart';

@immutable
class MadeUser{
  final String uid;
  final String name;
  final String surname;
  final String email;
  final String username;

  const MadeUser({
    required this.uid,
    required this.name,
    required this.surname,
    required this.email,
    required this.username,
});
}