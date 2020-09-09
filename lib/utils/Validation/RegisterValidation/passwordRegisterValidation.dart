String passwordValidator(String value) {
  if (value.length < 6) {
    return 'Password mora biti duži od 6 karaktera';
  } else {
    return null;
  }
}
