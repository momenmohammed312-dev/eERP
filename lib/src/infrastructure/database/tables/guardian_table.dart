// guardian (extends person via FK)

// id, person_id (FK), relation_to_student, is_primary_contact
import 'package:drift/drift.dart';
import 'package:edu_erp/src/infrastructure/database/tables/person_table.dart';
class Guardian extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get personId => integer().references(Person, #id)();
  TextColumn get relationToStudent => text().nullable()();
  BoolColumn get isPrimaryContact => boolean().withDefault(const Constant(false))();
}