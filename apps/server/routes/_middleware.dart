import 'package:dart_frog/dart_frog.dart';
import 'package:server/database/database.dart';
import 'package:server/database/schema.dart';
import 'package:typed_sql/typed_sql.dart';

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(
        provider<Database<PrimaryDatabase>>(
          (context) => database,
        ),
      );
}
