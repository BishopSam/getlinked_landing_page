
class Validators {
 
   static const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static bool _validateRegex({required String value, required String pattern}) {
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }


  static String? email(String? value,
      {String message = "Enter email address"}) {
    if (value!.isEmpty) {
      return message;
    } else {

      return _validateRegex(value: value, pattern: emailRegex) ? null : "Enter a valid email address";
    }
  }

  static String? name(String? value, {String message = "Enter full name"}) {
    if (value!.isEmpty) {
      return message;
    } else {
      return null;
    }
  }

  static String? message(String? value,
      {String message = "Enter a message"}) {
    if (value!.isEmpty) {
      return message;
    } else {
      return null;
    }
  }


}

String parseUnprocessedEntityError(dynamic map) {
  return (map as Map).values.join("\n");
}
