import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FireflowAuthenticationFirebaseUser {
  FireflowAuthenticationFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FireflowAuthenticationFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FireflowAuthenticationFirebaseUser>
    fireflowAuthenticationFirebaseUserStream() => FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<FireflowAuthenticationFirebaseUser>(
          (user) {
            currentUser = FireflowAuthenticationFirebaseUser(user);
            return currentUser!;
          },
        );
