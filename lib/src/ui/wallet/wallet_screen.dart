import 'package:edu_erp/src/domain/wallet/entities/wallet_transaction_entity.dart';
import 'package:edu_erp/src/application/wallet/use_cases/get_wallet_transactions_use_case.dart';
import '../../imports/imports.dart';
import 'providers/wallet_providers.dart';

class WalletScreen extends ConsumerWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getWallet = ref.watch(getWalletByStudentUseCase);
    final getTx = ref.watch(getWalletTransactionsUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('المحفظة الإلكترونية', style: context.theme.textTheme.headlineMedium),
          SizedBox(height: AppSpacing.lg),
          FutureBuilder(
            future: getWallet(1),
            builder: (_, snap) {
              final wallet = snap.data;
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (wallet == null) {
                return const AppEmptyState(title: 'لا توجد محفظة للطالب');
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('الرصيد الحالي: ${wallet.balance} د.ل',
                      style: context.theme.textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: AppSpacing.lg),
                  Text('سجل المعاملات', style: context.theme.textTheme.titleLarge),
                  SizedBox(height: AppSpacing.md),
                  _TxTable(getTx: getTx, walletId: wallet.id),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _TxTable extends StatelessWidget {
  const _TxTable({required this.getTx, required this.walletId});
  final GetWalletTransactionsUseCase getTx;
  final int walletId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WalletTransactionEntity>>(
      future: getTx(walletId),
      builder: (_, snap) {
        final txs = snap.data ?? <WalletTransactionEntity>[];
        if (txs.isEmpty) return const AppEmptyState(title: 'لا توجد معاملات');
        return AppDataTable(
          columns: const ['المبلغ', 'النوع', 'التاريخ', 'الوصف'],
          rows: txs.map((t) => [
            Text('${t.amount.toStringAsFixed(2)} د.ل'),
            Text(t.type == 'credit' ? 'إيداع' : 'سحب'),
            Text(t.timestamp.toString().substring(0, 16)),
            Text(t.description ?? '-'),
          ]).toList(),
        );
      },
    );
  }
}