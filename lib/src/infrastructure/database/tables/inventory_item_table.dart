import 'package:drift/drift.dart';

class InventoryItem extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get sku => text().nullable()();
  IntColumn get quantity => integer().withDefault(const Constant(0))();
  RealColumn get unitPrice => real().nullable()();
  TextColumn get category => text().nullable()();
}