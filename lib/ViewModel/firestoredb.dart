// ignore_for_file: avoid_print
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

  Future<bool> doesDocumentExist(String documentId) async {
    try {
      // Reference to the "users" collection
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');

      // Get the document snapshot
      DocumentSnapshot documentSnapshot = await users.doc(documentId).get();

      // Check if the document exists
      return documentSnapshot.exists;
    } catch (e) {
      print('Error checking document existence: $e');
      return false; // Return false in case of an error
    }
  }

  Future<String?> getLoginType(String email) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    try {
      DocumentSnapshot documentSnapshot = await users.doc(email).get();

      if (documentSnapshot.exists) {
        // Cast the data to Map<String, dynamic>
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;

        if (data != null) {
          var value = data['signInMethod'];
          if (value != null) {
            return value; // This will print the value of 'fieldName' in the console
          } else {
            print('Value is null');
          }
        } else {
          print('Data is null');
        }
      } else {
        print('Document does not exist');
      }
    } catch (e) {
      print('Error fetching document: $e');
    }
    return null;
  }

  Future<String?> signInData() async {
    try {
      // Get the currently signed-in user
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // Retrieve the user's email
        String? email = user.email;

        if (email != null) {
          return email;
        } else {
          return null; // User's email is null
        }
      } else {
        return null; // No user signed in
      }
    } catch (e) {
      print('Error retrieving user data: $e');
      return null; // Handle errors appropriately
    }
  }

  Future<List<String>> signInData1(String userEmail) async {
    List<String> data = List.empty(growable: true);
    try {
      // Reference to the "users" collection
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');

      // Get the document snapshot
      DocumentSnapshot userSnapshot = await users.doc(userEmail).get();

      if (userSnapshot.exists) {
        // Access 'name' and 'photoUrl' fields
        String userName = userSnapshot.get('name');
        String photoUrl = userSnapshot.get('photoUrl');
        data.add(userName);
        data.add(photoUrl);

        return data;
      } else {
        print('User document not found');
        return data;
      }
    } catch (e) {
      print('Error retrieving user data: $e');
      return data;
    }
  }
}
