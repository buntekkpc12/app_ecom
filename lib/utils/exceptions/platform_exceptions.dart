class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);
  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials. PLease double-check your information.';
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'invalid-argument':
        return 'Invalid argument provided to the authentication method.';
      case 'invalid-password':
        return 'Incorrect password. Please try again.';
      case 'invalid-phone-number':
        return 'The provided phone number is invalid';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Contact support for assistance.';
      case 'session-cookie-expired':
        return 'The Firebase session cookie has expired. Please sign in again.';
      case 'uid-already-exists':
        return 'The provided user ID is already in use by another user.';
      case 'sign_in_failed':
        return 'Sign-in failed. Please try again.';
      case 'network-request-failed':
        return 'Network reqest failed. Please try again later.';
      case 'internal-error':
        return 'Internal error. Please try again later';
      case 'invalid-verification-code':
        return 'invalid verification code. Please enter a valid code.';
      default:
        return 'An unknown error occurred. Please try again later or contact support.';
    }
  }
}
