// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// Generator: _TypedSqlBuilder
// **************************************************************************

/// Extension methods for a [Database] operating on [PrimaryDatabase].
extension PrimaryDatabaseSchema on Database<PrimaryDatabase> {
  static final _$tables = [_$Admin._$table];

  /// The table containing admin user records.
  Table<Admin> get admins =>
      $ForGeneratedCode.declareTable(this, _$Admin._$table);

  /// Create tables defined in [PrimaryDatabase].
  ///
  /// Calling this on an empty database will create the tables
  /// defined in [PrimaryDatabase]. In production it's often better to
  /// use [createPrimaryDatabaseTables] and manage migrations using
  /// external tools.
  ///
  /// This method is mostly useful for testing.
  ///
  /// > [!WARNING]
  /// > If the database is **not empty** behavior is undefined, most
  /// > likely this operation will fail.
  Future<void> createTables() async =>
      $ForGeneratedCode.createTables(context: this, tables: _$tables);
}

/// Get SQL [DDL statements][1] for tables defined in [PrimaryDatabase].
///
/// This returns a SQL script with multiple DDL statements separated by `;`
/// using the specified [dialect].
///
/// Executing these statements in an empty database will create the tables
/// defined in [PrimaryDatabase]. In practice, this method is often used for
/// printing the DDL statements, such that migrations can be managed by
/// external tools.
///
/// [1]: https://en.wikipedia.org/wiki/Data_definition_language
String createPrimaryDatabaseTables(SqlDialect dialect) =>
    $ForGeneratedCode.createTableSchema(
      dialect: dialect,
      tables: PrimaryDatabaseSchema._$tables,
    );

final class _$Admin extends Admin {
  _$Admin._(
    this.id,
    this.email,
    this.password_hash,
    this.name,
    this.is_active,
    this.created_at,
    this.updated_at,
  );

  @override
  final String id;

  @override
  final String email;

  @override
  final String password_hash;

  @override
  final String name;

  @override
  final bool is_active;

  @override
  final DateTime created_at;

  @override
  final DateTime updated_at;

  static final _$table = $ForGeneratedCode.tableDefinition(
    tableName: 'admins',
    columns: <String>[
      'id',
      'email',
      'password_hash',
      'name',
      'is_active',
      'created_at',
      'updated_at',
    ],
    columnInfo: [
      $ForGeneratedCode.columnDefinition(
        type: $ForGeneratedCode.text,
        isNotNull: true,
        defaultValue: null,
        autoIncrement: false,
        overrides: [],
      ),
      $ForGeneratedCode.columnDefinition(
        type: $ForGeneratedCode.text,
        isNotNull: true,
        defaultValue: null,
        autoIncrement: false,
        overrides: [],
      ),
      $ForGeneratedCode.columnDefinition(
        type: $ForGeneratedCode.text,
        isNotNull: true,
        defaultValue: null,
        autoIncrement: false,
        overrides: [],
      ),
      $ForGeneratedCode.columnDefinition(
        type: $ForGeneratedCode.text,
        isNotNull: true,
        defaultValue: null,
        autoIncrement: false,
        overrides: [],
      ),
      $ForGeneratedCode.columnDefinition(
        type: $ForGeneratedCode.boolean,
        isNotNull: true,
        defaultValue: (kind: 'raw', value: true),
        autoIncrement: false,
        overrides: [],
      ),
      $ForGeneratedCode.columnDefinition(
        type: $ForGeneratedCode.dateTime,
        isNotNull: true,
        defaultValue: (kind: 'datetime', value: 'now'),
        autoIncrement: false,
        overrides: [],
      ),
      $ForGeneratedCode.columnDefinition(
        type: $ForGeneratedCode.dateTime,
        isNotNull: true,
        defaultValue: (kind: 'datetime', value: 'now'),
        autoIncrement: false,
        overrides: [],
      ),
    ],
    primaryKey: <String>['id'],
    unique: <List<String>>[
      ['email'],
    ],
    foreignKeys: [],
    readRow: _$Admin._$fromDatabase,
  );

  static Admin? _$fromDatabase(RowReader row) {
    final id = row.readString();
    final email = row.readString();
    final password_hash = row.readString();
    final name = row.readString();
    final is_active = row.readBool();
    final created_at = row.readDateTime();
    final updated_at = row.readDateTime();
    if (id == null &&
        email == null &&
        password_hash == null &&
        name == null &&
        is_active == null &&
        created_at == null &&
        updated_at == null) {
      return null;
    }
    return _$Admin._(
      id!,
      email!,
      password_hash!,
      name!,
      is_active!,
      created_at!,
      updated_at!,
    );
  }

  @override
  String toString() =>
      'Admin(id: "$id", email: "$email", password_hash: "$password_hash", name: "$name", is_active: "$is_active", created_at: "$created_at", updated_at: "$updated_at")';
}

