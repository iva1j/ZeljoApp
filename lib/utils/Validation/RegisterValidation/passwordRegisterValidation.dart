String passwordValidator(String value) {
  if (value.length < 8) {
    return 'Password mora biti duži od 8 karaktera';
  } else {
    return null;
  }
}
