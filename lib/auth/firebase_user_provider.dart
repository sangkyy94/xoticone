import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class XoticFirebaseUser {
  XoticFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

XoticFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<XoticFirebaseUser> xoticFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<XoticFirebaseUser>(
      (user) {
        currentUser = XoticFirebaseUser(user);
        return currentUser!;
      },
    );
