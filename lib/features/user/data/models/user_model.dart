import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String name;

  UserModel({required this.id, required this.name});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

// class UserModel{
//   final int id;
//   final String name;
//
//   UserModel({required this.id, required this.name});
//
//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(id : json['id'], name: json['name'])
// }
