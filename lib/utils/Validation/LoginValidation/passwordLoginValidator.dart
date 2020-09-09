import '../../globalVariables.dart';

String passwordLoginValidator(String value) {
  if (value.length == null || value == '') return 'Polje ne smije biti prazno';
  if (value.length <= 5) {
    return 'Password ne smije biti manji od 6 karaktera';
  }
  if (status == false) {
    return 'Email ili password nisu ispravni';
  } else {
    return null;
  }
}
