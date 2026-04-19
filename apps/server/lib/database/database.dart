import 'package:postgres/postgres.dart';
import 'package:server/database/schema.dart';
import 'package:typed_sql/typed_sql.dart';

/// The main database instance for the server application.
late final Database<PrimaryDatabase> database;

/// Initializes the database connection and sets up the schema.
Future<void> initializeDatabase() async {
  database = Database<PrimaryDatabase>(
    DatabaseAdapter.postgres(
      Pool.withEndpoints([
        Endpoint(
          host: '127.0.0.1',
          database: 'test_db',
          username: 'postgres',
          password: 'postgres',
        ),
      ], settings: const PoolSettings(sslMode: .disable)),
    ),
    SqlDialect.postgres(),
  );
}
