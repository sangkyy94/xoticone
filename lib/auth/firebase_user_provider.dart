import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class XOTICONEv2FirebaseUser {
  XOTICONEv2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

XOTICONEv2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<XOTICONEv2FirebaseUser> xOTICONEv2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<XOTICONEv2FirebaseUser>(
      (user) {
        currentUser = XOTICONEv2FirebaseUser(user);
        return currentUser!;
      },
    );
