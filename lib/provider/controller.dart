
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class AppProvider extends ChangeNotifier{
  static final auth=FirebaseAuth.instance;
   getdata()async{
     return "Success";
   }

   Future<void> signInWithGoogle() async {
     // Create a new provider
     try {
       GoogleAuthProvider googleProvider = GoogleAuthProvider();
       googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
       googleProvider.setCustomParameters({
         'login_hint': 'user@example.com'
       });
       // Once signed in, return the UserCredential
       final my_login = await auth.signInWithPopup(googleProvider);
       if(my_login!=null)
       {
         String? displayname = auth.currentUser!.displayName;
         String? loginmail = auth.currentUser!.email;
         List? namelist = displayname!.split(" ");
         String fname = namelist[0];
         String lname = namelist[1];

       }
       //print(my_login);
     }on FirebaseException catch(e){
       // print(e);
       //errorMsgs=e.message!;
     }
     notifyListeners();
   }


}


