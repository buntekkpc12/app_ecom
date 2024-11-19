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
}
