// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminEntity _$AdminEntityFromJson(Map<String, dynamic> json) => _AdminEntity(
  id: json['id'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  isActive: json['isActive'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$AdminEntityToJson(_AdminEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
