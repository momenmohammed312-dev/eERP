import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/infrastructure/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/wallet_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/wallet/wallet_repository_impl.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';
import 'package:edu_erp/src/application/wallet/use_cases/get_wallet_by_student_use_case.dart';
import 'package:edu_erp/src/application/wallet/use_cases/get_wallet_transactions_use_case.dart';
import 'package:edu_erp/src/application/wallet/use_cases/create_wallet_use_case.dart';
import 'package:edu_erp/src/application/wallet/use_cases/update_wallet_balance_use_case.dart';
import 'package:edu_erp/src/application/wallet/use_cases/delete_wallet_use_case.dart';
import 'package:edu_erp/src/application/wallet/use_cases/list_all_wallets_use_case.dart';

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

final createWalletUseCase = Provider<CreateWalletUseCase>((ref) {
  return CreateWalletUseCase(ref.read(_walletRepoProvider));
});

final updateWalletBalanceUseCase = Provider<UpdateWalletBalanceUseCase>((ref) {
  return UpdateWalletBalanceUseCase(ref.read(_walletRepoProvider));
});

final deleteWalletUseCase = Provider<DeleteWalletUseCase>((ref) {
  return DeleteWalletUseCase(ref.read(_walletRepoProvider));
});

final listAllWalletsUseCase = Provider<ListAllWalletsUseCase>((ref) {
  return ListAllWalletsUseCase(ref.read(_walletRepoProvider));
});
