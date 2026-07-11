import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/infrastructure/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/canteen_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/canteen/canteen_repository_impl.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_repository.dart';
import 'package:edu_erp/src/application/canteen/use_cases/create_canteen_sale_use_case.dart';
import 'package:edu_erp/src/application/canteen/use_cases/get_all_canteen_sales_use_case.dart';

final _canteenRepoProvider = Provider<CanteenRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return CanteenRepositoryImpl(CanteenDao(db));
});

final getAllCanteenSalesUseCase = Provider<GetAllCanteenSalesUseCase>((ref) {
  return GetAllCanteenSalesUseCase(ref.read(_canteenRepoProvider));
});

final createCanteenSaleUseCase = Provider<CreateCanteenSaleUseCase>((ref) {
  return CreateCanteenSaleUseCase(ref.read(_canteenRepoProvider));
});
