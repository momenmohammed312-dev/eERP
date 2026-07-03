// employee (extends person via FK, non-teaching staff)

// id, person_id (FK), job_title, hire_date, status
import 'package:drift/drift.dart';
import 'package:edu_erp/src/infrastructure/database/tables/person_table.dart';
class Employee extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get personId => integer().references(Person, #id)();
  TextColumn get jobTitle => text().nullable()();
  DateTimeColumn get hireDate => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get status => boolean().withDefault(false as Expression<bool>)();
}