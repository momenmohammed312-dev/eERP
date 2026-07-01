import '../../imports/imports.dart';

class AppDataTable extends StatelessWidget {
  const AppDataTable({
    super.key,
    required this.columns,
    required this.rows,
  });

  final List<String> columns;
  final List<List<Widget>> rows;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border.all(color: theme.colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(8.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(1),
        },
        border: TableBorder(
          horizontalInside: BorderSide(
            color: theme.colorScheme.outlineVariant,
            width: 1,
          ),
        ),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          // Header Row (Stitch: background #F7F8FA / surfaceContainerLow)
          TableRow(
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLow,
            ),
            children: columns.map((col) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Text(
                  col,
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              );
            }).toList(),
          ),
          
          // Data Rows (Stitch: row height 48px)
          ...rows.map((row) {
            return TableRow(
              children: row.map((cell) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                  child: DefaultTextStyle(
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontFamily: 'Inter', // Inter font for dense numeric/tabular data
                    ) ?? const TextStyle(),
                    child: cell,
                  ),
                );
              }).toList(),
            );
          }),
        ],
      ),
    );
  }
}
