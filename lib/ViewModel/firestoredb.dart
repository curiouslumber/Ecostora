import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDB {
  void addCustomNamedDocument(String email, String photoUrl) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc("user1")
        .set({'field1': email, 'field2': photoUrl}).then((value) {
      print("Document added Successfully!");
    }).catchError((error) {
      print("Failed to add document");
    });
  }
}
