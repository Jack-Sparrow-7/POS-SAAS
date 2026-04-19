import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:server/database/database.dart';

Future<void> init(InternetAddress ip, int port) async {
  await initializeDatabase();
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(handler, ip, port);
}
