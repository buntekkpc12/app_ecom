class TFirebaseException implements Exception {
  final String code;

  TFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check your custom token.';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience.';
      case 'user-disable':
        return 'The user account has beed disabled.';
      case 'user-not-found':
        return 'No user found for the given email or UID.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'wrong-password':
        return 'The password is invalid. Please check your password and try again.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';
      case 'provider-already-linked':
        return 'The account is ready linked with another provider.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Contact support for assistance.';
      case 'invalid-credential':
        return 'The supplied credential is malformed or has expired.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code.';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request a new verification code';
      case 'Captcha-check-failed':
        return 'The reCAPTCHA response is invalid. Please try again';
      default:
        return 'An unknown error occurred. Please try again later.';
    }
  }
}