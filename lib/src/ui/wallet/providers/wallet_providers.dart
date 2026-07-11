import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/ui/person/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/wallet_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/wallet/wallet_repository_impl.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';
import 'package:edu_erp/src/application/wallet/use_cases/get_wallet_by_student_use_case.dart';
import 'package:edu_erp/src/application/wallet/use_cases/get_wallet_transactions_use_case.dart';

final _walletRepoProvider = Provider<WalletRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return WalletRepositoryImpl(WalletDao(db));
});

final getWalletByStudentUseCase = Provider<GetWalletByStudentUseCase>((ref) {
  return GetWalletByStudentUseCase(ref.read(_walletRepoProvider));
});

final getWalletTransactionsUseCase = Provider<GetWalletTransactionsUseCase>((ref) {
  return GetWalletTransactionsUseCase(ref.read(_walletRepoProvider));
});