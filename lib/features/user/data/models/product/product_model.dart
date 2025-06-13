import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final int id;
  final String title;
  final String price;

  ProductModel({required this.id, required this.title, required this.price});

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

// class UserModel{
//   final int id;
//   final String name;
//
//   UserModel({required this.id, required this.name});
//
//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(id : json['id'], name: json['name'])
// }
