import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_entity.freezed.dart';
part 'admin_entity.g.dart';

@freezed
abstract class AdminEntity with _$AdminEntity {
  const factory AdminEntity({
    required String id,
    required String email,
    required String name,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AdminEntity;

  factory AdminEntity.fromJson(Map<String, dynamic> json) =>
      _$AdminEntityFromJson(json);
}
