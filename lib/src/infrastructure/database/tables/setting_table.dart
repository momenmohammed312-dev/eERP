import 'package:drift/drift.dart';

class Setting extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text().unique()();
  TextColumn get value => text()();
  TextColumn get description => text().nullable()();

  @override
  List<Set<Column>> get uniqueKeys => [];
}
