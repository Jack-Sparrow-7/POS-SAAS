import 'package:server/database/schema.dart';
import 'package:typed_sql/typed_sql.dart';
import 'package:uuid/v4.dart';

/// Admin Repository is responsible for handling all database operations
///  related to admin users.
class AdminRepository {
  /// Creates an instance of [AdminRepository] with the provided [database].
  AdminRepository({required Database<PrimaryDatabase> database})
    : _database = database;

  /// The database instance used for performing database operations.
  final Database<PrimaryDatabase> _database;

  /// Retrieves an admin user by their email address.
  Future<Admin?> getAdminByEmail(String email) async {
    final admin = await _database.admins
        .where(
          (a) => a.email.equals(toExpr(email)),
        )
        .first
        .fetch();

    return admin;
  }

  /// Creates a new admin user with the provided [email], [passwordHash], and [name].
  Future<Admin> createAdmin({
    required String email,
    required String passwordHash,
    required String name,
  }) async {
    final admin = await _database.admins
        .insert(
          id: toExpr(const UuidV4().generate()),
          email: toExpr(email),
          password_hash: toExpr(passwordHash),
          name: toExpr(name),
        )
        .returnInserted()
        .executeAndFetch();

    return admin;
  }
}
