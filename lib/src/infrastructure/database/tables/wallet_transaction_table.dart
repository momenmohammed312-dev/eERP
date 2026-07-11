import 'package:drift/drift.dart';
import 'wallet_table.dart';

class WalletTransaction extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get walletId => integer().references(Wallet, #id)();
  RealColumn get amount => real()();
  TextColumn get type => text()();
  DateTimeColumn get timestamp => dateTime().withDefault(currentDateAndTime)();
  TextColumn get description => text().nullable()();
}