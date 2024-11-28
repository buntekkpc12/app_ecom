import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstname;
  String lastname;

  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullname => '$firstname $lastname';
  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);
  static List<String> nameParts(fullname) => fullname.split(" ");
  static String generateUsername(fullname) {
    List<String> nameparts = fullname.split(" ");
    String firstname = nameparts[0].toLowerCase();
    String lastname = nameparts.length > 1 ? nameparts[1].toLowerCase() : "";

    String camelCaseUsername = "$firstname$lastname";
    String usernameWithPrefix = "cwt_ $camelCaseUsername";
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
      id: '',
      firstname: '',
      lastname: '',
      username: '',
      email: '',
      phoneNumber: '',
      profilePicture: '');

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstname,
      'LastName': lastname,
      'UserName': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
          id: document.id,
          firstname: data['FirstName'] ?? '',
          lastname: data['LastName'] ?? '',
          username: data['Username'] ?? '',
          email: data['email'] ?? '',
          phoneNumber: data['PhoneNumber'] ?? '',
          profilePicture: data['ProfilePicture'] ?? '');
    }
  }
}
