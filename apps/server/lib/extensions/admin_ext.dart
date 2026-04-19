import 'package:models/models.dart';
import 'package:server/database/schema.dart';

/// Extension on [Admin] to convert it to [AdminEntity].
extension AdminExtension on Admin {
  /// Converts an [Admin] database row to an [AdminEntity] model.
  AdminEntity toEntity() {
    return AdminEntity(
      id: id,
      email: email,
      name: name,
      isActive: is_active,
      createdAt: created_at,
      updatedAt: updated_at,
    );
  }
}
