class SupplierEntity {
  final int id;
  final String name;
  final String? contactPerson;
  final String? phone;
  final String? email;

  const SupplierEntity({
    required this.id,
    required this.name,
    this.contactPerson,
    this.phone,
    this.email,
  });
}