import '../../../imports/imports.dart';

class FilterForm extends StatelessWidget {
  const FilterForm({
    super.key,
    required this.dateRange,
    required this.selectedDomain,
    required this.domains,
    required this.onDateRangeChanged,
    required this.onDomainChanged,
    required this.onExport,
    required this.onPickDateRange,
  });

  final DateTimeRange? dateRange;
  final String? selectedDomain;
  final List<String> domains;
  final ValueChanged<DateTimeRange> onDateRangeChanged;
  final ValueChanged<String?> onDomainChanged;
  final VoidCallback onExport;
  final VoidCallback onPickDateRange;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      padding: EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: AppBorders.card,
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('نطاق التاريخ', style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600)),
          SizedBox(height: AppSpacing.sm),
          OutlinedButton.icon(
            onPressed: onPickDateRange,
            icon: const Icon(Icons.date_range, size: 16),
            label: Text(dateRange != null ? '${dateRange!.start.toString().substring(0, 10)} - ${dateRange!.end.toString().substring(0, 10)}' : 'اختر نطاق التاريخ', style: theme.textTheme.bodySmall),
          ),
          SizedBox(height: AppSpacing.xl),
          Text('النطاق', style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600)),
          SizedBox(height: AppSpacing.sm),
          DropdownButtonFormField<String>(
            value: selectedDomain,
            hint: const Text('اختر النطاق'),
            items: domains.map((d) => DropdownMenuItem(value: d, child: Text(d))).toList(),
            onChanged: onDomainChanged,
            decoration: const InputDecoration(border: OutlineInputBorder(borderRadius: AppBorders.input)),
          ),
          SizedBox(height: AppSpacing.xl),
          SizedBox(
            width: double.infinity,
            child: AppButton(label: 'تصدير التقرير', onPressed: onExport, variant: ButtonVariant.primary),
          ),
        ],
      ),
    );
  }
}