/// Extension methods for table defined in [Admin].
extension TableAdminExt on Table<Admin> {
  /// Insert row into the `admins` table.
  ///
  /// Returns a [InsertSingle] statement on which `.execute` must be
  /// called for the row to be inserted.
  InsertSingle<Admin> insert({
    required Expr<String> id,
    required Expr<String> email,
    required Expr<String> password_hash,
    required Expr<String> name,
    Expr<bool>? is_active,
    Expr<DateTime>? created_at,
    Expr<DateTime>? updated_at,
  }) => $ForGeneratedCode.insertInto(
    table: this,
    values: [id, email, password_hash, name, is_active, created_at, updated_at],
  );

  /// Delete a single row from the `admins` table, specified by
  /// _primary key_.
  ///
  /// Returns a [DeleteSingle] statement on which `.execute()` must be
  /// called for the row to be deleted.
  ///
  /// To delete multiple rows, using `.where()` to filter which rows
  /// should be deleted. If you wish to delete all rows, use
  /// `.where((_) => toExpr(true)).delete()`.
  DeleteSingle<Admin> delete(String id) =>
      $ForGeneratedCode.deleteSingle(byKey(id), _$Admin._$table);
}

/// Extension methods for building queries against the `admins` table.
extension QueryAdminExt on Query<(Expr<Admin>,)> {
  /// Lookup a single row in `admins` table using the _primary key_.
  ///
  /// Returns a [QuerySingle] object, which returns at-most one row,
  /// when `.fetch()` is called.
  QuerySingle<(Expr<Admin>,)> byKey(String id) =>
      where((admin) => admin.id.equalsValue(id)).first;

  /// Update all rows in the `admins` table matching this [Query].
  ///
  /// The changes to be applied to each row matching this [Query] are
  /// defined using the [updateBuilder], which is given an [Expr]
  /// representation of the row being updated and a `set` function to
  /// specify which fields should be updated. The result of the `set`
  /// function should always be returned from the `updateBuilder`.
  ///
  /// Returns an [Update] statement on which `.execute()` must be called
  /// for the rows to be updated.
  ///
  /// **Example:** decrementing `1` from the `value` field for each row
  /// where `value > 0`.
  /// ```dart
  /// await db.mytable
  ///   .where((row) => row.value > toExpr(0))
  ///   .update((row, set) => set(
  ///     value: row.value - toExpr(1),
  ///   ))
  ///   .execute();
  /// ```
  ///
  /// > [!WARNING]
  /// > The `updateBuilder` callback does not make the update, it builds
  /// > the expressions for updating the rows. You should **never** invoke
  /// > the `set` function more than once, and the result should always
  /// > be returned immediately.
  Update<Admin> update(
    UpdateSet<Admin> Function(
      Expr<Admin> admin,
      UpdateSet<Admin> Function({
        Expr<String> id,
        Expr<String> email,
        Expr<String> password_hash,
        Expr<String> name,
        Expr<bool> is_active,
        Expr<DateTime> created_at,
        Expr<DateTime> updated_at,
      })
      set,
    )
    updateBuilder,
  ) => $ForGeneratedCode.update<Admin>(
    this,
    _$Admin._$table,
    (admin) => updateBuilder(
      admin,
      ({
        Expr<String>? id,
        Expr<String>? email,
        Expr<String>? password_hash,
        Expr<String>? name,
        Expr<bool>? is_active,
        Expr<DateTime>? created_at,
        Expr<DateTime>? updated_at,
      }) => $ForGeneratedCode.buildUpdate<Admin>([
        id,
        email,
        password_hash,
        name,
        is_active,
        created_at,
        updated_at,
      ]),
    ),
  );

  /// Lookup a single row in `admins` table using the
  /// `email` field
  ///
  /// We know that lookup by the `email` field returns
  /// at-most one row because the [Unique] annotation in [Admin].
  ///
  /// Returns a [QuerySingle] object, which returns at-most one row,
  /// when `.fetch()` is called.
  QuerySingle<(Expr<Admin>,)> byEmail(String email) =>
      where((admin) => admin.email.equalsValue(email)).first;

  /// Delete all rows in the `admins` table matching this [Query].
  ///
  /// Returns a [Delete] statement on which `.execute()` must be called
  /// for the rows to be deleted.
  Delete<Admin> delete() => $ForGeneratedCode.delete(this, _$Admin._$table);
}

