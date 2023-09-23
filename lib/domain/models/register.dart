import 'dart:convert';

class RegisterModel {
  final String email;
  final String teamsName;
  final String projectTopic;
  final int phoneNumber;
  final int groupSize;
  final int category;
  final bool privacyPolicyAccepted;
  RegisterModel({
    required this.email,
    required this.teamsName,
    required this.projectTopic,
    required this.phoneNumber,
    required this.category,
    required this.groupSize,
    required this.privacyPolicyAccepted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'team_name': teamsName,
      'project_topic': projectTopic,
      "category": category,
      'phone_number': phoneNumber,
      'group_size': groupSize,
      'privacy_policy_accepted': privacyPolicyAccepted,
    };
  }

  factory RegisterModel.fromMap(Map<String, dynamic> map) {
    return RegisterModel(
      email: map['email'] as String,
      teamsName: map['team_name'] as String,
      projectTopic: map['project_topic'] as String,
      phoneNumber: map['phone_number'] as int,
      groupSize: map['group_size'] as int,
      privacyPolicyAccepted: map['privacy_policy_accepted'] as bool,
      category: map['category'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterModel.fromJson(String source) =>
      RegisterModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
