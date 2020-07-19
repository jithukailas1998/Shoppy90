import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoppy90/accountdetails.dart';

import 'normal.dart';
class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
        if (snapshot.hasData) {
          return new AccDetails(
              uid: snapshot.data.uid);
        }
        else {
          return NormalScreen();
        }
      },
    );
  }
}