/// Extension methods for building point queries against the `admins` table.
extension QuerySingleAdminExt on QuerySingle<(Expr<Admin>,)> {
  /// Update the row (if any) in the `admins` table matching this
  /// [QuerySingle].
  ///
  /// The changes to be applied to the row matching this [QuerySingle] are
  /// defined using the [updateBuilder], which is given an [Expr]
  /// representation of the row being updated and a `set` function to
  /// specify which fields should be updated. The result of the `set`
  /// function should always be returned from the `updateBuilder`.
  ///
  /// Returns an [UpdateSingle] statement on which `.execute()` must be
  /// called for the row to be updated. The resulting statement will
  /// **not** fail, if there are no rows matching this query exists.
  ///
  /// **Example:** decrementing `1` from the `value` field the row with
  /// `id = 1`.
  /// ```dart
  /// await db.mytable
  ///   .byKey(1)
  ///   .update((row, set) => set(
  ///     value: row.value - toExpr(1),
  ///   ))
  ///   .execute();
  /// ```
  ///
  /// > [!WARNING]
  /// > The `updateBuilder` callback does not make the update, it builds
  /// > the expressions for updating the rows. You should **never** invoke
  /// > the `set` function more than once, and the result should always
  /// > be returned immediately.
  UpdateSingle<Admin> update(
    UpdateSet<Admin> Function(
      Expr<Admin> admin,
      UpdateSet<Admin> Function({
        Expr<String> id,
        Expr<String> email,
        Expr<String> password_hash,
        Expr<String> name,
        Expr<bool> is_active,
        Expr<DateTime> created_at,
        Expr<DateTime> updated_at,
      })
      set,
    )
    updateBuilder,
  ) => $ForGeneratedCode.updateSingle<Admin>(
    this,
    _$Admin._$table,
    (admin) => updateBuilder(
      admin,
      ({
        Expr<String>? id,
        Expr<String>? email,
        Expr<String>? password_hash,
        Expr<String>? name,
        Expr<bool>? is_active,
        Expr<DateTime>? created_at,
        Expr<DateTime>? updated_at,
      }) => $ForGeneratedCode.buildUpdate<Admin>([
        id,
        email,
        password_hash,
        name,
        is_active,
        created_at,
        updated_at,
      ]),
    ),
  );

  /// Delete the row (if any) in the `admins` table matching this [QuerySingle].
  ///
  /// Returns a [DeleteSingle] statement on which `.execute()` must be called
  /// for the row to be deleted. The resulting statement will **not**
  /// fail, if there are no rows matching this query exists.
  DeleteSingle<Admin> delete() =>
      $ForGeneratedCode.deleteSingle(this, _$Admin._$table);
}

/// Extension methods for expressions on a row in the `admins` table.
extension ExpressionAdminExt on Expr<Admin> {
  /// The unique identifier for the admin user.
  Expr<String> get id =>
      $ForGeneratedCode.field(this, 0, $ForGeneratedCode.text);

  /// The email address of the admin user.
  Expr<String> get email =>
      $ForGeneratedCode.field(this, 1, $ForGeneratedCode.text);

  /// The hashed password of the admin user.
  Expr<String> get password_hash =>
      $ForGeneratedCode.field(this, 2, $ForGeneratedCode.text);

  /// The name of the admin user.
  Expr<String> get name =>
      $ForGeneratedCode.field(this, 3, $ForGeneratedCode.text);

  /// Indicates whether the admin user is active.
  Expr<bool> get is_active =>
      $ForGeneratedCode.field(this, 4, $ForGeneratedCode.boolean);

  /// The timestamp when the admin user was created.
  Expr<DateTime> get created_at =>
      $ForGeneratedCode.field(this, 5, $ForGeneratedCode.dateTime);

  /// The timestamp when the admin user was last updated.
  Expr<DateTime> get updated_at =>
      $ForGeneratedCode.field(this, 6, $ForGeneratedCode.dateTime);
}

extension ExpressionNullableAdminExt on Expr<Admin?> {
  /// The unique identifier for the admin user.
  Expr<String?> get id =>
      $ForGeneratedCode.field(this, 0, $ForGeneratedCode.text);

  /// The email address of the admin user.
  Expr<String?> get email =>
      $ForGeneratedCode.field(this, 1, $ForGeneratedCode.text);

  /// The hashed password of the admin user.
  Expr<String?> get password_hash =>
      $ForGeneratedCode.field(this, 2, $ForGeneratedCode.text);

  /// The name of the admin user.
  Expr<String?> get name =>
      $ForGeneratedCode.field(this, 3, $ForGeneratedCode.text);

  /// Indicates whether the admin user is active.
  Expr<bool?> get is_active =>
      $ForGeneratedCode.field(this, 4, $ForGeneratedCode.boolean);

  /// The timestamp when the admin user was created.
  Expr<DateTime?> get created_at =>
      $ForGeneratedCode.field(this, 5, $ForGeneratedCode.dateTime);

  /// The timestamp when the admin user was last updated.
  Expr<DateTime?> get updated_at =>
      $ForGeneratedCode.field(this, 6, $ForGeneratedCode.dateTime);

  /// Check if the row is not `NULL`.
  ///
  /// This will check if _primary key_ fields in this row are `NULL`.
  ///
  /// If this is a reference lookup by subquery it might be more efficient
  /// to check if the referencing field is `NULL`.
  Expr<bool> isNotNull() => id.isNotNull();

  /// Check if the row is `NULL`.
  ///
  /// This will check if _primary key_ fields in this row are `NULL`.
  ///
  /// If this is a reference lookup by subquery it might be more efficient
  /// to check if the referencing field is `NULL`.
  Expr<bool> isNull() => isNotNull().not();
}
