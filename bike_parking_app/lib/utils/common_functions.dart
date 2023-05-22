passwordStrength(String password) {
  if (password.isEmpty) {
    return false;
  }
  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  bool hasDigits = password.contains(RegExp(r'[0-9]'));
  bool hasLowercase = password.contains(RegExp(r'[a-z]'));
  bool hasSpecialCharacters =
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

  return hasDigits & hasUppercase & hasLowercase & hasSpecialCharacters;
}
