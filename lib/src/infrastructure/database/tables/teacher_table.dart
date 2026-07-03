// teacher (extends person via FK)

// id, person_id (FK), specialization, hire_date, status
import 'package:drift/drift.dart';
import 'package:edu_erp/src/infrastructure/database/tables/person_table.dart';
class Teacher extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get personId => integer().references(Person, #id)();
  TextColumn get specialization => text().nullable()();
  DateTimeColumn get hireDate => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get status => boolean().withDefault(false as Expression<bool>)();
}