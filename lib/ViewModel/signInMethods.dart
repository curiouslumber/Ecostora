// ignore_for_file: avoid_print, file_names
import 'package:ecostore/ViewModel/controller.dart';
import 'package:ecostore/ViewModel/firestoredb.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final c = Get.put(Controller());

  Future<String?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "success";
    } catch (e) {
      if (e.toString().contains("email-already-in-use")) {
        return "email-already-in-use";
      }

      print('Error registering user: $e');
    }
    return null;
  }

  Future<String?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount == null) {
        //* Sign In Aborted
        c.signedIn.value = false;
        c.isAccount.value = false;
        c.isLoading.value = false;
      }
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredential = await _auth.signInWithCredential(credential);

      FirestoreDB f = FirestoreDB();

      f.addCustomNamedDocument(
          userCredential.user!.photoURL.toString(),
          userCredential.user!.displayName.toString(),
          userCredential.user!.email.toString(),
          'Google');

      c.signedIn.value = true;
      c.isAccount.value = true;
      c.isLoading.value = false;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
    return null;
  }

  Future<String?> signInWithEmailPassword(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return "success";
    } catch (e) {
      return e.toString();
    }
  }

  Future<void> signOutFromGoogle() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
