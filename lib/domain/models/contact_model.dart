// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Contact {
  final String email;
  final String firstName;
  final String message;
  Contact({
    required this.email,
    required this.firstName,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'first_name': firstName,
      'message': message,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      email: map['email'] as String,
      firstName: map['first_name'] as String,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Contact.fromJson(String source) => Contact.fromMap(json.decode(source) as Map<String, dynamic>);
}
