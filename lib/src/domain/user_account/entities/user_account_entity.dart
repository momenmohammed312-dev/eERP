class UserAccountEntity {
  final int id;
  final int personId;
  final String username;
  final String passwordHash;
  final int roleId;
  final bool isActive;

  const UserAccountEntity({
    required this.id,
    required this.personId,
    required this.username,
    required this.passwordHash,
    required this.roleId,
    required this.isActive,
  });
}
