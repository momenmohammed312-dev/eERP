class PersonEntity {
  final int id;
  final String fullName;
  final String? phone;
  final String? email;
  final String? address;
  final String? nationalId;
  final DateTime? birthDate;
  final String? gender;
  final DateTime createdAt;

  const PersonEntity({
    required this.id,
    required this.fullName,
    this.phone,
    this.email,
    this.address,
    this.nationalId,
    this.birthDate,
    this.gender,
    required this.createdAt,
  });
}
