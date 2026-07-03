// student (extends person via FK)

// id, person_id (FK), enrollment_date, status (active/inactive), guardian_id (FK), photo_path
import 'package:drift/drift.dart';
import 'package:edu_erp/src/infrastructure/database/tables/person_table.dart';
import 'package:edu_erp/src/infrastructure/database/tables/guardian_table.dart';

class Student extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get personId => integer().references(Person, #id)();
  DateTimeColumn get enrollmentDate => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get status => boolean().withDefault(const Constant(true))();
  IntColumn get guardianId => integer().references(Guardian, #id)();
  TextColumn get photoPath => text().nullable()();
}
