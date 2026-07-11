import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/canteen_dao.dart';

class CanteenRepositoryImpl implements CanteenRepository {
  final CanteenDao _dao;
  CanteenRepositoryImpl(this._dao);

  CanteenSaleEntity _toEntity(db.CanteenSaleData d) => CanteenSaleEntity(
        id: d.id, studentId: d.studentId, amount: d.amount,
        saleDate: d.saleDate, items: d.items, recordedBy: d.recordedBy,
      );

  @override
  Future<CanteenSaleEntity?> getSaleById(int id) async {
    final data = await _dao.getSaleById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<CanteenSaleEntity>> getAllSales() async =>
      (await _dao.getAllSales()).map(_toEntity).toList();

  @override
  Future<int> createSale(CanteenSaleEntity e) => _dao.insertSale(
        db.CanteenSaleCompanion.insert(
          studentId: e.studentId, amount: e.amount, saleDate: Value(e.saleDate),
          items: Value(e.items), recordedBy: e.recordedBy,
        ),
      );

  @override
  Future<void> deleteSale(int id) => _dao.deleteSale(id);

  @override
  Future<List<CanteenSaleEntity>> getSalesByStudent(int sid) async =>
      (await _dao.getSalesByStudent(sid)).map(_toEntity).toList();

  @override
  Future<List<CanteenSaleEntity>> getSalesByDate(DateTime date) async =>
      (await _dao.getSalesByDate(date)).map(_toEntity).toList();
}