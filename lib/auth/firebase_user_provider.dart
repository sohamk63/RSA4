import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Rsa3FirebaseUser {
  Rsa3FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Rsa3FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Rsa3FirebaseUser> rsa3FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Rsa3FirebaseUser>(
      (user) {
        currentUser = Rsa3FirebaseUser(user);
        return currentUser!;
      },
    );
