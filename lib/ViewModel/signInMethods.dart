import 'package:ecostore/ViewModel/controller.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final c = Get.put(Controller());

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

      String email = userCredential.user!.email!;

      print("User signed in with email: $email");
      print("Photo Url: ${userCredential.user!.photoURL}");

      c.signedIn.value = true;
      c.isAccount.value = true;
      c.isLoading.value = false;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      rethrow;
    }
    return null;
  }

  Future<void> signOutFromGoogle() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
