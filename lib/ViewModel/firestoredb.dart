import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDB {
  void addCustomNamedDocument(
      String photoUrl, String name, String email, String signInMethod) async {
    await FirebaseFirestore.instance.collection("users").doc(email).set({
      'name': name,
      'photoUrl': photoUrl,
      'signInMethod': signInMethod
    }).then((value) {
      print("Document added Successfully!");
    }).catchError((error) {
      print("Failed to add document");
    });
  }
}
