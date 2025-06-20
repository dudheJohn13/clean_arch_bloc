


import 'package:json_annotation/json_annotation.dart';

part 'notes_model.g.dart';

@JsonSerializable()
class NotesModel {
  final int id;
  final String userId;
  final String title;
  final String content;

  NotesModel({required this.id, required this.userId, required this.title, required this.content});

  factory NotesModel.fromJson(Map<String, dynamic> json) =>
      _$NotesModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotesModelToJson(this);
}