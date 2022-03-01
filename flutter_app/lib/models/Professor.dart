import 'package:tcc_ifsc/Enums/typeEnum.dart';

class Professor {
  final int id;
  final int queueId;
  final String name;
  final String username;
  final String password;
  final typeEnum type = typeEnum.teacher;

  const Professor({
    required this.id,
    required this.queueId,
    required this.name,
    required this.username,
    required this.password,
  });

  factory Professor.fromJson(Map<String, dynamic> json) {
    return Professor(
      id: json['ProfessoresId'],
      queueId: json['QueueId'],
      name: json['Nome'],
      username: json['Username'],
      password: json['Senha'],
    );
  }
}