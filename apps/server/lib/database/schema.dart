// ignore_for_file: non_constant_identifier_names

import 'package:typed_sql/typed_sql.dart';

part 'schema.g.dart';

/// The primary database schema for the server application.
abstract final class PrimaryDatabase extends Schema {
  /// The table containing admin user records.
  Table<Admin> get admins;
}

/// Represents an admin user in the database.
@PrimaryKey(['id'])
abstract final class Admin extends Row {
  /// The unique identifier for the admin user.
  String get id;

  /// The email address of the admin user.
  @Unique.field()
  String get email;

  /// The hashed password of the admin user.
  String get password_hash;

  /// The name of the admin user.
  String get name;

  /// Indicates whether the admin user is active.
  @DefaultValue(true)
  bool get is_active;

  /// The timestamp when the admin user was created.
  @DefaultValue.now
  DateTime get created_at;

  /// The timestamp when the admin user was last updated.
  @DefaultValue.now
  DateTime get updated_at;
}
