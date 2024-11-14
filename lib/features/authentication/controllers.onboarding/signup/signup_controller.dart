import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstname = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {} catch (e) {
    } finally {}
  }
}
