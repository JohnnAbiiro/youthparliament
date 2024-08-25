import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String dob;
  String sex;
  String fname;
  String sname;
  String phone;
  String cprofesssion;
  String previous_leadership;
  String academic_background;
  String regional_location;
  String email;

  UserModel({
    this.id,
    required this.dob,
    required this.sex,
    required this.fname,
    required this.sname,
    required this.email,
    required this.phone,
    required this.cprofesssion,
    required this.previous_leadership,
    required this.academic_background,
    required this.regional_location,
  });

  // Convert a UserModel into a Map. The keys must correspond to the Firestore field names.
  Map<String, dynamic> toMap() {
    return {
      'dob': dob, // Store DateTime as ISO8601 string
      'sex': sex,
      'fname': fname,
      'sname': sname,
      'phone': phone,
      'email': email,
      'previous_leadership': previous_leadership,
      'academic_background': academic_background,
      'regional_location': regional_location,
    };
  }

  // Create a UserModel from a Firestore document snapshot
  factory UserModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    return UserModel(
      id: doc.id,
      dob: doc.data()!['dob'], // Parse ISO8601 string back to DateTime
      sex: doc.data()!['sex'],
      fname: doc.data()!['fname'],
      sname: doc.data()!['sname'],
      email:  doc.data()!['email'],
      phone:  doc.data()!['phone'],
      cprofesssion:  doc.data()!['cprofesssion'],
      previous_leadership: doc.data()!['previous_leadership'],
      academic_background:  doc.data()!['academic_background'],
      regional_location:  doc.data()!['regional_location'],
    );
  }
}
