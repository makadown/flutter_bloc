import 'dart:async';

class Bloc {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // Permitir agregar dato al stream
  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;

  // Cambiar datos
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
}
