import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/canteen/entities/canteen_product_entity.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_product_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/canteen_product_dao.dart';

class CanteenProductRepositoryImpl implements CanteenProductRepository {
  final CanteenProductDao _dao;
  CanteenProductRepositoryImpl(this._dao);

  CanteenProductEntity _toEntity(db.CanteenProductData d) =>
      CanteenProductEntity(id: d.id, name: d.name, price: d.price, stock: d.stock);

  @override
  Future<CanteenProductEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<CanteenProductEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(CanteenProductEntity e) => _dao.insert(
        db.CanteenProductCompanion.insert(name: e.name, price: e.price),
      );

  @override
  Future<void> update(CanteenProductEntity e) => _dao.update(
        db.CanteenProductCompanion(
          id: Value(e.id),
          name: Value(e.name),
          price: Value(e.price),
          stock: Value(e.stock),
        ),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);
}
