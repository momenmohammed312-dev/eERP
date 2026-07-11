class PayrollEntity {
  final int id;
  final int employeeId;
  final double salary;
  final double? deductions;
  final double? bonuses;
  final DateTime payDate;
  final String? notes;

  const PayrollEntity({
    required this.id,
    required this.employeeId,
    required this.salary,
    this.deductions,
    this.bonuses,
    required this.payDate,
    this.notes,
  });
}