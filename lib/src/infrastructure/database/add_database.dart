import 'package:sqflite/sqflite.dart';

Future<Database> initDatabase() async {
  return openDatabase(
    'my_database.db',
    version: 1,
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT)',
      );
    },
  );
}