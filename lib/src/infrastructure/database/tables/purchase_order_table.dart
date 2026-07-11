import 'package:drift/drift.dart';
import 'inventory_item_table.dart';

class PurchaseOrder extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get itemId => integer().references(InventoryItem, #id)();
  IntColumn get quantity => integer()();
  RealColumn get totalCost => real()();
  DateTimeColumn get orderDate => dateTime().withDefault(currentDateAndTime)();
  IntColumn get supplierId => integer().nullable()();
  TextColumn get status => text().nullable()();
}