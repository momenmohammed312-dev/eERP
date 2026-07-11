// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PersonTable extends Person with TableInfo<$PersonTable, PersonData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PersonTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nationalIdMeta =
      const VerificationMeta('nationalId');
  @override
  late final GeneratedColumn<String> nationalId = GeneratedColumn<String>(
      'national_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
      'birth_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fullName,
        phone,
        email,
        address,
        nationalId,
        birthDate,
        gender,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'person';
  @override
  VerificationContext validateIntegrity(Insertable<PersonData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('national_id')) {
      context.handle(
          _nationalIdMeta,
          nationalId.isAcceptableOrUnknown(
              data['national_id']!, _nationalIdMeta));
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PersonData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PersonData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      nationalId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}national_id']),
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_date']),
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $PersonTable createAlias(String alias) {
    return $PersonTable(attachedDatabase, alias);
  }
}

class PersonData extends DataClass implements Insertable<PersonData> {
  final int id;
  final String fullName;
  final String? phone;
  final String? email;
  final String? address;
  final String? nationalId;
  final DateTime? birthDate;
  final String? gender;
  final DateTime createdAt;
  const PersonData(
      {required this.id,
      required this.fullName,
      this.phone,
      this.email,
      this.address,
      this.nationalId,
      this.birthDate,
      this.gender,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['full_name'] = Variable<String>(fullName);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || nationalId != null) {
      map['national_id'] = Variable<String>(nationalId);
    }
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<DateTime>(birthDate);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PersonCompanion toCompanion(bool nullToAbsent) {
    return PersonCompanion(
      id: Value(id),
      fullName: Value(fullName),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      nationalId: nationalId == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalId),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      createdAt: Value(createdAt),
    );
  }

  factory PersonData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PersonData(
      id: serializer.fromJson<int>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      phone: serializer.fromJson<String?>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      address: serializer.fromJson<String?>(json['address']),
      nationalId: serializer.fromJson<String?>(json['nationalId']),
      birthDate: serializer.fromJson<DateTime?>(json['birthDate']),
      gender: serializer.fromJson<String?>(json['gender']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fullName': serializer.toJson<String>(fullName),
      'phone': serializer.toJson<String?>(phone),
      'email': serializer.toJson<String?>(email),
      'address': serializer.toJson<String?>(address),
      'nationalId': serializer.toJson<String?>(nationalId),
      'birthDate': serializer.toJson<DateTime?>(birthDate),
      'gender': serializer.toJson<String?>(gender),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  PersonData copyWith(
          {int? id,
          String? fullName,
          Value<String?> phone = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> nationalId = const Value.absent(),
          Value<DateTime?> birthDate = const Value.absent(),
          Value<String?> gender = const Value.absent(),
          DateTime? createdAt}) =>
      PersonData(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        phone: phone.present ? phone.value : this.phone,
        email: email.present ? email.value : this.email,
        address: address.present ? address.value : this.address,
        nationalId: nationalId.present ? nationalId.value : this.nationalId,
        birthDate: birthDate.present ? birthDate.value : this.birthDate,
        gender: gender.present ? gender.value : this.gender,
        createdAt: createdAt ?? this.createdAt,
      );
  PersonData copyWithCompanion(PersonCompanion data) {
    return PersonData(
      id: data.id.present ? data.id.value : this.id,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      address: data.address.present ? data.address.value : this.address,
      nationalId:
          data.nationalId.present ? data.nationalId.value : this.nationalId,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      gender: data.gender.present ? data.gender.value : this.gender,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PersonData(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('nationalId: $nationalId, ')
          ..write('birthDate: $birthDate, ')
          ..write('gender: $gender, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fullName, phone, email, address,
      nationalId, birthDate, gender, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersonData &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.address == this.address &&
          other.nationalId == this.nationalId &&
          other.birthDate == this.birthDate &&
          other.gender == this.gender &&
          other.createdAt == this.createdAt);
}

class PersonCompanion extends UpdateCompanion<PersonData> {
  final Value<int> id;
  final Value<String> fullName;
  final Value<String?> phone;
  final Value<String?> email;
  final Value<String?> address;
  final Value<String?> nationalId;
  final Value<DateTime?> birthDate;
  final Value<String?> gender;
  final Value<DateTime> createdAt;
  const PersonCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.nationalId = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.gender = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PersonCompanion.insert({
    this.id = const Value.absent(),
    required String fullName,
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.nationalId = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.gender = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : fullName = Value(fullName);
  static Insertable<PersonData> custom({
    Expression<int>? id,
    Expression<String>? fullName,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? address,
    Expression<String>? nationalId,
    Expression<DateTime>? birthDate,
    Expression<String>? gender,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (nationalId != null) 'national_id': nationalId,
      if (birthDate != null) 'birth_date': birthDate,
      if (gender != null) 'gender': gender,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PersonCompanion copyWith(
      {Value<int>? id,
      Value<String>? fullName,
      Value<String?>? phone,
      Value<String?>? email,
      Value<String?>? address,
      Value<String?>? nationalId,
      Value<DateTime?>? birthDate,
      Value<String?>? gender,
      Value<DateTime>? createdAt}) {
    return PersonCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      address: address ?? this.address,
      nationalId: nationalId ?? this.nationalId,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (nationalId.present) {
      map['national_id'] = Variable<String>(nationalId.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('nationalId: $nationalId, ')
          ..write('birthDate: $birthDate, ')
          ..write('gender: $gender, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $GuardianTable extends Guardian
    with TableInfo<$GuardianTable, GuardianData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GuardianTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _personIdMeta =
      const VerificationMeta('personId');
  @override
  late final GeneratedColumn<int> personId = GeneratedColumn<int>(
      'person_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES person (id)'));
  static const VerificationMeta _relationToStudentMeta =
      const VerificationMeta('relationToStudent');
  @override
  late final GeneratedColumn<String> relationToStudent =
      GeneratedColumn<String>('relation_to_student', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isPrimaryContactMeta =
      const VerificationMeta('isPrimaryContact');
  @override
  late final GeneratedColumn<bool> isPrimaryContact = GeneratedColumn<bool>(
      'is_primary_contact', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_primary_contact" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, personId, relationToStudent, isPrimaryContact];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'guardian';
  @override
  VerificationContext validateIntegrity(Insertable<GuardianData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('person_id')) {
      context.handle(_personIdMeta,
          personId.isAcceptableOrUnknown(data['person_id']!, _personIdMeta));
    } else if (isInserting) {
      context.missing(_personIdMeta);
    }
    if (data.containsKey('relation_to_student')) {
      context.handle(
          _relationToStudentMeta,
          relationToStudent.isAcceptableOrUnknown(
              data['relation_to_student']!, _relationToStudentMeta));
    }
    if (data.containsKey('is_primary_contact')) {
      context.handle(
          _isPrimaryContactMeta,
          isPrimaryContact.isAcceptableOrUnknown(
              data['is_primary_contact']!, _isPrimaryContactMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GuardianData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GuardianData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      personId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}person_id'])!,
      relationToStudent: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}relation_to_student']),
      isPrimaryContact: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_primary_contact'])!,
    );
  }

  @override
  $GuardianTable createAlias(String alias) {
    return $GuardianTable(attachedDatabase, alias);
  }
}

class GuardianData extends DataClass implements Insertable<GuardianData> {
  final int id;
  final int personId;
  final String? relationToStudent;
  final bool isPrimaryContact;
  const GuardianData(
      {required this.id,
      required this.personId,
      this.relationToStudent,
      required this.isPrimaryContact});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['person_id'] = Variable<int>(personId);
    if (!nullToAbsent || relationToStudent != null) {
      map['relation_to_student'] = Variable<String>(relationToStudent);
    }
    map['is_primary_contact'] = Variable<bool>(isPrimaryContact);
    return map;
  }

  GuardianCompanion toCompanion(bool nullToAbsent) {
    return GuardianCompanion(
      id: Value(id),
      personId: Value(personId),
      relationToStudent: relationToStudent == null && nullToAbsent
          ? const Value.absent()
          : Value(relationToStudent),
      isPrimaryContact: Value(isPrimaryContact),
    );
  }

  factory GuardianData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GuardianData(
      id: serializer.fromJson<int>(json['id']),
      personId: serializer.fromJson<int>(json['personId']),
      relationToStudent:
          serializer.fromJson<String?>(json['relationToStudent']),
      isPrimaryContact: serializer.fromJson<bool>(json['isPrimaryContact']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'personId': serializer.toJson<int>(personId),
      'relationToStudent': serializer.toJson<String?>(relationToStudent),
      'isPrimaryContact': serializer.toJson<bool>(isPrimaryContact),
    };
  }

  GuardianData copyWith(
          {int? id,
          int? personId,
          Value<String?> relationToStudent = const Value.absent(),
          bool? isPrimaryContact}) =>
      GuardianData(
        id: id ?? this.id,
        personId: personId ?? this.personId,
        relationToStudent: relationToStudent.present
            ? relationToStudent.value
            : this.relationToStudent,
        isPrimaryContact: isPrimaryContact ?? this.isPrimaryContact,
      );
  GuardianData copyWithCompanion(GuardianCompanion data) {
    return GuardianData(
      id: data.id.present ? data.id.value : this.id,
      personId: data.personId.present ? data.personId.value : this.personId,
      relationToStudent: data.relationToStudent.present
          ? data.relationToStudent.value
          : this.relationToStudent,
      isPrimaryContact: data.isPrimaryContact.present
          ? data.isPrimaryContact.value
          : this.isPrimaryContact,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GuardianData(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('relationToStudent: $relationToStudent, ')
          ..write('isPrimaryContact: $isPrimaryContact')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, personId, relationToStudent, isPrimaryContact);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GuardianData &&
          other.id == this.id &&
          other.personId == this.personId &&
          other.relationToStudent == this.relationToStudent &&
          other.isPrimaryContact == this.isPrimaryContact);
}

class GuardianCompanion extends UpdateCompanion<GuardianData> {
  final Value<int> id;
  final Value<int> personId;
  final Value<String?> relationToStudent;
  final Value<bool> isPrimaryContact;
  const GuardianCompanion({
    this.id = const Value.absent(),
    this.personId = const Value.absent(),
    this.relationToStudent = const Value.absent(),
    this.isPrimaryContact = const Value.absent(),
  });
  GuardianCompanion.insert({
    this.id = const Value.absent(),
    required int personId,
    this.relationToStudent = const Value.absent(),
    this.isPrimaryContact = const Value.absent(),
  }) : personId = Value(personId);
  static Insertable<GuardianData> custom({
    Expression<int>? id,
    Expression<int>? personId,
    Expression<String>? relationToStudent,
    Expression<bool>? isPrimaryContact,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (personId != null) 'person_id': personId,
      if (relationToStudent != null) 'relation_to_student': relationToStudent,
      if (isPrimaryContact != null) 'is_primary_contact': isPrimaryContact,
    });
  }

  GuardianCompanion copyWith(
      {Value<int>? id,
      Value<int>? personId,
      Value<String?>? relationToStudent,
      Value<bool>? isPrimaryContact}) {
    return GuardianCompanion(
      id: id ?? this.id,
      personId: personId ?? this.personId,
      relationToStudent: relationToStudent ?? this.relationToStudent,
      isPrimaryContact: isPrimaryContact ?? this.isPrimaryContact,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (personId.present) {
      map['person_id'] = Variable<int>(personId.value);
    }
    if (relationToStudent.present) {
      map['relation_to_student'] = Variable<String>(relationToStudent.value);
    }
    if (isPrimaryContact.present) {
      map['is_primary_contact'] = Variable<bool>(isPrimaryContact.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GuardianCompanion(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('relationToStudent: $relationToStudent, ')
          ..write('isPrimaryContact: $isPrimaryContact')
          ..write(')'))
        .toString();
  }
}

class $StudentTable extends Student with TableInfo<$StudentTable, StudentData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _personIdMeta =
      const VerificationMeta('personId');
  @override
  late final GeneratedColumn<int> personId = GeneratedColumn<int>(
      'person_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES person (id)'));
  static const VerificationMeta _enrollmentDateMeta =
      const VerificationMeta('enrollmentDate');
  @override
  late final GeneratedColumn<DateTime> enrollmentDate =
      GeneratedColumn<DateTime>('enrollment_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<bool> status = GeneratedColumn<bool>(
      'status', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("status" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _guardianIdMeta =
      const VerificationMeta('guardianId');
  @override
  late final GeneratedColumn<int> guardianId = GeneratedColumn<int>(
      'guardian_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES guardian (id)'));
  static const VerificationMeta _photoPathMeta =
      const VerificationMeta('photoPath');
  @override
  late final GeneratedColumn<String> photoPath = GeneratedColumn<String>(
      'photo_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, personId, enrollmentDate, status, guardianId, photoPath];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'student';
  @override
  VerificationContext validateIntegrity(Insertable<StudentData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('person_id')) {
      context.handle(_personIdMeta,
          personId.isAcceptableOrUnknown(data['person_id']!, _personIdMeta));
    } else if (isInserting) {
      context.missing(_personIdMeta);
    }
    if (data.containsKey('enrollment_date')) {
      context.handle(
          _enrollmentDateMeta,
          enrollmentDate.isAcceptableOrUnknown(
              data['enrollment_date']!, _enrollmentDateMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('guardian_id')) {
      context.handle(
          _guardianIdMeta,
          guardianId.isAcceptableOrUnknown(
              data['guardian_id']!, _guardianIdMeta));
    } else if (isInserting) {
      context.missing(_guardianIdMeta);
    }
    if (data.containsKey('photo_path')) {
      context.handle(_photoPathMeta,
          photoPath.isAcceptableOrUnknown(data['photo_path']!, _photoPathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudentData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      personId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}person_id'])!,
      enrollmentDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}enrollment_date'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}status'])!,
      guardianId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}guardian_id'])!,
      photoPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}photo_path']),
    );
  }

  @override
  $StudentTable createAlias(String alias) {
    return $StudentTable(attachedDatabase, alias);
  }
}

class StudentData extends DataClass implements Insertable<StudentData> {
  final int id;
  final int personId;
  final DateTime enrollmentDate;
  final bool status;
  final int guardianId;
  final String? photoPath;
  const StudentData(
      {required this.id,
      required this.personId,
      required this.enrollmentDate,
      required this.status,
      required this.guardianId,
      this.photoPath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['person_id'] = Variable<int>(personId);
    map['enrollment_date'] = Variable<DateTime>(enrollmentDate);
    map['status'] = Variable<bool>(status);
    map['guardian_id'] = Variable<int>(guardianId);
    if (!nullToAbsent || photoPath != null) {
      map['photo_path'] = Variable<String>(photoPath);
    }
    return map;
  }

  StudentCompanion toCompanion(bool nullToAbsent) {
    return StudentCompanion(
      id: Value(id),
      personId: Value(personId),
      enrollmentDate: Value(enrollmentDate),
      status: Value(status),
      guardianId: Value(guardianId),
      photoPath: photoPath == null && nullToAbsent
          ? const Value.absent()
          : Value(photoPath),
    );
  }

  factory StudentData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentData(
      id: serializer.fromJson<int>(json['id']),
      personId: serializer.fromJson<int>(json['personId']),
      enrollmentDate: serializer.fromJson<DateTime>(json['enrollmentDate']),
      status: serializer.fromJson<bool>(json['status']),
      guardianId: serializer.fromJson<int>(json['guardianId']),
      photoPath: serializer.fromJson<String?>(json['photoPath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'personId': serializer.toJson<int>(personId),
      'enrollmentDate': serializer.toJson<DateTime>(enrollmentDate),
      'status': serializer.toJson<bool>(status),
      'guardianId': serializer.toJson<int>(guardianId),
      'photoPath': serializer.toJson<String?>(photoPath),
    };
  }

  StudentData copyWith(
          {int? id,
          int? personId,
          DateTime? enrollmentDate,
          bool? status,
          int? guardianId,
          Value<String?> photoPath = const Value.absent()}) =>
      StudentData(
        id: id ?? this.id,
        personId: personId ?? this.personId,
        enrollmentDate: enrollmentDate ?? this.enrollmentDate,
        status: status ?? this.status,
        guardianId: guardianId ?? this.guardianId,
        photoPath: photoPath.present ? photoPath.value : this.photoPath,
      );
  StudentData copyWithCompanion(StudentCompanion data) {
    return StudentData(
      id: data.id.present ? data.id.value : this.id,
      personId: data.personId.present ? data.personId.value : this.personId,
      enrollmentDate: data.enrollmentDate.present
          ? data.enrollmentDate.value
          : this.enrollmentDate,
      status: data.status.present ? data.status.value : this.status,
      guardianId:
          data.guardianId.present ? data.guardianId.value : this.guardianId,
      photoPath: data.photoPath.present ? data.photoPath.value : this.photoPath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StudentData(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('enrollmentDate: $enrollmentDate, ')
          ..write('status: $status, ')
          ..write('guardianId: $guardianId, ')
          ..write('photoPath: $photoPath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, personId, enrollmentDate, status, guardianId, photoPath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentData &&
          other.id == this.id &&
          other.personId == this.personId &&
          other.enrollmentDate == this.enrollmentDate &&
          other.status == this.status &&
          other.guardianId == this.guardianId &&
          other.photoPath == this.photoPath);
}

class StudentCompanion extends UpdateCompanion<StudentData> {
  final Value<int> id;
  final Value<int> personId;
  final Value<DateTime> enrollmentDate;
  final Value<bool> status;
  final Value<int> guardianId;
  final Value<String?> photoPath;
  const StudentCompanion({
    this.id = const Value.absent(),
    this.personId = const Value.absent(),
    this.enrollmentDate = const Value.absent(),
    this.status = const Value.absent(),
    this.guardianId = const Value.absent(),
    this.photoPath = const Value.absent(),
  });
  StudentCompanion.insert({
    this.id = const Value.absent(),
    required int personId,
    this.enrollmentDate = const Value.absent(),
    this.status = const Value.absent(),
    required int guardianId,
    this.photoPath = const Value.absent(),
  })  : personId = Value(personId),
        guardianId = Value(guardianId);
  static Insertable<StudentData> custom({
    Expression<int>? id,
    Expression<int>? personId,
    Expression<DateTime>? enrollmentDate,
    Expression<bool>? status,
    Expression<int>? guardianId,
    Expression<String>? photoPath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (personId != null) 'person_id': personId,
      if (enrollmentDate != null) 'enrollment_date': enrollmentDate,
      if (status != null) 'status': status,
      if (guardianId != null) 'guardian_id': guardianId,
      if (photoPath != null) 'photo_path': photoPath,
    });
  }

  StudentCompanion copyWith(
      {Value<int>? id,
      Value<int>? personId,
      Value<DateTime>? enrollmentDate,
      Value<bool>? status,
      Value<int>? guardianId,
      Value<String?>? photoPath}) {
    return StudentCompanion(
      id: id ?? this.id,
      personId: personId ?? this.personId,
      enrollmentDate: enrollmentDate ?? this.enrollmentDate,
      status: status ?? this.status,
      guardianId: guardianId ?? this.guardianId,
      photoPath: photoPath ?? this.photoPath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (personId.present) {
      map['person_id'] = Variable<int>(personId.value);
    }
    if (enrollmentDate.present) {
      map['enrollment_date'] = Variable<DateTime>(enrollmentDate.value);
    }
    if (status.present) {
      map['status'] = Variable<bool>(status.value);
    }
    if (guardianId.present) {
      map['guardian_id'] = Variable<int>(guardianId.value);
    }
    if (photoPath.present) {
      map['photo_path'] = Variable<String>(photoPath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentCompanion(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('enrollmentDate: $enrollmentDate, ')
          ..write('status: $status, ')
          ..write('guardianId: $guardianId, ')
          ..write('photoPath: $photoPath')
          ..write(')'))
        .toString();
  }
}

class $TeacherTable extends Teacher with TableInfo<$TeacherTable, TeacherData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TeacherTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _personIdMeta =
      const VerificationMeta('personId');
  @override
  late final GeneratedColumn<int> personId = GeneratedColumn<int>(
      'person_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES person (id)'));
  static const VerificationMeta _specializationMeta =
      const VerificationMeta('specialization');
  @override
  late final GeneratedColumn<String> specialization = GeneratedColumn<String>(
      'specialization', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hireDateMeta =
      const VerificationMeta('hireDate');
  @override
  late final GeneratedColumn<DateTime> hireDate = GeneratedColumn<DateTime>(
      'hire_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<bool> status = GeneratedColumn<bool>(
      'status', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("status" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, personId, specialization, hireDate, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'teacher';
  @override
  VerificationContext validateIntegrity(Insertable<TeacherData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('person_id')) {
      context.handle(_personIdMeta,
          personId.isAcceptableOrUnknown(data['person_id']!, _personIdMeta));
    } else if (isInserting) {
      context.missing(_personIdMeta);
    }
    if (data.containsKey('specialization')) {
      context.handle(
          _specializationMeta,
          specialization.isAcceptableOrUnknown(
              data['specialization']!, _specializationMeta));
    }
    if (data.containsKey('hire_date')) {
      context.handle(_hireDateMeta,
          hireDate.isAcceptableOrUnknown(data['hire_date']!, _hireDateMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TeacherData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TeacherData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      personId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}person_id'])!,
      specialization: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}specialization']),
      hireDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}hire_date'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $TeacherTable createAlias(String alias) {
    return $TeacherTable(attachedDatabase, alias);
  }
}

class TeacherData extends DataClass implements Insertable<TeacherData> {
  final int id;
  final int personId;
  final String? specialization;
  final DateTime hireDate;
  final bool status;
  const TeacherData(
      {required this.id,
      required this.personId,
      this.specialization,
      required this.hireDate,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['person_id'] = Variable<int>(personId);
    if (!nullToAbsent || specialization != null) {
      map['specialization'] = Variable<String>(specialization);
    }
    map['hire_date'] = Variable<DateTime>(hireDate);
    map['status'] = Variable<bool>(status);
    return map;
  }

  TeacherCompanion toCompanion(bool nullToAbsent) {
    return TeacherCompanion(
      id: Value(id),
      personId: Value(personId),
      specialization: specialization == null && nullToAbsent
          ? const Value.absent()
          : Value(specialization),
      hireDate: Value(hireDate),
      status: Value(status),
    );
  }

  factory TeacherData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TeacherData(
      id: serializer.fromJson<int>(json['id']),
      personId: serializer.fromJson<int>(json['personId']),
      specialization: serializer.fromJson<String?>(json['specialization']),
      hireDate: serializer.fromJson<DateTime>(json['hireDate']),
      status: serializer.fromJson<bool>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'personId': serializer.toJson<int>(personId),
      'specialization': serializer.toJson<String?>(specialization),
      'hireDate': serializer.toJson<DateTime>(hireDate),
      'status': serializer.toJson<bool>(status),
    };
  }

  TeacherData copyWith(
          {int? id,
          int? personId,
          Value<String?> specialization = const Value.absent(),
          DateTime? hireDate,
          bool? status}) =>
      TeacherData(
        id: id ?? this.id,
        personId: personId ?? this.personId,
        specialization:
            specialization.present ? specialization.value : this.specialization,
        hireDate: hireDate ?? this.hireDate,
        status: status ?? this.status,
      );
  TeacherData copyWithCompanion(TeacherCompanion data) {
    return TeacherData(
      id: data.id.present ? data.id.value : this.id,
      personId: data.personId.present ? data.personId.value : this.personId,
      specialization: data.specialization.present
          ? data.specialization.value
          : this.specialization,
      hireDate: data.hireDate.present ? data.hireDate.value : this.hireDate,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TeacherData(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('specialization: $specialization, ')
          ..write('hireDate: $hireDate, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, personId, specialization, hireDate, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeacherData &&
          other.id == this.id &&
          other.personId == this.personId &&
          other.specialization == this.specialization &&
          other.hireDate == this.hireDate &&
          other.status == this.status);
}

class TeacherCompanion extends UpdateCompanion<TeacherData> {
  final Value<int> id;
  final Value<int> personId;
  final Value<String?> specialization;
  final Value<DateTime> hireDate;
  final Value<bool> status;
  const TeacherCompanion({
    this.id = const Value.absent(),
    this.personId = const Value.absent(),
    this.specialization = const Value.absent(),
    this.hireDate = const Value.absent(),
    this.status = const Value.absent(),
  });
  TeacherCompanion.insert({
    this.id = const Value.absent(),
    required int personId,
    this.specialization = const Value.absent(),
    this.hireDate = const Value.absent(),
    this.status = const Value.absent(),
  }) : personId = Value(personId);
  static Insertable<TeacherData> custom({
    Expression<int>? id,
    Expression<int>? personId,
    Expression<String>? specialization,
    Expression<DateTime>? hireDate,
    Expression<bool>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (personId != null) 'person_id': personId,
      if (specialization != null) 'specialization': specialization,
      if (hireDate != null) 'hire_date': hireDate,
      if (status != null) 'status': status,
    });
  }

  TeacherCompanion copyWith(
      {Value<int>? id,
      Value<int>? personId,
      Value<String?>? specialization,
      Value<DateTime>? hireDate,
      Value<bool>? status}) {
    return TeacherCompanion(
      id: id ?? this.id,
      personId: personId ?? this.personId,
      specialization: specialization ?? this.specialization,
      hireDate: hireDate ?? this.hireDate,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (personId.present) {
      map['person_id'] = Variable<int>(personId.value);
    }
    if (specialization.present) {
      map['specialization'] = Variable<String>(specialization.value);
    }
    if (hireDate.present) {
      map['hire_date'] = Variable<DateTime>(hireDate.value);
    }
    if (status.present) {
      map['status'] = Variable<bool>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeacherCompanion(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('specialization: $specialization, ')
          ..write('hireDate: $hireDate, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $EmployeeTable extends Employee
    with TableInfo<$EmployeeTable, EmployeeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _personIdMeta =
      const VerificationMeta('personId');
  @override
  late final GeneratedColumn<int> personId = GeneratedColumn<int>(
      'person_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES person (id)'));
  static const VerificationMeta _jobTitleMeta =
      const VerificationMeta('jobTitle');
  @override
  late final GeneratedColumn<String> jobTitle = GeneratedColumn<String>(
      'job_title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hireDateMeta =
      const VerificationMeta('hireDate');
  @override
  late final GeneratedColumn<DateTime> hireDate = GeneratedColumn<DateTime>(
      'hire_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<bool> status = GeneratedColumn<bool>(
      'status', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("status" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, personId, jobTitle, hireDate, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'employee';
  @override
  VerificationContext validateIntegrity(Insertable<EmployeeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('person_id')) {
      context.handle(_personIdMeta,
          personId.isAcceptableOrUnknown(data['person_id']!, _personIdMeta));
    } else if (isInserting) {
      context.missing(_personIdMeta);
    }
    if (data.containsKey('job_title')) {
      context.handle(_jobTitleMeta,
          jobTitle.isAcceptableOrUnknown(data['job_title']!, _jobTitleMeta));
    }
    if (data.containsKey('hire_date')) {
      context.handle(_hireDateMeta,
          hireDate.isAcceptableOrUnknown(data['hire_date']!, _hireDateMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmployeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmployeeData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      personId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}person_id'])!,
      jobTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}job_title']),
      hireDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}hire_date'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $EmployeeTable createAlias(String alias) {
    return $EmployeeTable(attachedDatabase, alias);
  }
}

class EmployeeData extends DataClass implements Insertable<EmployeeData> {
  final int id;
  final int personId;
  final String? jobTitle;
  final DateTime hireDate;
  final bool status;
  const EmployeeData(
      {required this.id,
      required this.personId,
      this.jobTitle,
      required this.hireDate,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['person_id'] = Variable<int>(personId);
    if (!nullToAbsent || jobTitle != null) {
      map['job_title'] = Variable<String>(jobTitle);
    }
    map['hire_date'] = Variable<DateTime>(hireDate);
    map['status'] = Variable<bool>(status);
    return map;
  }

  EmployeeCompanion toCompanion(bool nullToAbsent) {
    return EmployeeCompanion(
      id: Value(id),
      personId: Value(personId),
      jobTitle: jobTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(jobTitle),
      hireDate: Value(hireDate),
      status: Value(status),
    );
  }

  factory EmployeeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmployeeData(
      id: serializer.fromJson<int>(json['id']),
      personId: serializer.fromJson<int>(json['personId']),
      jobTitle: serializer.fromJson<String?>(json['jobTitle']),
      hireDate: serializer.fromJson<DateTime>(json['hireDate']),
      status: serializer.fromJson<bool>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'personId': serializer.toJson<int>(personId),
      'jobTitle': serializer.toJson<String?>(jobTitle),
      'hireDate': serializer.toJson<DateTime>(hireDate),
      'status': serializer.toJson<bool>(status),
    };
  }

  EmployeeData copyWith(
          {int? id,
          int? personId,
          Value<String?> jobTitle = const Value.absent(),
          DateTime? hireDate,
          bool? status}) =>
      EmployeeData(
        id: id ?? this.id,
        personId: personId ?? this.personId,
        jobTitle: jobTitle.present ? jobTitle.value : this.jobTitle,
        hireDate: hireDate ?? this.hireDate,
        status: status ?? this.status,
      );
  EmployeeData copyWithCompanion(EmployeeCompanion data) {
    return EmployeeData(
      id: data.id.present ? data.id.value : this.id,
      personId: data.personId.present ? data.personId.value : this.personId,
      jobTitle: data.jobTitle.present ? data.jobTitle.value : this.jobTitle,
      hireDate: data.hireDate.present ? data.hireDate.value : this.hireDate,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeData(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('jobTitle: $jobTitle, ')
          ..write('hireDate: $hireDate, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, personId, jobTitle, hireDate, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeData &&
          other.id == this.id &&
          other.personId == this.personId &&
          other.jobTitle == this.jobTitle &&
          other.hireDate == this.hireDate &&
          other.status == this.status);
}

class EmployeeCompanion extends UpdateCompanion<EmployeeData> {
  final Value<int> id;
  final Value<int> personId;
  final Value<String?> jobTitle;
  final Value<DateTime> hireDate;
  final Value<bool> status;
  const EmployeeCompanion({
    this.id = const Value.absent(),
    this.personId = const Value.absent(),
    this.jobTitle = const Value.absent(),
    this.hireDate = const Value.absent(),
    this.status = const Value.absent(),
  });
  EmployeeCompanion.insert({
    this.id = const Value.absent(),
    required int personId,
    this.jobTitle = const Value.absent(),
    this.hireDate = const Value.absent(),
    this.status = const Value.absent(),
  }) : personId = Value(personId);
  static Insertable<EmployeeData> custom({
    Expression<int>? id,
    Expression<int>? personId,
    Expression<String>? jobTitle,
    Expression<DateTime>? hireDate,
    Expression<bool>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (personId != null) 'person_id': personId,
      if (jobTitle != null) 'job_title': jobTitle,
      if (hireDate != null) 'hire_date': hireDate,
      if (status != null) 'status': status,
    });
  }

  EmployeeCompanion copyWith(
      {Value<int>? id,
      Value<int>? personId,
      Value<String?>? jobTitle,
      Value<DateTime>? hireDate,
      Value<bool>? status}) {
    return EmployeeCompanion(
      id: id ?? this.id,
      personId: personId ?? this.personId,
      jobTitle: jobTitle ?? this.jobTitle,
      hireDate: hireDate ?? this.hireDate,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (personId.present) {
      map['person_id'] = Variable<int>(personId.value);
    }
    if (jobTitle.present) {
      map['job_title'] = Variable<String>(jobTitle.value);
    }
    if (hireDate.present) {
      map['hire_date'] = Variable<DateTime>(hireDate.value);
    }
    if (status.present) {
      map['status'] = Variable<bool>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeCompanion(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('jobTitle: $jobTitle, ')
          ..write('hireDate: $hireDate, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $RoleTable extends Role with TableInfo<$RoleTable, RoleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoleTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'role';
  @override
  VerificationContext validateIntegrity(Insertable<RoleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoleData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $RoleTable createAlias(String alias) {
    return $RoleTable(attachedDatabase, alias);
  }
}

class RoleData extends DataClass implements Insertable<RoleData> {
  final int id;
  final String name;
  const RoleData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  RoleCompanion toCompanion(bool nullToAbsent) {
    return RoleCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory RoleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoleData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  RoleData copyWith({int? id, String? name}) => RoleData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  RoleData copyWithCompanion(RoleCompanion data) {
    return RoleData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RoleData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoleData && other.id == this.id && other.name == this.name);
}

class RoleCompanion extends UpdateCompanion<RoleData> {
  final Value<int> id;
  final Value<String> name;
  const RoleCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  RoleCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<RoleData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  RoleCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return RoleCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoleCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PermissionTable extends Permission
    with TableInfo<$PermissionTable, PermissionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PermissionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'permission';
  @override
  VerificationContext validateIntegrity(Insertable<PermissionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PermissionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PermissionData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $PermissionTable createAlias(String alias) {
    return $PermissionTable(attachedDatabase, alias);
  }
}

class PermissionData extends DataClass implements Insertable<PermissionData> {
  final int id;
  final String name;
  const PermissionData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  PermissionCompanion toCompanion(bool nullToAbsent) {
    return PermissionCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory PermissionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PermissionData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  PermissionData copyWith({int? id, String? name}) => PermissionData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  PermissionData copyWithCompanion(PermissionCompanion data) {
    return PermissionData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PermissionData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PermissionData &&
          other.id == this.id &&
          other.name == this.name);
}

class PermissionCompanion extends UpdateCompanion<PermissionData> {
  final Value<int> id;
  final Value<String> name;
  const PermissionCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  PermissionCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<PermissionData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  PermissionCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return PermissionCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PermissionCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $RolePermissionTable extends RolePermission
    with TableInfo<$RolePermissionTable, RolePermissionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RolePermissionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _roleIdMeta = const VerificationMeta('roleId');
  @override
  late final GeneratedColumn<int> roleId = GeneratedColumn<int>(
      'role_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES role (id)'));
  static const VerificationMeta _permissionIdMeta =
      const VerificationMeta('permissionId');
  @override
  late final GeneratedColumn<int> permissionId = GeneratedColumn<int>(
      'permission_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES permission (id)'));
  @override
  List<GeneratedColumn> get $columns => [roleId, permissionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'role_permission';
  @override
  VerificationContext validateIntegrity(Insertable<RolePermissionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('role_id')) {
      context.handle(_roleIdMeta,
          roleId.isAcceptableOrUnknown(data['role_id']!, _roleIdMeta));
    } else if (isInserting) {
      context.missing(_roleIdMeta);
    }
    if (data.containsKey('permission_id')) {
      context.handle(
          _permissionIdMeta,
          permissionId.isAcceptableOrUnknown(
              data['permission_id']!, _permissionIdMeta));
    } else if (isInserting) {
      context.missing(_permissionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {roleId, permissionId};
  @override
  RolePermissionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RolePermissionData(
      roleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}role_id'])!,
      permissionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}permission_id'])!,
    );
  }

  @override
  $RolePermissionTable createAlias(String alias) {
    return $RolePermissionTable(attachedDatabase, alias);
  }
}

class RolePermissionData extends DataClass
    implements Insertable<RolePermissionData> {
  final int roleId;
  final int permissionId;
  const RolePermissionData({required this.roleId, required this.permissionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['role_id'] = Variable<int>(roleId);
    map['permission_id'] = Variable<int>(permissionId);
    return map;
  }

  RolePermissionCompanion toCompanion(bool nullToAbsent) {
    return RolePermissionCompanion(
      roleId: Value(roleId),
      permissionId: Value(permissionId),
    );
  }

  factory RolePermissionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RolePermissionData(
      roleId: serializer.fromJson<int>(json['roleId']),
      permissionId: serializer.fromJson<int>(json['permissionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'roleId': serializer.toJson<int>(roleId),
      'permissionId': serializer.toJson<int>(permissionId),
    };
  }

  RolePermissionData copyWith({int? roleId, int? permissionId}) =>
      RolePermissionData(
        roleId: roleId ?? this.roleId,
        permissionId: permissionId ?? this.permissionId,
      );
  RolePermissionData copyWithCompanion(RolePermissionCompanion data) {
    return RolePermissionData(
      roleId: data.roleId.present ? data.roleId.value : this.roleId,
      permissionId: data.permissionId.present
          ? data.permissionId.value
          : this.permissionId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RolePermissionData(')
          ..write('roleId: $roleId, ')
          ..write('permissionId: $permissionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(roleId, permissionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RolePermissionData &&
          other.roleId == this.roleId &&
          other.permissionId == this.permissionId);
}

class RolePermissionCompanion extends UpdateCompanion<RolePermissionData> {
  final Value<int> roleId;
  final Value<int> permissionId;
  final Value<int> rowid;
  const RolePermissionCompanion({
    this.roleId = const Value.absent(),
    this.permissionId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RolePermissionCompanion.insert({
    required int roleId,
    required int permissionId,
    this.rowid = const Value.absent(),
  })  : roleId = Value(roleId),
        permissionId = Value(permissionId);
  static Insertable<RolePermissionData> custom({
    Expression<int>? roleId,
    Expression<int>? permissionId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (roleId != null) 'role_id': roleId,
      if (permissionId != null) 'permission_id': permissionId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RolePermissionCompanion copyWith(
      {Value<int>? roleId, Value<int>? permissionId, Value<int>? rowid}) {
    return RolePermissionCompanion(
      roleId: roleId ?? this.roleId,
      permissionId: permissionId ?? this.permissionId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (roleId.present) {
      map['role_id'] = Variable<int>(roleId.value);
    }
    if (permissionId.present) {
      map['permission_id'] = Variable<int>(permissionId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RolePermissionCompanion(')
          ..write('roleId: $roleId, ')
          ..write('permissionId: $permissionId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserAccountTable extends UserAccount
    with TableInfo<$UserAccountTable, UserAccountData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserAccountTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _personIdMeta =
      const VerificationMeta('personId');
  @override
  late final GeneratedColumn<int> personId = GeneratedColumn<int>(
      'person_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES person (id)'));
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordHashMeta =
      const VerificationMeta('passwordHash');
  @override
  late final GeneratedColumn<String> passwordHash = GeneratedColumn<String>(
      'password_hash', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roleIdMeta = const VerificationMeta('roleId');
  @override
  late final GeneratedColumn<int> roleId = GeneratedColumn<int>(
      'role_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES role (id)'));
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, personId, username, passwordHash, roleId, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_account';
  @override
  VerificationContext validateIntegrity(Insertable<UserAccountData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('person_id')) {
      context.handle(_personIdMeta,
          personId.isAcceptableOrUnknown(data['person_id']!, _personIdMeta));
    } else if (isInserting) {
      context.missing(_personIdMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password_hash')) {
      context.handle(
          _passwordHashMeta,
          passwordHash.isAcceptableOrUnknown(
              data['password_hash']!, _passwordHashMeta));
    } else if (isInserting) {
      context.missing(_passwordHashMeta);
    }
    if (data.containsKey('role_id')) {
      context.handle(_roleIdMeta,
          roleId.isAcceptableOrUnknown(data['role_id']!, _roleIdMeta));
    } else if (isInserting) {
      context.missing(_roleIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserAccountData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserAccountData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      personId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}person_id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      passwordHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password_hash'])!,
      roleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}role_id'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $UserAccountTable createAlias(String alias) {
    return $UserAccountTable(attachedDatabase, alias);
  }
}

class UserAccountData extends DataClass implements Insertable<UserAccountData> {
  final int id;
  final int personId;
  final String username;
  final String passwordHash;
  final int roleId;
  final bool isActive;
  const UserAccountData(
      {required this.id,
      required this.personId,
      required this.username,
      required this.passwordHash,
      required this.roleId,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['person_id'] = Variable<int>(personId);
    map['username'] = Variable<String>(username);
    map['password_hash'] = Variable<String>(passwordHash);
    map['role_id'] = Variable<int>(roleId);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  UserAccountCompanion toCompanion(bool nullToAbsent) {
    return UserAccountCompanion(
      id: Value(id),
      personId: Value(personId),
      username: Value(username),
      passwordHash: Value(passwordHash),
      roleId: Value(roleId),
      isActive: Value(isActive),
    );
  }

  factory UserAccountData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserAccountData(
      id: serializer.fromJson<int>(json['id']),
      personId: serializer.fromJson<int>(json['personId']),
      username: serializer.fromJson<String>(json['username']),
      passwordHash: serializer.fromJson<String>(json['passwordHash']),
      roleId: serializer.fromJson<int>(json['roleId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'personId': serializer.toJson<int>(personId),
      'username': serializer.toJson<String>(username),
      'passwordHash': serializer.toJson<String>(passwordHash),
      'roleId': serializer.toJson<int>(roleId),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  UserAccountData copyWith(
          {int? id,
          int? personId,
          String? username,
          String? passwordHash,
          int? roleId,
          bool? isActive}) =>
      UserAccountData(
        id: id ?? this.id,
        personId: personId ?? this.personId,
        username: username ?? this.username,
        passwordHash: passwordHash ?? this.passwordHash,
        roleId: roleId ?? this.roleId,
        isActive: isActive ?? this.isActive,
      );
  UserAccountData copyWithCompanion(UserAccountCompanion data) {
    return UserAccountData(
      id: data.id.present ? data.id.value : this.id,
      personId: data.personId.present ? data.personId.value : this.personId,
      username: data.username.present ? data.username.value : this.username,
      passwordHash: data.passwordHash.present
          ? data.passwordHash.value
          : this.passwordHash,
      roleId: data.roleId.present ? data.roleId.value : this.roleId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserAccountData(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('username: $username, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('roleId: $roleId, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, personId, username, passwordHash, roleId, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserAccountData &&
          other.id == this.id &&
          other.personId == this.personId &&
          other.username == this.username &&
          other.passwordHash == this.passwordHash &&
          other.roleId == this.roleId &&
          other.isActive == this.isActive);
}

class UserAccountCompanion extends UpdateCompanion<UserAccountData> {
  final Value<int> id;
  final Value<int> personId;
  final Value<String> username;
  final Value<String> passwordHash;
  final Value<int> roleId;
  final Value<bool> isActive;
  const UserAccountCompanion({
    this.id = const Value.absent(),
    this.personId = const Value.absent(),
    this.username = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.roleId = const Value.absent(),
    this.isActive = const Value.absent(),
  });
  UserAccountCompanion.insert({
    this.id = const Value.absent(),
    required int personId,
    required String username,
    required String passwordHash,
    required int roleId,
    this.isActive = const Value.absent(),
  })  : personId = Value(personId),
        username = Value(username),
        passwordHash = Value(passwordHash),
        roleId = Value(roleId);
  static Insertable<UserAccountData> custom({
    Expression<int>? id,
    Expression<int>? personId,
    Expression<String>? username,
    Expression<String>? passwordHash,
    Expression<int>? roleId,
    Expression<bool>? isActive,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (personId != null) 'person_id': personId,
      if (username != null) 'username': username,
      if (passwordHash != null) 'password_hash': passwordHash,
      if (roleId != null) 'role_id': roleId,
      if (isActive != null) 'is_active': isActive,
    });
  }

  UserAccountCompanion copyWith(
      {Value<int>? id,
      Value<int>? personId,
      Value<String>? username,
      Value<String>? passwordHash,
      Value<int>? roleId,
      Value<bool>? isActive}) {
    return UserAccountCompanion(
      id: id ?? this.id,
      personId: personId ?? this.personId,
      username: username ?? this.username,
      passwordHash: passwordHash ?? this.passwordHash,
      roleId: roleId ?? this.roleId,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (personId.present) {
      map['person_id'] = Variable<int>(personId.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (passwordHash.present) {
      map['password_hash'] = Variable<String>(passwordHash.value);
    }
    if (roleId.present) {
      map['role_id'] = Variable<int>(roleId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserAccountCompanion(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('username: $username, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('roleId: $roleId, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }
}

class $SubjectTable extends Subject with TableInfo<$SubjectTable, SubjectData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubjectTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns => [id, name, code, description, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'subject';
  @override
  VerificationContext validateIntegrity(Insertable<SubjectData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SubjectData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SubjectData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $SubjectTable createAlias(String alias) {
    return $SubjectTable(attachedDatabase, alias);
  }
}

class SubjectData extends DataClass implements Insertable<SubjectData> {
  final int id;
  final String name;
  final String? code;
  final String? description;
  final bool isActive;
  const SubjectData(
      {required this.id,
      required this.name,
      this.code,
      this.description,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  SubjectCompanion toCompanion(bool nullToAbsent) {
    return SubjectCompanion(
      id: Value(id),
      name: Value(name),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isActive: Value(isActive),
    );
  }

  factory SubjectData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SubjectData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      code: serializer.fromJson<String?>(json['code']),
      description: serializer.fromJson<String?>(json['description']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'code': serializer.toJson<String?>(code),
      'description': serializer.toJson<String?>(description),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  SubjectData copyWith(
          {int? id,
          String? name,
          Value<String?> code = const Value.absent(),
          Value<String?> description = const Value.absent(),
          bool? isActive}) =>
      SubjectData(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code.present ? code.value : this.code,
        description: description.present ? description.value : this.description,
        isActive: isActive ?? this.isActive,
      );
  SubjectData copyWithCompanion(SubjectCompanion data) {
    return SubjectData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      code: data.code.present ? data.code.value : this.code,
      description:
          data.description.present ? data.description.value : this.description,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SubjectData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('description: $description, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, code, description, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubjectData &&
          other.id == this.id &&
          other.name == this.name &&
          other.code == this.code &&
          other.description == this.description &&
          other.isActive == this.isActive);
}

class SubjectCompanion extends UpdateCompanion<SubjectData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> code;
  final Value<String?> description;
  final Value<bool> isActive;
  const SubjectCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.code = const Value.absent(),
    this.description = const Value.absent(),
    this.isActive = const Value.absent(),
  });
  SubjectCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.code = const Value.absent(),
    this.description = const Value.absent(),
    this.isActive = const Value.absent(),
  }) : name = Value(name);
  static Insertable<SubjectData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? code,
    Expression<String>? description,
    Expression<bool>? isActive,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (code != null) 'code': code,
      if (description != null) 'description': description,
      if (isActive != null) 'is_active': isActive,
    });
  }

  SubjectCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? code,
      Value<String?>? description,
      Value<bool>? isActive}) {
    return SubjectCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubjectCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('description: $description, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }
}

class $ClassroomTable extends Classroom
    with TableInfo<$ClassroomTable, ClassroomData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClassroomTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gradeLevelMeta =
      const VerificationMeta('gradeLevel');
  @override
  late final GeneratedColumn<String> gradeLevel = GeneratedColumn<String>(
      'grade_level', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _capacityMeta =
      const VerificationMeta('capacity');
  @override
  late final GeneratedColumn<int> capacity = GeneratedColumn<int>(
      'capacity', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, code, gradeLevel, capacity, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'classroom';
  @override
  VerificationContext validateIntegrity(Insertable<ClassroomData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('grade_level')) {
      context.handle(
          _gradeLevelMeta,
          gradeLevel.isAcceptableOrUnknown(
              data['grade_level']!, _gradeLevelMeta));
    }
    if (data.containsKey('capacity')) {
      context.handle(_capacityMeta,
          capacity.isAcceptableOrUnknown(data['capacity']!, _capacityMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClassroomData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClassroomData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      gradeLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade_level']),
      capacity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}capacity']),
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $ClassroomTable createAlias(String alias) {
    return $ClassroomTable(attachedDatabase, alias);
  }
}

class ClassroomData extends DataClass implements Insertable<ClassroomData> {
  final int id;
  final String name;
  final String? code;
  final String? gradeLevel;
  final int? capacity;
  final bool isActive;
  const ClassroomData(
      {required this.id,
      required this.name,
      this.code,
      this.gradeLevel,
      this.capacity,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || gradeLevel != null) {
      map['grade_level'] = Variable<String>(gradeLevel);
    }
    if (!nullToAbsent || capacity != null) {
      map['capacity'] = Variable<int>(capacity);
    }
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  ClassroomCompanion toCompanion(bool nullToAbsent) {
    return ClassroomCompanion(
      id: Value(id),
      name: Value(name),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      gradeLevel: gradeLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(gradeLevel),
      capacity: capacity == null && nullToAbsent
          ? const Value.absent()
          : Value(capacity),
      isActive: Value(isActive),
    );
  }

  factory ClassroomData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClassroomData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      code: serializer.fromJson<String?>(json['code']),
      gradeLevel: serializer.fromJson<String?>(json['gradeLevel']),
      capacity: serializer.fromJson<int?>(json['capacity']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'code': serializer.toJson<String?>(code),
      'gradeLevel': serializer.toJson<String?>(gradeLevel),
      'capacity': serializer.toJson<int?>(capacity),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  ClassroomData copyWith(
          {int? id,
          String? name,
          Value<String?> code = const Value.absent(),
          Value<String?> gradeLevel = const Value.absent(),
          Value<int?> capacity = const Value.absent(),
          bool? isActive}) =>
      ClassroomData(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code.present ? code.value : this.code,
        gradeLevel: gradeLevel.present ? gradeLevel.value : this.gradeLevel,
        capacity: capacity.present ? capacity.value : this.capacity,
        isActive: isActive ?? this.isActive,
      );
  ClassroomData copyWithCompanion(ClassroomCompanion data) {
    return ClassroomData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      code: data.code.present ? data.code.value : this.code,
      gradeLevel:
          data.gradeLevel.present ? data.gradeLevel.value : this.gradeLevel,
      capacity: data.capacity.present ? data.capacity.value : this.capacity,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClassroomData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('gradeLevel: $gradeLevel, ')
          ..write('capacity: $capacity, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, code, gradeLevel, capacity, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClassroomData &&
          other.id == this.id &&
          other.name == this.name &&
          other.code == this.code &&
          other.gradeLevel == this.gradeLevel &&
          other.capacity == this.capacity &&
          other.isActive == this.isActive);
}

class ClassroomCompanion extends UpdateCompanion<ClassroomData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> code;
  final Value<String?> gradeLevel;
  final Value<int?> capacity;
  final Value<bool> isActive;
  const ClassroomCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.code = const Value.absent(),
    this.gradeLevel = const Value.absent(),
    this.capacity = const Value.absent(),
    this.isActive = const Value.absent(),
  });
  ClassroomCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.code = const Value.absent(),
    this.gradeLevel = const Value.absent(),
    this.capacity = const Value.absent(),
    this.isActive = const Value.absent(),
  }) : name = Value(name);
  static Insertable<ClassroomData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? code,
    Expression<String>? gradeLevel,
    Expression<int>? capacity,
    Expression<bool>? isActive,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (code != null) 'code': code,
      if (gradeLevel != null) 'grade_level': gradeLevel,
      if (capacity != null) 'capacity': capacity,
      if (isActive != null) 'is_active': isActive,
    });
  }

  ClassroomCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? code,
      Value<String?>? gradeLevel,
      Value<int?>? capacity,
      Value<bool>? isActive}) {
    return ClassroomCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      gradeLevel: gradeLevel ?? this.gradeLevel,
      capacity: capacity ?? this.capacity,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (gradeLevel.present) {
      map['grade_level'] = Variable<String>(gradeLevel.value);
    }
    if (capacity.present) {
      map['capacity'] = Variable<int>(capacity.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClassroomCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('gradeLevel: $gradeLevel, ')
          ..write('capacity: $capacity, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }
}

class $ClassScheduleTable extends ClassSchedule
    with TableInfo<$ClassScheduleTable, ClassScheduleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClassScheduleTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _classroomIdMeta =
      const VerificationMeta('classroomId');
  @override
  late final GeneratedColumn<int> classroomId = GeneratedColumn<int>(
      'classroom_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES classroom (id)'));
  static const VerificationMeta _subjectIdMeta =
      const VerificationMeta('subjectId');
  @override
  late final GeneratedColumn<int> subjectId = GeneratedColumn<int>(
      'subject_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES subject (id)'));
  static const VerificationMeta _teacherIdMeta =
      const VerificationMeta('teacherId');
  @override
  late final GeneratedColumn<int> teacherId = GeneratedColumn<int>(
      'teacher_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES teacher (id)'));
  static const VerificationMeta _dayOfWeekMeta =
      const VerificationMeta('dayOfWeek');
  @override
  late final GeneratedColumn<int> dayOfWeek = GeneratedColumn<int>(
      'day_of_week', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<String> startTime = GeneratedColumn<String>(
      'start_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<String> endTime = GeneratedColumn<String>(
      'end_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _academicYearMeta =
      const VerificationMeta('academicYear');
  @override
  late final GeneratedColumn<String> academicYear = GeneratedColumn<String>(
      'academic_year', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        classroomId,
        subjectId,
        teacherId,
        dayOfWeek,
        startTime,
        endTime,
        academicYear
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'class_schedule';
  @override
  VerificationContext validateIntegrity(Insertable<ClassScheduleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('classroom_id')) {
      context.handle(
          _classroomIdMeta,
          classroomId.isAcceptableOrUnknown(
              data['classroom_id']!, _classroomIdMeta));
    } else if (isInserting) {
      context.missing(_classroomIdMeta);
    }
    if (data.containsKey('subject_id')) {
      context.handle(_subjectIdMeta,
          subjectId.isAcceptableOrUnknown(data['subject_id']!, _subjectIdMeta));
    } else if (isInserting) {
      context.missing(_subjectIdMeta);
    }
    if (data.containsKey('teacher_id')) {
      context.handle(_teacherIdMeta,
          teacherId.isAcceptableOrUnknown(data['teacher_id']!, _teacherIdMeta));
    } else if (isInserting) {
      context.missing(_teacherIdMeta);
    }
    if (data.containsKey('day_of_week')) {
      context.handle(
          _dayOfWeekMeta,
          dayOfWeek.isAcceptableOrUnknown(
              data['day_of_week']!, _dayOfWeekMeta));
    } else if (isInserting) {
      context.missing(_dayOfWeekMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    if (data.containsKey('academic_year')) {
      context.handle(
          _academicYearMeta,
          academicYear.isAcceptableOrUnknown(
              data['academic_year']!, _academicYearMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClassScheduleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClassScheduleData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      classroomId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}classroom_id'])!,
      subjectId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subject_id'])!,
      teacherId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}teacher_id'])!,
      dayOfWeek: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}day_of_week'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}start_time'])!,
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}end_time'])!,
      academicYear: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}academic_year']),
    );
  }

  @override
  $ClassScheduleTable createAlias(String alias) {
    return $ClassScheduleTable(attachedDatabase, alias);
  }
}

class ClassScheduleData extends DataClass
    implements Insertable<ClassScheduleData> {
  final int id;
  final int classroomId;
  final int subjectId;
  final int teacherId;
  final int dayOfWeek;
  final String startTime;
  final String endTime;
  final String? academicYear;
  const ClassScheduleData(
      {required this.id,
      required this.classroomId,
      required this.subjectId,
      required this.teacherId,
      required this.dayOfWeek,
      required this.startTime,
      required this.endTime,
      this.academicYear});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['classroom_id'] = Variable<int>(classroomId);
    map['subject_id'] = Variable<int>(subjectId);
    map['teacher_id'] = Variable<int>(teacherId);
    map['day_of_week'] = Variable<int>(dayOfWeek);
    map['start_time'] = Variable<String>(startTime);
    map['end_time'] = Variable<String>(endTime);
    if (!nullToAbsent || academicYear != null) {
      map['academic_year'] = Variable<String>(academicYear);
    }
    return map;
  }

  ClassScheduleCompanion toCompanion(bool nullToAbsent) {
    return ClassScheduleCompanion(
      id: Value(id),
      classroomId: Value(classroomId),
      subjectId: Value(subjectId),
      teacherId: Value(teacherId),
      dayOfWeek: Value(dayOfWeek),
      startTime: Value(startTime),
      endTime: Value(endTime),
      academicYear: academicYear == null && nullToAbsent
          ? const Value.absent()
          : Value(academicYear),
    );
  }

  factory ClassScheduleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClassScheduleData(
      id: serializer.fromJson<int>(json['id']),
      classroomId: serializer.fromJson<int>(json['classroomId']),
      subjectId: serializer.fromJson<int>(json['subjectId']),
      teacherId: serializer.fromJson<int>(json['teacherId']),
      dayOfWeek: serializer.fromJson<int>(json['dayOfWeek']),
      startTime: serializer.fromJson<String>(json['startTime']),
      endTime: serializer.fromJson<String>(json['endTime']),
      academicYear: serializer.fromJson<String?>(json['academicYear']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'classroomId': serializer.toJson<int>(classroomId),
      'subjectId': serializer.toJson<int>(subjectId),
      'teacherId': serializer.toJson<int>(teacherId),
      'dayOfWeek': serializer.toJson<int>(dayOfWeek),
      'startTime': serializer.toJson<String>(startTime),
      'endTime': serializer.toJson<String>(endTime),
      'academicYear': serializer.toJson<String?>(academicYear),
    };
  }

  ClassScheduleData copyWith(
          {int? id,
          int? classroomId,
          int? subjectId,
          int? teacherId,
          int? dayOfWeek,
          String? startTime,
          String? endTime,
          Value<String?> academicYear = const Value.absent()}) =>
      ClassScheduleData(
        id: id ?? this.id,
        classroomId: classroomId ?? this.classroomId,
        subjectId: subjectId ?? this.subjectId,
        teacherId: teacherId ?? this.teacherId,
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        academicYear:
            academicYear.present ? academicYear.value : this.academicYear,
      );
  ClassScheduleData copyWithCompanion(ClassScheduleCompanion data) {
    return ClassScheduleData(
      id: data.id.present ? data.id.value : this.id,
      classroomId:
          data.classroomId.present ? data.classroomId.value : this.classroomId,
      subjectId: data.subjectId.present ? data.subjectId.value : this.subjectId,
      teacherId: data.teacherId.present ? data.teacherId.value : this.teacherId,
      dayOfWeek: data.dayOfWeek.present ? data.dayOfWeek.value : this.dayOfWeek,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      academicYear: data.academicYear.present
          ? data.academicYear.value
          : this.academicYear,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClassScheduleData(')
          ..write('id: $id, ')
          ..write('classroomId: $classroomId, ')
          ..write('subjectId: $subjectId, ')
          ..write('teacherId: $teacherId, ')
          ..write('dayOfWeek: $dayOfWeek, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('academicYear: $academicYear')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, classroomId, subjectId, teacherId,
      dayOfWeek, startTime, endTime, academicYear);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClassScheduleData &&
          other.id == this.id &&
          other.classroomId == this.classroomId &&
          other.subjectId == this.subjectId &&
          other.teacherId == this.teacherId &&
          other.dayOfWeek == this.dayOfWeek &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.academicYear == this.academicYear);
}

class ClassScheduleCompanion extends UpdateCompanion<ClassScheduleData> {
  final Value<int> id;
  final Value<int> classroomId;
  final Value<int> subjectId;
  final Value<int> teacherId;
  final Value<int> dayOfWeek;
  final Value<String> startTime;
  final Value<String> endTime;
  final Value<String?> academicYear;
  const ClassScheduleCompanion({
    this.id = const Value.absent(),
    this.classroomId = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.teacherId = const Value.absent(),
    this.dayOfWeek = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.academicYear = const Value.absent(),
  });
  ClassScheduleCompanion.insert({
    this.id = const Value.absent(),
    required int classroomId,
    required int subjectId,
    required int teacherId,
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    this.academicYear = const Value.absent(),
  })  : classroomId = Value(classroomId),
        subjectId = Value(subjectId),
        teacherId = Value(teacherId),
        dayOfWeek = Value(dayOfWeek),
        startTime = Value(startTime),
        endTime = Value(endTime);
  static Insertable<ClassScheduleData> custom({
    Expression<int>? id,
    Expression<int>? classroomId,
    Expression<int>? subjectId,
    Expression<int>? teacherId,
    Expression<int>? dayOfWeek,
    Expression<String>? startTime,
    Expression<String>? endTime,
    Expression<String>? academicYear,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (classroomId != null) 'classroom_id': classroomId,
      if (subjectId != null) 'subject_id': subjectId,
      if (teacherId != null) 'teacher_id': teacherId,
      if (dayOfWeek != null) 'day_of_week': dayOfWeek,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (academicYear != null) 'academic_year': academicYear,
    });
  }

  ClassScheduleCompanion copyWith(
      {Value<int>? id,
      Value<int>? classroomId,
      Value<int>? subjectId,
      Value<int>? teacherId,
      Value<int>? dayOfWeek,
      Value<String>? startTime,
      Value<String>? endTime,
      Value<String?>? academicYear}) {
    return ClassScheduleCompanion(
      id: id ?? this.id,
      classroomId: classroomId ?? this.classroomId,
      subjectId: subjectId ?? this.subjectId,
      teacherId: teacherId ?? this.teacherId,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      academicYear: academicYear ?? this.academicYear,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (classroomId.present) {
      map['classroom_id'] = Variable<int>(classroomId.value);
    }
    if (subjectId.present) {
      map['subject_id'] = Variable<int>(subjectId.value);
    }
    if (teacherId.present) {
      map['teacher_id'] = Variable<int>(teacherId.value);
    }
    if (dayOfWeek.present) {
      map['day_of_week'] = Variable<int>(dayOfWeek.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<String>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<String>(endTime.value);
    }
    if (academicYear.present) {
      map['academic_year'] = Variable<String>(academicYear.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClassScheduleCompanion(')
          ..write('id: $id, ')
          ..write('classroomId: $classroomId, ')
          ..write('subjectId: $subjectId, ')
          ..write('teacherId: $teacherId, ')
          ..write('dayOfWeek: $dayOfWeek, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('academicYear: $academicYear')
          ..write(')'))
        .toString();
  }
}

class $ExamTable extends Exam with TableInfo<$ExamTable, ExamData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExamTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _subjectIdMeta =
      const VerificationMeta('subjectId');
  @override
  late final GeneratedColumn<int> subjectId = GeneratedColumn<int>(
      'subject_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES subject (id)'));
  static const VerificationMeta _classroomIdMeta =
      const VerificationMeta('classroomId');
  @override
  late final GeneratedColumn<int> classroomId = GeneratedColumn<int>(
      'classroom_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES classroom (id)'));
  static const VerificationMeta _examDateMeta =
      const VerificationMeta('examDate');
  @override
  late final GeneratedColumn<DateTime> examDate = GeneratedColumn<DateTime>(
      'exam_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _examTypeMeta =
      const VerificationMeta('examType');
  @override
  late final GeneratedColumn<String> examType = GeneratedColumn<String>(
      'exam_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _maxScoreMeta =
      const VerificationMeta('maxScore');
  @override
  late final GeneratedColumn<double> maxScore = GeneratedColumn<double>(
      'max_score', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, subjectId, classroomId, examDate, examType, maxScore, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exam';
  @override
  VerificationContext validateIntegrity(Insertable<ExamData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('subject_id')) {
      context.handle(_subjectIdMeta,
          subjectId.isAcceptableOrUnknown(data['subject_id']!, _subjectIdMeta));
    } else if (isInserting) {
      context.missing(_subjectIdMeta);
    }
    if (data.containsKey('classroom_id')) {
      context.handle(
          _classroomIdMeta,
          classroomId.isAcceptableOrUnknown(
              data['classroom_id']!, _classroomIdMeta));
    } else if (isInserting) {
      context.missing(_classroomIdMeta);
    }
    if (data.containsKey('exam_date')) {
      context.handle(_examDateMeta,
          examDate.isAcceptableOrUnknown(data['exam_date']!, _examDateMeta));
    } else if (isInserting) {
      context.missing(_examDateMeta);
    }
    if (data.containsKey('exam_type')) {
      context.handle(_examTypeMeta,
          examType.isAcceptableOrUnknown(data['exam_type']!, _examTypeMeta));
    }
    if (data.containsKey('max_score')) {
      context.handle(_maxScoreMeta,
          maxScore.isAcceptableOrUnknown(data['max_score']!, _maxScoreMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExamData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExamData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      subjectId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subject_id'])!,
      classroomId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}classroom_id'])!,
      examDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}exam_date'])!,
      examType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}exam_type']),
      maxScore: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}max_score']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $ExamTable createAlias(String alias) {
    return $ExamTable(attachedDatabase, alias);
  }
}

class ExamData extends DataClass implements Insertable<ExamData> {
  final int id;
  final int subjectId;
  final int classroomId;
  final DateTime examDate;
  final String? examType;
  final double? maxScore;
  final String? description;
  const ExamData(
      {required this.id,
      required this.subjectId,
      required this.classroomId,
      required this.examDate,
      this.examType,
      this.maxScore,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['subject_id'] = Variable<int>(subjectId);
    map['classroom_id'] = Variable<int>(classroomId);
    map['exam_date'] = Variable<DateTime>(examDate);
    if (!nullToAbsent || examType != null) {
      map['exam_type'] = Variable<String>(examType);
    }
    if (!nullToAbsent || maxScore != null) {
      map['max_score'] = Variable<double>(maxScore);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  ExamCompanion toCompanion(bool nullToAbsent) {
    return ExamCompanion(
      id: Value(id),
      subjectId: Value(subjectId),
      classroomId: Value(classroomId),
      examDate: Value(examDate),
      examType: examType == null && nullToAbsent
          ? const Value.absent()
          : Value(examType),
      maxScore: maxScore == null && nullToAbsent
          ? const Value.absent()
          : Value(maxScore),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory ExamData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExamData(
      id: serializer.fromJson<int>(json['id']),
      subjectId: serializer.fromJson<int>(json['subjectId']),
      classroomId: serializer.fromJson<int>(json['classroomId']),
      examDate: serializer.fromJson<DateTime>(json['examDate']),
      examType: serializer.fromJson<String?>(json['examType']),
      maxScore: serializer.fromJson<double?>(json['maxScore']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'subjectId': serializer.toJson<int>(subjectId),
      'classroomId': serializer.toJson<int>(classroomId),
      'examDate': serializer.toJson<DateTime>(examDate),
      'examType': serializer.toJson<String?>(examType),
      'maxScore': serializer.toJson<double?>(maxScore),
      'description': serializer.toJson<String?>(description),
    };
  }

  ExamData copyWith(
          {int? id,
          int? subjectId,
          int? classroomId,
          DateTime? examDate,
          Value<String?> examType = const Value.absent(),
          Value<double?> maxScore = const Value.absent(),
          Value<String?> description = const Value.absent()}) =>
      ExamData(
        id: id ?? this.id,
        subjectId: subjectId ?? this.subjectId,
        classroomId: classroomId ?? this.classroomId,
        examDate: examDate ?? this.examDate,
        examType: examType.present ? examType.value : this.examType,
        maxScore: maxScore.present ? maxScore.value : this.maxScore,
        description: description.present ? description.value : this.description,
      );
  ExamData copyWithCompanion(ExamCompanion data) {
    return ExamData(
      id: data.id.present ? data.id.value : this.id,
      subjectId: data.subjectId.present ? data.subjectId.value : this.subjectId,
      classroomId:
          data.classroomId.present ? data.classroomId.value : this.classroomId,
      examDate: data.examDate.present ? data.examDate.value : this.examDate,
      examType: data.examType.present ? data.examType.value : this.examType,
      maxScore: data.maxScore.present ? data.maxScore.value : this.maxScore,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExamData(')
          ..write('id: $id, ')
          ..write('subjectId: $subjectId, ')
          ..write('classroomId: $classroomId, ')
          ..write('examDate: $examDate, ')
          ..write('examType: $examType, ')
          ..write('maxScore: $maxScore, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, subjectId, classroomId, examDate, examType, maxScore, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExamData &&
          other.id == this.id &&
          other.subjectId == this.subjectId &&
          other.classroomId == this.classroomId &&
          other.examDate == this.examDate &&
          other.examType == this.examType &&
          other.maxScore == this.maxScore &&
          other.description == this.description);
}

class ExamCompanion extends UpdateCompanion<ExamData> {
  final Value<int> id;
  final Value<int> subjectId;
  final Value<int> classroomId;
  final Value<DateTime> examDate;
  final Value<String?> examType;
  final Value<double?> maxScore;
  final Value<String?> description;
  const ExamCompanion({
    this.id = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.classroomId = const Value.absent(),
    this.examDate = const Value.absent(),
    this.examType = const Value.absent(),
    this.maxScore = const Value.absent(),
    this.description = const Value.absent(),
  });
  ExamCompanion.insert({
    this.id = const Value.absent(),
    required int subjectId,
    required int classroomId,
    required DateTime examDate,
    this.examType = const Value.absent(),
    this.maxScore = const Value.absent(),
    this.description = const Value.absent(),
  })  : subjectId = Value(subjectId),
        classroomId = Value(classroomId),
        examDate = Value(examDate);
  static Insertable<ExamData> custom({
    Expression<int>? id,
    Expression<int>? subjectId,
    Expression<int>? classroomId,
    Expression<DateTime>? examDate,
    Expression<String>? examType,
    Expression<double>? maxScore,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (subjectId != null) 'subject_id': subjectId,
      if (classroomId != null) 'classroom_id': classroomId,
      if (examDate != null) 'exam_date': examDate,
      if (examType != null) 'exam_type': examType,
      if (maxScore != null) 'max_score': maxScore,
      if (description != null) 'description': description,
    });
  }

  ExamCompanion copyWith(
      {Value<int>? id,
      Value<int>? subjectId,
      Value<int>? classroomId,
      Value<DateTime>? examDate,
      Value<String?>? examType,
      Value<double?>? maxScore,
      Value<String?>? description}) {
    return ExamCompanion(
      id: id ?? this.id,
      subjectId: subjectId ?? this.subjectId,
      classroomId: classroomId ?? this.classroomId,
      examDate: examDate ?? this.examDate,
      examType: examType ?? this.examType,
      maxScore: maxScore ?? this.maxScore,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (subjectId.present) {
      map['subject_id'] = Variable<int>(subjectId.value);
    }
    if (classroomId.present) {
      map['classroom_id'] = Variable<int>(classroomId.value);
    }
    if (examDate.present) {
      map['exam_date'] = Variable<DateTime>(examDate.value);
    }
    if (examType.present) {
      map['exam_type'] = Variable<String>(examType.value);
    }
    if (maxScore.present) {
      map['max_score'] = Variable<double>(maxScore.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExamCompanion(')
          ..write('id: $id, ')
          ..write('subjectId: $subjectId, ')
          ..write('classroomId: $classroomId, ')
          ..write('examDate: $examDate, ')
          ..write('examType: $examType, ')
          ..write('maxScore: $maxScore, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $GradeTable extends Grade with TableInfo<$GradeTable, GradeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GradeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES student (id)'));
  static const VerificationMeta _examIdMeta = const VerificationMeta('examId');
  @override
  late final GeneratedColumn<int> examId = GeneratedColumn<int>(
      'exam_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES exam (id)'));
  static const VerificationMeta _subjectIdMeta =
      const VerificationMeta('subjectId');
  @override
  late final GeneratedColumn<int> subjectId = GeneratedColumn<int>(
      'subject_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES subject (id)'));
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<double> score = GeneratedColumn<double>(
      'score', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _gradeLetterMeta =
      const VerificationMeta('gradeLetter');
  @override
  late final GeneratedColumn<String> gradeLetter = GeneratedColumn<String>(
      'grade_letter', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, studentId, examId, subjectId, score, gradeLetter, notes];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'grade';
  @override
  VerificationContext validateIntegrity(Insertable<GradeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('exam_id')) {
      context.handle(_examIdMeta,
          examId.isAcceptableOrUnknown(data['exam_id']!, _examIdMeta));
    } else if (isInserting) {
      context.missing(_examIdMeta);
    }
    if (data.containsKey('subject_id')) {
      context.handle(_subjectIdMeta,
          subjectId.isAcceptableOrUnknown(data['subject_id']!, _subjectIdMeta));
    } else if (isInserting) {
      context.missing(_subjectIdMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
          _scoreMeta, score.isAcceptableOrUnknown(data['score']!, _scoreMeta));
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('grade_letter')) {
      context.handle(
          _gradeLetterMeta,
          gradeLetter.isAcceptableOrUnknown(
              data['grade_letter']!, _gradeLetterMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GradeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GradeData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      examId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exam_id'])!,
      subjectId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subject_id'])!,
      score: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}score'])!,
      gradeLetter: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade_letter']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $GradeTable createAlias(String alias) {
    return $GradeTable(attachedDatabase, alias);
  }
}

class GradeData extends DataClass implements Insertable<GradeData> {
  final int id;
  final int studentId;
  final int examId;
  final int subjectId;
  final double score;
  final String? gradeLetter;
  final String? notes;
  const GradeData(
      {required this.id,
      required this.studentId,
      required this.examId,
      required this.subjectId,
      required this.score,
      this.gradeLetter,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<int>(studentId);
    map['exam_id'] = Variable<int>(examId);
    map['subject_id'] = Variable<int>(subjectId);
    map['score'] = Variable<double>(score);
    if (!nullToAbsent || gradeLetter != null) {
      map['grade_letter'] = Variable<String>(gradeLetter);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  GradeCompanion toCompanion(bool nullToAbsent) {
    return GradeCompanion(
      id: Value(id),
      studentId: Value(studentId),
      examId: Value(examId),
      subjectId: Value(subjectId),
      score: Value(score),
      gradeLetter: gradeLetter == null && nullToAbsent
          ? const Value.absent()
          : Value(gradeLetter),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory GradeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GradeData(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<int>(json['studentId']),
      examId: serializer.fromJson<int>(json['examId']),
      subjectId: serializer.fromJson<int>(json['subjectId']),
      score: serializer.fromJson<double>(json['score']),
      gradeLetter: serializer.fromJson<String?>(json['gradeLetter']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<int>(studentId),
      'examId': serializer.toJson<int>(examId),
      'subjectId': serializer.toJson<int>(subjectId),
      'score': serializer.toJson<double>(score),
      'gradeLetter': serializer.toJson<String?>(gradeLetter),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  GradeData copyWith(
          {int? id,
          int? studentId,
          int? examId,
          int? subjectId,
          double? score,
          Value<String?> gradeLetter = const Value.absent(),
          Value<String?> notes = const Value.absent()}) =>
      GradeData(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        examId: examId ?? this.examId,
        subjectId: subjectId ?? this.subjectId,
        score: score ?? this.score,
        gradeLetter: gradeLetter.present ? gradeLetter.value : this.gradeLetter,
        notes: notes.present ? notes.value : this.notes,
      );
  GradeData copyWithCompanion(GradeCompanion data) {
    return GradeData(
      id: data.id.present ? data.id.value : this.id,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      examId: data.examId.present ? data.examId.value : this.examId,
      subjectId: data.subjectId.present ? data.subjectId.value : this.subjectId,
      score: data.score.present ? data.score.value : this.score,
      gradeLetter:
          data.gradeLetter.present ? data.gradeLetter.value : this.gradeLetter,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GradeData(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('examId: $examId, ')
          ..write('subjectId: $subjectId, ')
          ..write('score: $score, ')
          ..write('gradeLetter: $gradeLetter, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, studentId, examId, subjectId, score, gradeLetter, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GradeData &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.examId == this.examId &&
          other.subjectId == this.subjectId &&
          other.score == this.score &&
          other.gradeLetter == this.gradeLetter &&
          other.notes == this.notes);
}

class GradeCompanion extends UpdateCompanion<GradeData> {
  final Value<int> id;
  final Value<int> studentId;
  final Value<int> examId;
  final Value<int> subjectId;
  final Value<double> score;
  final Value<String?> gradeLetter;
  final Value<String?> notes;
  const GradeCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.examId = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.score = const Value.absent(),
    this.gradeLetter = const Value.absent(),
    this.notes = const Value.absent(),
  });
  GradeCompanion.insert({
    this.id = const Value.absent(),
    required int studentId,
    required int examId,
    required int subjectId,
    required double score,
    this.gradeLetter = const Value.absent(),
    this.notes = const Value.absent(),
  })  : studentId = Value(studentId),
        examId = Value(examId),
        subjectId = Value(subjectId),
        score = Value(score);
  static Insertable<GradeData> custom({
    Expression<int>? id,
    Expression<int>? studentId,
    Expression<int>? examId,
    Expression<int>? subjectId,
    Expression<double>? score,
    Expression<String>? gradeLetter,
    Expression<String>? notes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (examId != null) 'exam_id': examId,
      if (subjectId != null) 'subject_id': subjectId,
      if (score != null) 'score': score,
      if (gradeLetter != null) 'grade_letter': gradeLetter,
      if (notes != null) 'notes': notes,
    });
  }

  GradeCompanion copyWith(
      {Value<int>? id,
      Value<int>? studentId,
      Value<int>? examId,
      Value<int>? subjectId,
      Value<double>? score,
      Value<String?>? gradeLetter,
      Value<String?>? notes}) {
    return GradeCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      examId: examId ?? this.examId,
      subjectId: subjectId ?? this.subjectId,
      score: score ?? this.score,
      gradeLetter: gradeLetter ?? this.gradeLetter,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (examId.present) {
      map['exam_id'] = Variable<int>(examId.value);
    }
    if (subjectId.present) {
      map['subject_id'] = Variable<int>(subjectId.value);
    }
    if (score.present) {
      map['score'] = Variable<double>(score.value);
    }
    if (gradeLetter.present) {
      map['grade_letter'] = Variable<String>(gradeLetter.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GradeCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('examId: $examId, ')
          ..write('subjectId: $subjectId, ')
          ..write('score: $score, ')
          ..write('gradeLetter: $gradeLetter, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $SectionAssignmentTable extends SectionAssignment
    with TableInfo<$SectionAssignmentTable, SectionAssignmentData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionAssignmentTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES student (id)'));
  static const VerificationMeta _classroomIdMeta =
      const VerificationMeta('classroomId');
  @override
  late final GeneratedColumn<int> classroomId = GeneratedColumn<int>(
      'classroom_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES classroom (id)'));
  static const VerificationMeta _academicYearMeta =
      const VerificationMeta('academicYear');
  @override
  late final GeneratedColumn<String> academicYear = GeneratedColumn<String>(
      'academic_year', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, studentId, classroomId, academicYear];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'section_assignment';
  @override
  VerificationContext validateIntegrity(
      Insertable<SectionAssignmentData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('classroom_id')) {
      context.handle(
          _classroomIdMeta,
          classroomId.isAcceptableOrUnknown(
              data['classroom_id']!, _classroomIdMeta));
    } else if (isInserting) {
      context.missing(_classroomIdMeta);
    }
    if (data.containsKey('academic_year')) {
      context.handle(
          _academicYearMeta,
          academicYear.isAcceptableOrUnknown(
              data['academic_year']!, _academicYearMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SectionAssignmentData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectionAssignmentData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      classroomId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}classroom_id'])!,
      academicYear: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}academic_year']),
    );
  }

  @override
  $SectionAssignmentTable createAlias(String alias) {
    return $SectionAssignmentTable(attachedDatabase, alias);
  }
}

class SectionAssignmentData extends DataClass
    implements Insertable<SectionAssignmentData> {
  final int id;
  final int studentId;
  final int classroomId;
  final String? academicYear;
  const SectionAssignmentData(
      {required this.id,
      required this.studentId,
      required this.classroomId,
      this.academicYear});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<int>(studentId);
    map['classroom_id'] = Variable<int>(classroomId);
    if (!nullToAbsent || academicYear != null) {
      map['academic_year'] = Variable<String>(academicYear);
    }
    return map;
  }

  SectionAssignmentCompanion toCompanion(bool nullToAbsent) {
    return SectionAssignmentCompanion(
      id: Value(id),
      studentId: Value(studentId),
      classroomId: Value(classroomId),
      academicYear: academicYear == null && nullToAbsent
          ? const Value.absent()
          : Value(academicYear),
    );
  }

  factory SectionAssignmentData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionAssignmentData(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<int>(json['studentId']),
      classroomId: serializer.fromJson<int>(json['classroomId']),
      academicYear: serializer.fromJson<String?>(json['academicYear']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<int>(studentId),
      'classroomId': serializer.toJson<int>(classroomId),
      'academicYear': serializer.toJson<String?>(academicYear),
    };
  }

  SectionAssignmentData copyWith(
          {int? id,
          int? studentId,
          int? classroomId,
          Value<String?> academicYear = const Value.absent()}) =>
      SectionAssignmentData(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        classroomId: classroomId ?? this.classroomId,
        academicYear:
            academicYear.present ? academicYear.value : this.academicYear,
      );
  SectionAssignmentData copyWithCompanion(SectionAssignmentCompanion data) {
    return SectionAssignmentData(
      id: data.id.present ? data.id.value : this.id,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      classroomId:
          data.classroomId.present ? data.classroomId.value : this.classroomId,
      academicYear: data.academicYear.present
          ? data.academicYear.value
          : this.academicYear,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SectionAssignmentData(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('classroomId: $classroomId, ')
          ..write('academicYear: $academicYear')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, studentId, classroomId, academicYear);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionAssignmentData &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.classroomId == this.classroomId &&
          other.academicYear == this.academicYear);
}

class SectionAssignmentCompanion
    extends UpdateCompanion<SectionAssignmentData> {
  final Value<int> id;
  final Value<int> studentId;
  final Value<int> classroomId;
  final Value<String?> academicYear;
  const SectionAssignmentCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.classroomId = const Value.absent(),
    this.academicYear = const Value.absent(),
  });
  SectionAssignmentCompanion.insert({
    this.id = const Value.absent(),
    required int studentId,
    required int classroomId,
    this.academicYear = const Value.absent(),
  })  : studentId = Value(studentId),
        classroomId = Value(classroomId);
  static Insertable<SectionAssignmentData> custom({
    Expression<int>? id,
    Expression<int>? studentId,
    Expression<int>? classroomId,
    Expression<String>? academicYear,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (classroomId != null) 'classroom_id': classroomId,
      if (academicYear != null) 'academic_year': academicYear,
    });
  }

  SectionAssignmentCompanion copyWith(
      {Value<int>? id,
      Value<int>? studentId,
      Value<int>? classroomId,
      Value<String?>? academicYear}) {
    return SectionAssignmentCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      classroomId: classroomId ?? this.classroomId,
      academicYear: academicYear ?? this.academicYear,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (classroomId.present) {
      map['classroom_id'] = Variable<int>(classroomId.value);
    }
    if (academicYear.present) {
      map['academic_year'] = Variable<String>(academicYear.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionAssignmentCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('classroomId: $classroomId, ')
          ..write('academicYear: $academicYear')
          ..write(')'))
        .toString();
  }
}

class $AttendanceRecordTable extends AttendanceRecord
    with TableInfo<$AttendanceRecordTable, AttendanceRecordData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AttendanceRecordTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES student (id)'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _checkInTimeMeta =
      const VerificationMeta('checkInTime');
  @override
  late final GeneratedColumn<String> checkInTime = GeneratedColumn<String>(
      'check_in_time', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _checkOutTimeMeta =
      const VerificationMeta('checkOutTime');
  @override
  late final GeneratedColumn<String> checkOutTime = GeneratedColumn<String>(
      'check_out_time', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _recordedByMeta =
      const VerificationMeta('recordedBy');
  @override
  late final GeneratedColumn<int> recordedBy = GeneratedColumn<int>(
      'recorded_by', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        studentId,
        date,
        status,
        checkInTime,
        checkOutTime,
        notes,
        recordedBy
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'attendance_record';
  @override
  VerificationContext validateIntegrity(
      Insertable<AttendanceRecordData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('check_in_time')) {
      context.handle(
          _checkInTimeMeta,
          checkInTime.isAcceptableOrUnknown(
              data['check_in_time']!, _checkInTimeMeta));
    }
    if (data.containsKey('check_out_time')) {
      context.handle(
          _checkOutTimeMeta,
          checkOutTime.isAcceptableOrUnknown(
              data['check_out_time']!, _checkOutTimeMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('recorded_by')) {
      context.handle(
          _recordedByMeta,
          recordedBy.isAcceptableOrUnknown(
              data['recorded_by']!, _recordedByMeta));
    } else if (isInserting) {
      context.missing(_recordedByMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AttendanceRecordData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AttendanceRecordData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      checkInTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}check_in_time']),
      checkOutTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}check_out_time']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      recordedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}recorded_by'])!,
    );
  }

  @override
  $AttendanceRecordTable createAlias(String alias) {
    return $AttendanceRecordTable(attachedDatabase, alias);
  }
}

class AttendanceRecordData extends DataClass
    implements Insertable<AttendanceRecordData> {
  final int id;
  final int studentId;
  final DateTime date;
  final String status;
  final String? checkInTime;
  final String? checkOutTime;
  final String? notes;
  final int recordedBy;
  const AttendanceRecordData(
      {required this.id,
      required this.studentId,
      required this.date,
      required this.status,
      this.checkInTime,
      this.checkOutTime,
      this.notes,
      required this.recordedBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<int>(studentId);
    map['date'] = Variable<DateTime>(date);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || checkInTime != null) {
      map['check_in_time'] = Variable<String>(checkInTime);
    }
    if (!nullToAbsent || checkOutTime != null) {
      map['check_out_time'] = Variable<String>(checkOutTime);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['recorded_by'] = Variable<int>(recordedBy);
    return map;
  }

  AttendanceRecordCompanion toCompanion(bool nullToAbsent) {
    return AttendanceRecordCompanion(
      id: Value(id),
      studentId: Value(studentId),
      date: Value(date),
      status: Value(status),
      checkInTime: checkInTime == null && nullToAbsent
          ? const Value.absent()
          : Value(checkInTime),
      checkOutTime: checkOutTime == null && nullToAbsent
          ? const Value.absent()
          : Value(checkOutTime),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      recordedBy: Value(recordedBy),
    );
  }

  factory AttendanceRecordData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AttendanceRecordData(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<int>(json['studentId']),
      date: serializer.fromJson<DateTime>(json['date']),
      status: serializer.fromJson<String>(json['status']),
      checkInTime: serializer.fromJson<String?>(json['checkInTime']),
      checkOutTime: serializer.fromJson<String?>(json['checkOutTime']),
      notes: serializer.fromJson<String?>(json['notes']),
      recordedBy: serializer.fromJson<int>(json['recordedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<int>(studentId),
      'date': serializer.toJson<DateTime>(date),
      'status': serializer.toJson<String>(status),
      'checkInTime': serializer.toJson<String?>(checkInTime),
      'checkOutTime': serializer.toJson<String?>(checkOutTime),
      'notes': serializer.toJson<String?>(notes),
      'recordedBy': serializer.toJson<int>(recordedBy),
    };
  }

  AttendanceRecordData copyWith(
          {int? id,
          int? studentId,
          DateTime? date,
          String? status,
          Value<String?> checkInTime = const Value.absent(),
          Value<String?> checkOutTime = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          int? recordedBy}) =>
      AttendanceRecordData(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        date: date ?? this.date,
        status: status ?? this.status,
        checkInTime: checkInTime.present ? checkInTime.value : this.checkInTime,
        checkOutTime:
            checkOutTime.present ? checkOutTime.value : this.checkOutTime,
        notes: notes.present ? notes.value : this.notes,
        recordedBy: recordedBy ?? this.recordedBy,
      );
  AttendanceRecordData copyWithCompanion(AttendanceRecordCompanion data) {
    return AttendanceRecordData(
      id: data.id.present ? data.id.value : this.id,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      date: data.date.present ? data.date.value : this.date,
      status: data.status.present ? data.status.value : this.status,
      checkInTime:
          data.checkInTime.present ? data.checkInTime.value : this.checkInTime,
      checkOutTime: data.checkOutTime.present
          ? data.checkOutTime.value
          : this.checkOutTime,
      notes: data.notes.present ? data.notes.value : this.notes,
      recordedBy:
          data.recordedBy.present ? data.recordedBy.value : this.recordedBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AttendanceRecordData(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('date: $date, ')
          ..write('status: $status, ')
          ..write('checkInTime: $checkInTime, ')
          ..write('checkOutTime: $checkOutTime, ')
          ..write('notes: $notes, ')
          ..write('recordedBy: $recordedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, studentId, date, status, checkInTime,
      checkOutTime, notes, recordedBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AttendanceRecordData &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.date == this.date &&
          other.status == this.status &&
          other.checkInTime == this.checkInTime &&
          other.checkOutTime == this.checkOutTime &&
          other.notes == this.notes &&
          other.recordedBy == this.recordedBy);
}

class AttendanceRecordCompanion extends UpdateCompanion<AttendanceRecordData> {
  final Value<int> id;
  final Value<int> studentId;
  final Value<DateTime> date;
  final Value<String> status;
  final Value<String?> checkInTime;
  final Value<String?> checkOutTime;
  final Value<String?> notes;
  final Value<int> recordedBy;
  const AttendanceRecordCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.date = const Value.absent(),
    this.status = const Value.absent(),
    this.checkInTime = const Value.absent(),
    this.checkOutTime = const Value.absent(),
    this.notes = const Value.absent(),
    this.recordedBy = const Value.absent(),
  });
  AttendanceRecordCompanion.insert({
    this.id = const Value.absent(),
    required int studentId,
    required DateTime date,
    required String status,
    this.checkInTime = const Value.absent(),
    this.checkOutTime = const Value.absent(),
    this.notes = const Value.absent(),
    required int recordedBy,
  })  : studentId = Value(studentId),
        date = Value(date),
        status = Value(status),
        recordedBy = Value(recordedBy);
  static Insertable<AttendanceRecordData> custom({
    Expression<int>? id,
    Expression<int>? studentId,
    Expression<DateTime>? date,
    Expression<String>? status,
    Expression<String>? checkInTime,
    Expression<String>? checkOutTime,
    Expression<String>? notes,
    Expression<int>? recordedBy,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (date != null) 'date': date,
      if (status != null) 'status': status,
      if (checkInTime != null) 'check_in_time': checkInTime,
      if (checkOutTime != null) 'check_out_time': checkOutTime,
      if (notes != null) 'notes': notes,
      if (recordedBy != null) 'recorded_by': recordedBy,
    });
  }

  AttendanceRecordCompanion copyWith(
      {Value<int>? id,
      Value<int>? studentId,
      Value<DateTime>? date,
      Value<String>? status,
      Value<String?>? checkInTime,
      Value<String?>? checkOutTime,
      Value<String?>? notes,
      Value<int>? recordedBy}) {
    return AttendanceRecordCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      date: date ?? this.date,
      status: status ?? this.status,
      checkInTime: checkInTime ?? this.checkInTime,
      checkOutTime: checkOutTime ?? this.checkOutTime,
      notes: notes ?? this.notes,
      recordedBy: recordedBy ?? this.recordedBy,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (checkInTime.present) {
      map['check_in_time'] = Variable<String>(checkInTime.value);
    }
    if (checkOutTime.present) {
      map['check_out_time'] = Variable<String>(checkOutTime.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (recordedBy.present) {
      map['recorded_by'] = Variable<int>(recordedBy.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AttendanceRecordCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('date: $date, ')
          ..write('status: $status, ')
          ..write('checkInTime: $checkInTime, ')
          ..write('checkOutTime: $checkOutTime, ')
          ..write('notes: $notes, ')
          ..write('recordedBy: $recordedBy')
          ..write(')'))
        .toString();
  }
}

class $TuitionFeeTable extends TuitionFee
    with TableInfo<$TuitionFeeTable, TuitionFeeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TuitionFeeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES student (id)'));
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dueDateMeta =
      const VerificationMeta('dueDate');
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
      'due_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isPaidMeta = const VerificationMeta('isPaid');
  @override
  late final GeneratedColumn<bool> isPaid = GeneratedColumn<bool>(
      'is_paid', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_paid" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _paidAtMeta = const VerificationMeta('paidAt');
  @override
  late final GeneratedColumn<DateTime> paidAt = GeneratedColumn<DateTime>(
      'paid_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, studentId, amount, dueDate, isPaid, paidAt, notes];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tuition_fee';
  @override
  VerificationContext validateIntegrity(Insertable<TuitionFeeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('due_date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta));
    } else if (isInserting) {
      context.missing(_dueDateMeta);
    }
    if (data.containsKey('is_paid')) {
      context.handle(_isPaidMeta,
          isPaid.isAcceptableOrUnknown(data['is_paid']!, _isPaidMeta));
    }
    if (data.containsKey('paid_at')) {
      context.handle(_paidAtMeta,
          paidAt.isAcceptableOrUnknown(data['paid_at']!, _paidAtMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TuitionFeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TuitionFeeData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      dueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}due_date'])!,
      isPaid: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_paid'])!,
      paidAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}paid_at']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $TuitionFeeTable createAlias(String alias) {
    return $TuitionFeeTable(attachedDatabase, alias);
  }
}

class TuitionFeeData extends DataClass implements Insertable<TuitionFeeData> {
  final int id;
  final int studentId;
  final double amount;
  final DateTime dueDate;
  final bool isPaid;
  final DateTime? paidAt;
  final String? notes;
  const TuitionFeeData(
      {required this.id,
      required this.studentId,
      required this.amount,
      required this.dueDate,
      required this.isPaid,
      this.paidAt,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<int>(studentId);
    map['amount'] = Variable<double>(amount);
    map['due_date'] = Variable<DateTime>(dueDate);
    map['is_paid'] = Variable<bool>(isPaid);
    if (!nullToAbsent || paidAt != null) {
      map['paid_at'] = Variable<DateTime>(paidAt);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  TuitionFeeCompanion toCompanion(bool nullToAbsent) {
    return TuitionFeeCompanion(
      id: Value(id),
      studentId: Value(studentId),
      amount: Value(amount),
      dueDate: Value(dueDate),
      isPaid: Value(isPaid),
      paidAt:
          paidAt == null && nullToAbsent ? const Value.absent() : Value(paidAt),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory TuitionFeeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TuitionFeeData(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<int>(json['studentId']),
      amount: serializer.fromJson<double>(json['amount']),
      dueDate: serializer.fromJson<DateTime>(json['dueDate']),
      isPaid: serializer.fromJson<bool>(json['isPaid']),
      paidAt: serializer.fromJson<DateTime?>(json['paidAt']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<int>(studentId),
      'amount': serializer.toJson<double>(amount),
      'dueDate': serializer.toJson<DateTime>(dueDate),
      'isPaid': serializer.toJson<bool>(isPaid),
      'paidAt': serializer.toJson<DateTime?>(paidAt),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  TuitionFeeData copyWith(
          {int? id,
          int? studentId,
          double? amount,
          DateTime? dueDate,
          bool? isPaid,
          Value<DateTime?> paidAt = const Value.absent(),
          Value<String?> notes = const Value.absent()}) =>
      TuitionFeeData(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        amount: amount ?? this.amount,
        dueDate: dueDate ?? this.dueDate,
        isPaid: isPaid ?? this.isPaid,
        paidAt: paidAt.present ? paidAt.value : this.paidAt,
        notes: notes.present ? notes.value : this.notes,
      );
  TuitionFeeData copyWithCompanion(TuitionFeeCompanion data) {
    return TuitionFeeData(
      id: data.id.present ? data.id.value : this.id,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      amount: data.amount.present ? data.amount.value : this.amount,
      dueDate: data.dueDate.present ? data.dueDate.value : this.dueDate,
      isPaid: data.isPaid.present ? data.isPaid.value : this.isPaid,
      paidAt: data.paidAt.present ? data.paidAt.value : this.paidAt,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TuitionFeeData(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('amount: $amount, ')
          ..write('dueDate: $dueDate, ')
          ..write('isPaid: $isPaid, ')
          ..write('paidAt: $paidAt, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, studentId, amount, dueDate, isPaid, paidAt, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TuitionFeeData &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.amount == this.amount &&
          other.dueDate == this.dueDate &&
          other.isPaid == this.isPaid &&
          other.paidAt == this.paidAt &&
          other.notes == this.notes);
}

class TuitionFeeCompanion extends UpdateCompanion<TuitionFeeData> {
  final Value<int> id;
  final Value<int> studentId;
  final Value<double> amount;
  final Value<DateTime> dueDate;
  final Value<bool> isPaid;
  final Value<DateTime?> paidAt;
  final Value<String?> notes;
  const TuitionFeeCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.amount = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.paidAt = const Value.absent(),
    this.notes = const Value.absent(),
  });
  TuitionFeeCompanion.insert({
    this.id = const Value.absent(),
    required int studentId,
    required double amount,
    required DateTime dueDate,
    this.isPaid = const Value.absent(),
    this.paidAt = const Value.absent(),
    this.notes = const Value.absent(),
  })  : studentId = Value(studentId),
        amount = Value(amount),
        dueDate = Value(dueDate);
  static Insertable<TuitionFeeData> custom({
    Expression<int>? id,
    Expression<int>? studentId,
    Expression<double>? amount,
    Expression<DateTime>? dueDate,
    Expression<bool>? isPaid,
    Expression<DateTime>? paidAt,
    Expression<String>? notes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (amount != null) 'amount': amount,
      if (dueDate != null) 'due_date': dueDate,
      if (isPaid != null) 'is_paid': isPaid,
      if (paidAt != null) 'paid_at': paidAt,
      if (notes != null) 'notes': notes,
    });
  }

  TuitionFeeCompanion copyWith(
      {Value<int>? id,
      Value<int>? studentId,
      Value<double>? amount,
      Value<DateTime>? dueDate,
      Value<bool>? isPaid,
      Value<DateTime?>? paidAt,
      Value<String?>? notes}) {
    return TuitionFeeCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      amount: amount ?? this.amount,
      dueDate: dueDate ?? this.dueDate,
      isPaid: isPaid ?? this.isPaid,
      paidAt: paidAt ?? this.paidAt,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (isPaid.present) {
      map['is_paid'] = Variable<bool>(isPaid.value);
    }
    if (paidAt.present) {
      map['paid_at'] = Variable<DateTime>(paidAt.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TuitionFeeCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('amount: $amount, ')
          ..write('dueDate: $dueDate, ')
          ..write('isPaid: $isPaid, ')
          ..write('paidAt: $paidAt, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $ReceiptTable extends Receipt with TableInfo<$ReceiptTable, ReceiptData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReceiptTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES student (id)'));
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _receiptDateMeta =
      const VerificationMeta('receiptDate');
  @override
  late final GeneratedColumn<DateTime> receiptDate = GeneratedColumn<DateTime>(
      'receipt_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethodMeta =
      const VerificationMeta('paymentMethod');
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
      'payment_method', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _receivedByMeta =
      const VerificationMeta('receivedBy');
  @override
  late final GeneratedColumn<int> receivedBy = GeneratedColumn<int>(
      'received_by', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, studentId, amount, receiptDate, paymentMethod, notes, receivedBy];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'receipt';
  @override
  VerificationContext validateIntegrity(Insertable<ReceiptData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('receipt_date')) {
      context.handle(
          _receiptDateMeta,
          receiptDate.isAcceptableOrUnknown(
              data['receipt_date']!, _receiptDateMeta));
    } else if (isInserting) {
      context.missing(_receiptDateMeta);
    }
    if (data.containsKey('payment_method')) {
      context.handle(
          _paymentMethodMeta,
          paymentMethod.isAcceptableOrUnknown(
              data['payment_method']!, _paymentMethodMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('received_by')) {
      context.handle(
          _receivedByMeta,
          receivedBy.isAcceptableOrUnknown(
              data['received_by']!, _receivedByMeta));
    } else if (isInserting) {
      context.missing(_receivedByMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReceiptData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReceiptData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      receiptDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}receipt_date'])!,
      paymentMethod: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_method']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      receivedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}received_by'])!,
    );
  }

  @override
  $ReceiptTable createAlias(String alias) {
    return $ReceiptTable(attachedDatabase, alias);
  }
}

class ReceiptData extends DataClass implements Insertable<ReceiptData> {
  final int id;
  final int studentId;
  final double amount;
  final DateTime receiptDate;
  final String? paymentMethod;
  final String? notes;
  final int receivedBy;
  const ReceiptData(
      {required this.id,
      required this.studentId,
      required this.amount,
      required this.receiptDate,
      this.paymentMethod,
      this.notes,
      required this.receivedBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<int>(studentId);
    map['amount'] = Variable<double>(amount);
    map['receipt_date'] = Variable<DateTime>(receiptDate);
    if (!nullToAbsent || paymentMethod != null) {
      map['payment_method'] = Variable<String>(paymentMethod);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['received_by'] = Variable<int>(receivedBy);
    return map;
  }

  ReceiptCompanion toCompanion(bool nullToAbsent) {
    return ReceiptCompanion(
      id: Value(id),
      studentId: Value(studentId),
      amount: Value(amount),
      receiptDate: Value(receiptDate),
      paymentMethod: paymentMethod == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentMethod),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      receivedBy: Value(receivedBy),
    );
  }

  factory ReceiptData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReceiptData(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<int>(json['studentId']),
      amount: serializer.fromJson<double>(json['amount']),
      receiptDate: serializer.fromJson<DateTime>(json['receiptDate']),
      paymentMethod: serializer.fromJson<String?>(json['paymentMethod']),
      notes: serializer.fromJson<String?>(json['notes']),
      receivedBy: serializer.fromJson<int>(json['receivedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<int>(studentId),
      'amount': serializer.toJson<double>(amount),
      'receiptDate': serializer.toJson<DateTime>(receiptDate),
      'paymentMethod': serializer.toJson<String?>(paymentMethod),
      'notes': serializer.toJson<String?>(notes),
      'receivedBy': serializer.toJson<int>(receivedBy),
    };
  }

  ReceiptData copyWith(
          {int? id,
          int? studentId,
          double? amount,
          DateTime? receiptDate,
          Value<String?> paymentMethod = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          int? receivedBy}) =>
      ReceiptData(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        amount: amount ?? this.amount,
        receiptDate: receiptDate ?? this.receiptDate,
        paymentMethod:
            paymentMethod.present ? paymentMethod.value : this.paymentMethod,
        notes: notes.present ? notes.value : this.notes,
        receivedBy: receivedBy ?? this.receivedBy,
      );
  ReceiptData copyWithCompanion(ReceiptCompanion data) {
    return ReceiptData(
      id: data.id.present ? data.id.value : this.id,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      amount: data.amount.present ? data.amount.value : this.amount,
      receiptDate:
          data.receiptDate.present ? data.receiptDate.value : this.receiptDate,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      notes: data.notes.present ? data.notes.value : this.notes,
      receivedBy:
          data.receivedBy.present ? data.receivedBy.value : this.receivedBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReceiptData(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('amount: $amount, ')
          ..write('receiptDate: $receiptDate, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('notes: $notes, ')
          ..write('receivedBy: $receivedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, studentId, amount, receiptDate, paymentMethod, notes, receivedBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReceiptData &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.amount == this.amount &&
          other.receiptDate == this.receiptDate &&
          other.paymentMethod == this.paymentMethod &&
          other.notes == this.notes &&
          other.receivedBy == this.receivedBy);
}

class ReceiptCompanion extends UpdateCompanion<ReceiptData> {
  final Value<int> id;
  final Value<int> studentId;
  final Value<double> amount;
  final Value<DateTime> receiptDate;
  final Value<String?> paymentMethod;
  final Value<String?> notes;
  final Value<int> receivedBy;
  const ReceiptCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.amount = const Value.absent(),
    this.receiptDate = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.notes = const Value.absent(),
    this.receivedBy = const Value.absent(),
  });
  ReceiptCompanion.insert({
    this.id = const Value.absent(),
    required int studentId,
    required double amount,
    required DateTime receiptDate,
    this.paymentMethod = const Value.absent(),
    this.notes = const Value.absent(),
    required int receivedBy,
  })  : studentId = Value(studentId),
        amount = Value(amount),
        receiptDate = Value(receiptDate),
        receivedBy = Value(receivedBy);
  static Insertable<ReceiptData> custom({
    Expression<int>? id,
    Expression<int>? studentId,
    Expression<double>? amount,
    Expression<DateTime>? receiptDate,
    Expression<String>? paymentMethod,
    Expression<String>? notes,
    Expression<int>? receivedBy,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (amount != null) 'amount': amount,
      if (receiptDate != null) 'receipt_date': receiptDate,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (notes != null) 'notes': notes,
      if (receivedBy != null) 'received_by': receivedBy,
    });
  }

  ReceiptCompanion copyWith(
      {Value<int>? id,
      Value<int>? studentId,
      Value<double>? amount,
      Value<DateTime>? receiptDate,
      Value<String?>? paymentMethod,
      Value<String?>? notes,
      Value<int>? receivedBy}) {
    return ReceiptCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      amount: amount ?? this.amount,
      receiptDate: receiptDate ?? this.receiptDate,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      notes: notes ?? this.notes,
      receivedBy: receivedBy ?? this.receivedBy,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (receiptDate.present) {
      map['receipt_date'] = Variable<DateTime>(receiptDate.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (receivedBy.present) {
      map['received_by'] = Variable<int>(receivedBy.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReceiptCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('amount: $amount, ')
          ..write('receiptDate: $receiptDate, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('notes: $notes, ')
          ..write('receivedBy: $receivedBy')
          ..write(')'))
        .toString();
  }
}

class $ExpenseTable extends Expense with TableInfo<$ExpenseTable, ExpenseData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpenseTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _expenseDateMeta =
      const VerificationMeta('expenseDate');
  @override
  late final GeneratedColumn<DateTime> expenseDate = GeneratedColumn<DateTime>(
      'expense_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _approvedByMeta =
      const VerificationMeta('approvedBy');
  @override
  late final GeneratedColumn<int> approvedBy = GeneratedColumn<int>(
      'approved_by', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, description, amount, expenseDate, category, approvedBy];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'expense';
  @override
  VerificationContext validateIntegrity(Insertable<ExpenseData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('expense_date')) {
      context.handle(
          _expenseDateMeta,
          expenseDate.isAcceptableOrUnknown(
              data['expense_date']!, _expenseDateMeta));
    } else if (isInserting) {
      context.missing(_expenseDateMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    if (data.containsKey('approved_by')) {
      context.handle(
          _approvedByMeta,
          approvedBy.isAcceptableOrUnknown(
              data['approved_by']!, _approvedByMeta));
    } else if (isInserting) {
      context.missing(_approvedByMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExpenseData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExpenseData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      expenseDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expense_date'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      approvedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}approved_by'])!,
    );
  }

  @override
  $ExpenseTable createAlias(String alias) {
    return $ExpenseTable(attachedDatabase, alias);
  }
}

class ExpenseData extends DataClass implements Insertable<ExpenseData> {
  final int id;
  final String description;
  final double amount;
  final DateTime expenseDate;
  final String? category;
  final int approvedBy;
  const ExpenseData(
      {required this.id,
      required this.description,
      required this.amount,
      required this.expenseDate,
      this.category,
      required this.approvedBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['description'] = Variable<String>(description);
    map['amount'] = Variable<double>(amount);
    map['expense_date'] = Variable<DateTime>(expenseDate);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    map['approved_by'] = Variable<int>(approvedBy);
    return map;
  }

  ExpenseCompanion toCompanion(bool nullToAbsent) {
    return ExpenseCompanion(
      id: Value(id),
      description: Value(description),
      amount: Value(amount),
      expenseDate: Value(expenseDate),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      approvedBy: Value(approvedBy),
    );
  }

  factory ExpenseData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExpenseData(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      amount: serializer.fromJson<double>(json['amount']),
      expenseDate: serializer.fromJson<DateTime>(json['expenseDate']),
      category: serializer.fromJson<String?>(json['category']),
      approvedBy: serializer.fromJson<int>(json['approvedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'amount': serializer.toJson<double>(amount),
      'expenseDate': serializer.toJson<DateTime>(expenseDate),
      'category': serializer.toJson<String?>(category),
      'approvedBy': serializer.toJson<int>(approvedBy),
    };
  }

  ExpenseData copyWith(
          {int? id,
          String? description,
          double? amount,
          DateTime? expenseDate,
          Value<String?> category = const Value.absent(),
          int? approvedBy}) =>
      ExpenseData(
        id: id ?? this.id,
        description: description ?? this.description,
        amount: amount ?? this.amount,
        expenseDate: expenseDate ?? this.expenseDate,
        category: category.present ? category.value : this.category,
        approvedBy: approvedBy ?? this.approvedBy,
      );
  ExpenseData copyWithCompanion(ExpenseCompanion data) {
    return ExpenseData(
      id: data.id.present ? data.id.value : this.id,
      description:
          data.description.present ? data.description.value : this.description,
      amount: data.amount.present ? data.amount.value : this.amount,
      expenseDate:
          data.expenseDate.present ? data.expenseDate.value : this.expenseDate,
      category: data.category.present ? data.category.value : this.category,
      approvedBy:
          data.approvedBy.present ? data.approvedBy.value : this.approvedBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExpenseData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('amount: $amount, ')
          ..write('expenseDate: $expenseDate, ')
          ..write('category: $category, ')
          ..write('approvedBy: $approvedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, description, amount, expenseDate, category, approvedBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExpenseData &&
          other.id == this.id &&
          other.description == this.description &&
          other.amount == this.amount &&
          other.expenseDate == this.expenseDate &&
          other.category == this.category &&
          other.approvedBy == this.approvedBy);
}

class ExpenseCompanion extends UpdateCompanion<ExpenseData> {
  final Value<int> id;
  final Value<String> description;
  final Value<double> amount;
  final Value<DateTime> expenseDate;
  final Value<String?> category;
  final Value<int> approvedBy;
  const ExpenseCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.amount = const Value.absent(),
    this.expenseDate = const Value.absent(),
    this.category = const Value.absent(),
    this.approvedBy = const Value.absent(),
  });
  ExpenseCompanion.insert({
    this.id = const Value.absent(),
    required String description,
    required double amount,
    required DateTime expenseDate,
    this.category = const Value.absent(),
    required int approvedBy,
  })  : description = Value(description),
        amount = Value(amount),
        expenseDate = Value(expenseDate),
        approvedBy = Value(approvedBy);
  static Insertable<ExpenseData> custom({
    Expression<int>? id,
    Expression<String>? description,
    Expression<double>? amount,
    Expression<DateTime>? expenseDate,
    Expression<String>? category,
    Expression<int>? approvedBy,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (amount != null) 'amount': amount,
      if (expenseDate != null) 'expense_date': expenseDate,
      if (category != null) 'category': category,
      if (approvedBy != null) 'approved_by': approvedBy,
    });
  }

  ExpenseCompanion copyWith(
      {Value<int>? id,
      Value<String>? description,
      Value<double>? amount,
      Value<DateTime>? expenseDate,
      Value<String?>? category,
      Value<int>? approvedBy}) {
    return ExpenseCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      expenseDate: expenseDate ?? this.expenseDate,
      category: category ?? this.category,
      approvedBy: approvedBy ?? this.approvedBy,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (expenseDate.present) {
      map['expense_date'] = Variable<DateTime>(expenseDate.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (approvedBy.present) {
      map['approved_by'] = Variable<int>(approvedBy.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpenseCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('amount: $amount, ')
          ..write('expenseDate: $expenseDate, ')
          ..write('category: $category, ')
          ..write('approvedBy: $approvedBy')
          ..write(')'))
        .toString();
  }
}

class $PayrollTable extends Payroll with TableInfo<$PayrollTable, PayrollData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PayrollTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _employeeIdMeta =
      const VerificationMeta('employeeId');
  @override
  late final GeneratedColumn<int> employeeId = GeneratedColumn<int>(
      'employee_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _salaryMeta = const VerificationMeta('salary');
  @override
  late final GeneratedColumn<double> salary = GeneratedColumn<double>(
      'salary', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _deductionsMeta =
      const VerificationMeta('deductions');
  @override
  late final GeneratedColumn<double> deductions = GeneratedColumn<double>(
      'deductions', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _bonusesMeta =
      const VerificationMeta('bonuses');
  @override
  late final GeneratedColumn<double> bonuses = GeneratedColumn<double>(
      'bonuses', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _payDateMeta =
      const VerificationMeta('payDate');
  @override
  late final GeneratedColumn<DateTime> payDate = GeneratedColumn<DateTime>(
      'pay_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, employeeId, salary, deductions, bonuses, payDate, notes];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payroll';
  @override
  VerificationContext validateIntegrity(Insertable<PayrollData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('employee_id')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employee_id']!, _employeeIdMeta));
    } else if (isInserting) {
      context.missing(_employeeIdMeta);
    }
    if (data.containsKey('salary')) {
      context.handle(_salaryMeta,
          salary.isAcceptableOrUnknown(data['salary']!, _salaryMeta));
    } else if (isInserting) {
      context.missing(_salaryMeta);
    }
    if (data.containsKey('deductions')) {
      context.handle(
          _deductionsMeta,
          deductions.isAcceptableOrUnknown(
              data['deductions']!, _deductionsMeta));
    }
    if (data.containsKey('bonuses')) {
      context.handle(_bonusesMeta,
          bonuses.isAcceptableOrUnknown(data['bonuses']!, _bonusesMeta));
    }
    if (data.containsKey('pay_date')) {
      context.handle(_payDateMeta,
          payDate.isAcceptableOrUnknown(data['pay_date']!, _payDateMeta));
    } else if (isInserting) {
      context.missing(_payDateMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PayrollData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PayrollData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      employeeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}employee_id'])!,
      salary: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}salary'])!,
      deductions: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}deductions']),
      bonuses: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}bonuses']),
      payDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}pay_date'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $PayrollTable createAlias(String alias) {
    return $PayrollTable(attachedDatabase, alias);
  }
}

class PayrollData extends DataClass implements Insertable<PayrollData> {
  final int id;
  final int employeeId;
  final double salary;
  final double? deductions;
  final double? bonuses;
  final DateTime payDate;
  final String? notes;
  const PayrollData(
      {required this.id,
      required this.employeeId,
      required this.salary,
      this.deductions,
      this.bonuses,
      required this.payDate,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['employee_id'] = Variable<int>(employeeId);
    map['salary'] = Variable<double>(salary);
    if (!nullToAbsent || deductions != null) {
      map['deductions'] = Variable<double>(deductions);
    }
    if (!nullToAbsent || bonuses != null) {
      map['bonuses'] = Variable<double>(bonuses);
    }
    map['pay_date'] = Variable<DateTime>(payDate);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  PayrollCompanion toCompanion(bool nullToAbsent) {
    return PayrollCompanion(
      id: Value(id),
      employeeId: Value(employeeId),
      salary: Value(salary),
      deductions: deductions == null && nullToAbsent
          ? const Value.absent()
          : Value(deductions),
      bonuses: bonuses == null && nullToAbsent
          ? const Value.absent()
          : Value(bonuses),
      payDate: Value(payDate),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory PayrollData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PayrollData(
      id: serializer.fromJson<int>(json['id']),
      employeeId: serializer.fromJson<int>(json['employeeId']),
      salary: serializer.fromJson<double>(json['salary']),
      deductions: serializer.fromJson<double?>(json['deductions']),
      bonuses: serializer.fromJson<double?>(json['bonuses']),
      payDate: serializer.fromJson<DateTime>(json['payDate']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'employeeId': serializer.toJson<int>(employeeId),
      'salary': serializer.toJson<double>(salary),
      'deductions': serializer.toJson<double?>(deductions),
      'bonuses': serializer.toJson<double?>(bonuses),
      'payDate': serializer.toJson<DateTime>(payDate),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  PayrollData copyWith(
          {int? id,
          int? employeeId,
          double? salary,
          Value<double?> deductions = const Value.absent(),
          Value<double?> bonuses = const Value.absent(),
          DateTime? payDate,
          Value<String?> notes = const Value.absent()}) =>
      PayrollData(
        id: id ?? this.id,
        employeeId: employeeId ?? this.employeeId,
        salary: salary ?? this.salary,
        deductions: deductions.present ? deductions.value : this.deductions,
        bonuses: bonuses.present ? bonuses.value : this.bonuses,
        payDate: payDate ?? this.payDate,
        notes: notes.present ? notes.value : this.notes,
      );
  PayrollData copyWithCompanion(PayrollCompanion data) {
    return PayrollData(
      id: data.id.present ? data.id.value : this.id,
      employeeId:
          data.employeeId.present ? data.employeeId.value : this.employeeId,
      salary: data.salary.present ? data.salary.value : this.salary,
      deductions:
          data.deductions.present ? data.deductions.value : this.deductions,
      bonuses: data.bonuses.present ? data.bonuses.value : this.bonuses,
      payDate: data.payDate.present ? data.payDate.value : this.payDate,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PayrollData(')
          ..write('id: $id, ')
          ..write('employeeId: $employeeId, ')
          ..write('salary: $salary, ')
          ..write('deductions: $deductions, ')
          ..write('bonuses: $bonuses, ')
          ..write('payDate: $payDate, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, employeeId, salary, deductions, bonuses, payDate, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PayrollData &&
          other.id == this.id &&
          other.employeeId == this.employeeId &&
          other.salary == this.salary &&
          other.deductions == this.deductions &&
          other.bonuses == this.bonuses &&
          other.payDate == this.payDate &&
          other.notes == this.notes);
}

class PayrollCompanion extends UpdateCompanion<PayrollData> {
  final Value<int> id;
  final Value<int> employeeId;
  final Value<double> salary;
  final Value<double?> deductions;
  final Value<double?> bonuses;
  final Value<DateTime> payDate;
  final Value<String?> notes;
  const PayrollCompanion({
    this.id = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.salary = const Value.absent(),
    this.deductions = const Value.absent(),
    this.bonuses = const Value.absent(),
    this.payDate = const Value.absent(),
    this.notes = const Value.absent(),
  });
  PayrollCompanion.insert({
    this.id = const Value.absent(),
    required int employeeId,
    required double salary,
    this.deductions = const Value.absent(),
    this.bonuses = const Value.absent(),
    required DateTime payDate,
    this.notes = const Value.absent(),
  })  : employeeId = Value(employeeId),
        salary = Value(salary),
        payDate = Value(payDate);
  static Insertable<PayrollData> custom({
    Expression<int>? id,
    Expression<int>? employeeId,
    Expression<double>? salary,
    Expression<double>? deductions,
    Expression<double>? bonuses,
    Expression<DateTime>? payDate,
    Expression<String>? notes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (employeeId != null) 'employee_id': employeeId,
      if (salary != null) 'salary': salary,
      if (deductions != null) 'deductions': deductions,
      if (bonuses != null) 'bonuses': bonuses,
      if (payDate != null) 'pay_date': payDate,
      if (notes != null) 'notes': notes,
    });
  }

  PayrollCompanion copyWith(
      {Value<int>? id,
      Value<int>? employeeId,
      Value<double>? salary,
      Value<double?>? deductions,
      Value<double?>? bonuses,
      Value<DateTime>? payDate,
      Value<String?>? notes}) {
    return PayrollCompanion(
      id: id ?? this.id,
      employeeId: employeeId ?? this.employeeId,
      salary: salary ?? this.salary,
      deductions: deductions ?? this.deductions,
      bonuses: bonuses ?? this.bonuses,
      payDate: payDate ?? this.payDate,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (employeeId.present) {
      map['employee_id'] = Variable<int>(employeeId.value);
    }
    if (salary.present) {
      map['salary'] = Variable<double>(salary.value);
    }
    if (deductions.present) {
      map['deductions'] = Variable<double>(deductions.value);
    }
    if (bonuses.present) {
      map['bonuses'] = Variable<double>(bonuses.value);
    }
    if (payDate.present) {
      map['pay_date'] = Variable<DateTime>(payDate.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PayrollCompanion(')
          ..write('id: $id, ')
          ..write('employeeId: $employeeId, ')
          ..write('salary: $salary, ')
          ..write('deductions: $deductions, ')
          ..write('bonuses: $bonuses, ')
          ..write('payDate: $payDate, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $WalletTable extends Wallet with TableInfo<$WalletTable, WalletData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WalletTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('UNIQUE REFERENCES student (id)'));
  static const VerificationMeta _balanceMeta =
      const VerificationMeta('balance');
  @override
  late final GeneratedColumn<double> balance = GeneratedColumn<double>(
      'balance', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, studentId, balance];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wallet';
  @override
  VerificationContext validateIntegrity(Insertable<WalletData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WalletData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WalletData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      balance: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}balance'])!,
    );
  }

  @override
  $WalletTable createAlias(String alias) {
    return $WalletTable(attachedDatabase, alias);
  }
}

class WalletData extends DataClass implements Insertable<WalletData> {
  final int id;
  final int studentId;
  final double balance;
  const WalletData(
      {required this.id, required this.studentId, required this.balance});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<int>(studentId);
    map['balance'] = Variable<double>(balance);
    return map;
  }

  WalletCompanion toCompanion(bool nullToAbsent) {
    return WalletCompanion(
      id: Value(id),
      studentId: Value(studentId),
      balance: Value(balance),
    );
  }

  factory WalletData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WalletData(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<int>(json['studentId']),
      balance: serializer.fromJson<double>(json['balance']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<int>(studentId),
      'balance': serializer.toJson<double>(balance),
    };
  }

  WalletData copyWith({int? id, int? studentId, double? balance}) => WalletData(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        balance: balance ?? this.balance,
      );
  WalletData copyWithCompanion(WalletCompanion data) {
    return WalletData(
      id: data.id.present ? data.id.value : this.id,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      balance: data.balance.present ? data.balance.value : this.balance,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WalletData(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('balance: $balance')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, studentId, balance);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WalletData &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.balance == this.balance);
}

class WalletCompanion extends UpdateCompanion<WalletData> {
  final Value<int> id;
  final Value<int> studentId;
  final Value<double> balance;
  const WalletCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.balance = const Value.absent(),
  });
  WalletCompanion.insert({
    this.id = const Value.absent(),
    required int studentId,
    this.balance = const Value.absent(),
  }) : studentId = Value(studentId);
  static Insertable<WalletData> custom({
    Expression<int>? id,
    Expression<int>? studentId,
    Expression<double>? balance,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (balance != null) 'balance': balance,
    });
  }

  WalletCompanion copyWith(
      {Value<int>? id, Value<int>? studentId, Value<double>? balance}) {
    return WalletCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      balance: balance ?? this.balance,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double>(balance.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WalletCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('balance: $balance')
          ..write(')'))
        .toString();
  }
}

class $WalletTransactionTable extends WalletTransaction
    with TableInfo<$WalletTransactionTable, WalletTransactionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WalletTransactionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _walletIdMeta =
      const VerificationMeta('walletId');
  @override
  late final GeneratedColumn<int> walletId = GeneratedColumn<int>(
      'wallet_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES wallet (id)'));
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, walletId, amount, type, timestamp, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wallet_transaction';
  @override
  VerificationContext validateIntegrity(
      Insertable<WalletTransactionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('wallet_id')) {
      context.handle(_walletIdMeta,
          walletId.isAcceptableOrUnknown(data['wallet_id']!, _walletIdMeta));
    } else if (isInserting) {
      context.missing(_walletIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WalletTransactionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WalletTransactionData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      walletId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}wallet_id'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $WalletTransactionTable createAlias(String alias) {
    return $WalletTransactionTable(attachedDatabase, alias);
  }
}

class WalletTransactionData extends DataClass
    implements Insertable<WalletTransactionData> {
  final int id;
  final int walletId;
  final double amount;
  final String type;
  final DateTime timestamp;
  final String? description;
  const WalletTransactionData(
      {required this.id,
      required this.walletId,
      required this.amount,
      required this.type,
      required this.timestamp,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['wallet_id'] = Variable<int>(walletId);
    map['amount'] = Variable<double>(amount);
    map['type'] = Variable<String>(type);
    map['timestamp'] = Variable<DateTime>(timestamp);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  WalletTransactionCompanion toCompanion(bool nullToAbsent) {
    return WalletTransactionCompanion(
      id: Value(id),
      walletId: Value(walletId),
      amount: Value(amount),
      type: Value(type),
      timestamp: Value(timestamp),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory WalletTransactionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WalletTransactionData(
      id: serializer.fromJson<int>(json['id']),
      walletId: serializer.fromJson<int>(json['walletId']),
      amount: serializer.fromJson<double>(json['amount']),
      type: serializer.fromJson<String>(json['type']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'walletId': serializer.toJson<int>(walletId),
      'amount': serializer.toJson<double>(amount),
      'type': serializer.toJson<String>(type),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'description': serializer.toJson<String?>(description),
    };
  }

  WalletTransactionData copyWith(
          {int? id,
          int? walletId,
          double? amount,
          String? type,
          DateTime? timestamp,
          Value<String?> description = const Value.absent()}) =>
      WalletTransactionData(
        id: id ?? this.id,
        walletId: walletId ?? this.walletId,
        amount: amount ?? this.amount,
        type: type ?? this.type,
        timestamp: timestamp ?? this.timestamp,
        description: description.present ? description.value : this.description,
      );
  WalletTransactionData copyWithCompanion(WalletTransactionCompanion data) {
    return WalletTransactionData(
      id: data.id.present ? data.id.value : this.id,
      walletId: data.walletId.present ? data.walletId.value : this.walletId,
      amount: data.amount.present ? data.amount.value : this.amount,
      type: data.type.present ? data.type.value : this.type,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WalletTransactionData(')
          ..write('id: $id, ')
          ..write('walletId: $walletId, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, walletId, amount, type, timestamp, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WalletTransactionData &&
          other.id == this.id &&
          other.walletId == this.walletId &&
          other.amount == this.amount &&
          other.type == this.type &&
          other.timestamp == this.timestamp &&
          other.description == this.description);
}

class WalletTransactionCompanion
    extends UpdateCompanion<WalletTransactionData> {
  final Value<int> id;
  final Value<int> walletId;
  final Value<double> amount;
  final Value<String> type;
  final Value<DateTime> timestamp;
  final Value<String?> description;
  const WalletTransactionCompanion({
    this.id = const Value.absent(),
    this.walletId = const Value.absent(),
    this.amount = const Value.absent(),
    this.type = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
  });
  WalletTransactionCompanion.insert({
    this.id = const Value.absent(),
    required int walletId,
    required double amount,
    required String type,
    this.timestamp = const Value.absent(),
    this.description = const Value.absent(),
  })  : walletId = Value(walletId),
        amount = Value(amount),
        type = Value(type);
  static Insertable<WalletTransactionData> custom({
    Expression<int>? id,
    Expression<int>? walletId,
    Expression<double>? amount,
    Expression<String>? type,
    Expression<DateTime>? timestamp,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (walletId != null) 'wallet_id': walletId,
      if (amount != null) 'amount': amount,
      if (type != null) 'type': type,
      if (timestamp != null) 'timestamp': timestamp,
      if (description != null) 'description': description,
    });
  }

  WalletTransactionCompanion copyWith(
      {Value<int>? id,
      Value<int>? walletId,
      Value<double>? amount,
      Value<String>? type,
      Value<DateTime>? timestamp,
      Value<String?>? description}) {
    return WalletTransactionCompanion(
      id: id ?? this.id,
      walletId: walletId ?? this.walletId,
      amount: amount ?? this.amount,
      type: type ?? this.type,
      timestamp: timestamp ?? this.timestamp,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (walletId.present) {
      map['wallet_id'] = Variable<int>(walletId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WalletTransactionCompanion(')
          ..write('id: $id, ')
          ..write('walletId: $walletId, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('timestamp: $timestamp, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $CanteenSaleTable extends CanteenSale
    with TableInfo<$CanteenSaleTable, CanteenSaleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CanteenSaleTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES student (id)'));
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _saleDateMeta =
      const VerificationMeta('saleDate');
  @override
  late final GeneratedColumn<DateTime> saleDate = GeneratedColumn<DateTime>(
      'sale_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _itemsMeta = const VerificationMeta('items');
  @override
  late final GeneratedColumn<String> items = GeneratedColumn<String>(
      'items', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _recordedByMeta =
      const VerificationMeta('recordedBy');
  @override
  late final GeneratedColumn<int> recordedBy = GeneratedColumn<int>(
      'recorded_by', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, studentId, amount, saleDate, items, recordedBy];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'canteen_sale';
  @override
  VerificationContext validateIntegrity(Insertable<CanteenSaleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('sale_date')) {
      context.handle(_saleDateMeta,
          saleDate.isAcceptableOrUnknown(data['sale_date']!, _saleDateMeta));
    }
    if (data.containsKey('items')) {
      context.handle(
          _itemsMeta, items.isAcceptableOrUnknown(data['items']!, _itemsMeta));
    }
    if (data.containsKey('recorded_by')) {
      context.handle(
          _recordedByMeta,
          recordedBy.isAcceptableOrUnknown(
              data['recorded_by']!, _recordedByMeta));
    } else if (isInserting) {
      context.missing(_recordedByMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CanteenSaleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CanteenSaleData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      saleDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}sale_date'])!,
      items: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}items']),
      recordedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}recorded_by'])!,
    );
  }

  @override
  $CanteenSaleTable createAlias(String alias) {
    return $CanteenSaleTable(attachedDatabase, alias);
  }
}

class CanteenSaleData extends DataClass implements Insertable<CanteenSaleData> {
  final int id;
  final int studentId;
  final double amount;
  final DateTime saleDate;
  final String? items;
  final int recordedBy;
  const CanteenSaleData(
      {required this.id,
      required this.studentId,
      required this.amount,
      required this.saleDate,
      this.items,
      required this.recordedBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<int>(studentId);
    map['amount'] = Variable<double>(amount);
    map['sale_date'] = Variable<DateTime>(saleDate);
    if (!nullToAbsent || items != null) {
      map['items'] = Variable<String>(items);
    }
    map['recorded_by'] = Variable<int>(recordedBy);
    return map;
  }

  CanteenSaleCompanion toCompanion(bool nullToAbsent) {
    return CanteenSaleCompanion(
      id: Value(id),
      studentId: Value(studentId),
      amount: Value(amount),
      saleDate: Value(saleDate),
      items:
          items == null && nullToAbsent ? const Value.absent() : Value(items),
      recordedBy: Value(recordedBy),
    );
  }

  factory CanteenSaleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CanteenSaleData(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<int>(json['studentId']),
      amount: serializer.fromJson<double>(json['amount']),
      saleDate: serializer.fromJson<DateTime>(json['saleDate']),
      items: serializer.fromJson<String?>(json['items']),
      recordedBy: serializer.fromJson<int>(json['recordedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<int>(studentId),
      'amount': serializer.toJson<double>(amount),
      'saleDate': serializer.toJson<DateTime>(saleDate),
      'items': serializer.toJson<String?>(items),
      'recordedBy': serializer.toJson<int>(recordedBy),
    };
  }

  CanteenSaleData copyWith(
          {int? id,
          int? studentId,
          double? amount,
          DateTime? saleDate,
          Value<String?> items = const Value.absent(),
          int? recordedBy}) =>
      CanteenSaleData(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        amount: amount ?? this.amount,
        saleDate: saleDate ?? this.saleDate,
        items: items.present ? items.value : this.items,
        recordedBy: recordedBy ?? this.recordedBy,
      );
  CanteenSaleData copyWithCompanion(CanteenSaleCompanion data) {
    return CanteenSaleData(
      id: data.id.present ? data.id.value : this.id,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      amount: data.amount.present ? data.amount.value : this.amount,
      saleDate: data.saleDate.present ? data.saleDate.value : this.saleDate,
      items: data.items.present ? data.items.value : this.items,
      recordedBy:
          data.recordedBy.present ? data.recordedBy.value : this.recordedBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CanteenSaleData(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('amount: $amount, ')
          ..write('saleDate: $saleDate, ')
          ..write('items: $items, ')
          ..write('recordedBy: $recordedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, studentId, amount, saleDate, items, recordedBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CanteenSaleData &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.amount == this.amount &&
          other.saleDate == this.saleDate &&
          other.items == this.items &&
          other.recordedBy == this.recordedBy);
}

class CanteenSaleCompanion extends UpdateCompanion<CanteenSaleData> {
  final Value<int> id;
  final Value<int> studentId;
  final Value<double> amount;
  final Value<DateTime> saleDate;
  final Value<String?> items;
  final Value<int> recordedBy;
  const CanteenSaleCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.amount = const Value.absent(),
    this.saleDate = const Value.absent(),
    this.items = const Value.absent(),
    this.recordedBy = const Value.absent(),
  });
  CanteenSaleCompanion.insert({
    this.id = const Value.absent(),
    required int studentId,
    required double amount,
    this.saleDate = const Value.absent(),
    this.items = const Value.absent(),
    required int recordedBy,
  })  : studentId = Value(studentId),
        amount = Value(amount),
        recordedBy = Value(recordedBy);
  static Insertable<CanteenSaleData> custom({
    Expression<int>? id,
    Expression<int>? studentId,
    Expression<double>? amount,
    Expression<DateTime>? saleDate,
    Expression<String>? items,
    Expression<int>? recordedBy,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (amount != null) 'amount': amount,
      if (saleDate != null) 'sale_date': saleDate,
      if (items != null) 'items': items,
      if (recordedBy != null) 'recorded_by': recordedBy,
    });
  }

  CanteenSaleCompanion copyWith(
      {Value<int>? id,
      Value<int>? studentId,
      Value<double>? amount,
      Value<DateTime>? saleDate,
      Value<String?>? items,
      Value<int>? recordedBy}) {
    return CanteenSaleCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      amount: amount ?? this.amount,
      saleDate: saleDate ?? this.saleDate,
      items: items ?? this.items,
      recordedBy: recordedBy ?? this.recordedBy,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (saleDate.present) {
      map['sale_date'] = Variable<DateTime>(saleDate.value);
    }
    if (items.present) {
      map['items'] = Variable<String>(items.value);
    }
    if (recordedBy.present) {
      map['recorded_by'] = Variable<int>(recordedBy.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CanteenSaleCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('amount: $amount, ')
          ..write('saleDate: $saleDate, ')
          ..write('items: $items, ')
          ..write('recordedBy: $recordedBy')
          ..write(')'))
        .toString();
  }
}

class $CanteenProductTable extends CanteenProduct
    with TableInfo<$CanteenProductTable, CanteenProductData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CanteenProductTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _stockMeta = const VerificationMeta('stock');
  @override
  late final GeneratedColumn<int> stock = GeneratedColumn<int>(
      'stock', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, name, price, stock];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'canteen_product';
  @override
  VerificationContext validateIntegrity(Insertable<CanteenProductData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('stock')) {
      context.handle(
          _stockMeta, stock.isAcceptableOrUnknown(data['stock']!, _stockMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CanteenProductData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CanteenProductData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      stock: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stock'])!,
    );
  }

  @override
  $CanteenProductTable createAlias(String alias) {
    return $CanteenProductTable(attachedDatabase, alias);
  }
}

class CanteenProductData extends DataClass
    implements Insertable<CanteenProductData> {
  final int id;
  final String name;
  final double price;
  final int stock;
  const CanteenProductData(
      {required this.id,
      required this.name,
      required this.price,
      required this.stock});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['price'] = Variable<double>(price);
    map['stock'] = Variable<int>(stock);
    return map;
  }

  CanteenProductCompanion toCompanion(bool nullToAbsent) {
    return CanteenProductCompanion(
      id: Value(id),
      name: Value(name),
      price: Value(price),
      stock: Value(stock),
    );
  }

  factory CanteenProductData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CanteenProductData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      price: serializer.fromJson<double>(json['price']),
      stock: serializer.fromJson<int>(json['stock']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'price': serializer.toJson<double>(price),
      'stock': serializer.toJson<int>(stock),
    };
  }

  CanteenProductData copyWith(
          {int? id, String? name, double? price, int? stock}) =>
      CanteenProductData(
        id: id ?? this.id,
        name: name ?? this.name,
        price: price ?? this.price,
        stock: stock ?? this.stock,
      );
  CanteenProductData copyWithCompanion(CanteenProductCompanion data) {
    return CanteenProductData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      price: data.price.present ? data.price.value : this.price,
      stock: data.stock.present ? data.stock.value : this.stock,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CanteenProductData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('stock: $stock')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, price, stock);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CanteenProductData &&
          other.id == this.id &&
          other.name == this.name &&
          other.price == this.price &&
          other.stock == this.stock);
}

class CanteenProductCompanion extends UpdateCompanion<CanteenProductData> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> price;
  final Value<int> stock;
  const CanteenProductCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.price = const Value.absent(),
    this.stock = const Value.absent(),
  });
  CanteenProductCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required double price,
    this.stock = const Value.absent(),
  })  : name = Value(name),
        price = Value(price);
  static Insertable<CanteenProductData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? price,
    Expression<int>? stock,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (price != null) 'price': price,
      if (stock != null) 'stock': stock,
    });
  }

  CanteenProductCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<double>? price,
      Value<int>? stock}) {
    return CanteenProductCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      stock: stock ?? this.stock,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (stock.present) {
      map['stock'] = Variable<int>(stock.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CanteenProductCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('stock: $stock')
          ..write(')'))
        .toString();
  }
}

class $BookTable extends Book with TableInfo<$BookTable, BookData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isbnMeta = const VerificationMeta('isbn');
  @override
  late final GeneratedColumn<String> isbn = GeneratedColumn<String>(
      'isbn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _totalCopiesMeta =
      const VerificationMeta('totalCopies');
  @override
  late final GeneratedColumn<int> totalCopies = GeneratedColumn<int>(
      'total_copies', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _availableCopiesMeta =
      const VerificationMeta('availableCopies');
  @override
  late final GeneratedColumn<int> availableCopies = GeneratedColumn<int>(
      'available_copies', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, author, isbn, totalCopies, availableCopies];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'book';
  @override
  VerificationContext validateIntegrity(Insertable<BookData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('isbn')) {
      context.handle(
          _isbnMeta, isbn.isAcceptableOrUnknown(data['isbn']!, _isbnMeta));
    }
    if (data.containsKey('total_copies')) {
      context.handle(
          _totalCopiesMeta,
          totalCopies.isAcceptableOrUnknown(
              data['total_copies']!, _totalCopiesMeta));
    }
    if (data.containsKey('available_copies')) {
      context.handle(
          _availableCopiesMeta,
          availableCopies.isAcceptableOrUnknown(
              data['available_copies']!, _availableCopiesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BookData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author']),
      isbn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}isbn']),
      totalCopies: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_copies'])!,
      availableCopies: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}available_copies'])!,
    );
  }

  @override
  $BookTable createAlias(String alias) {
    return $BookTable(attachedDatabase, alias);
  }
}

class BookData extends DataClass implements Insertable<BookData> {
  final int id;
  final String title;
  final String? author;
  final String? isbn;
  final int totalCopies;
  final int availableCopies;
  const BookData(
      {required this.id,
      required this.title,
      this.author,
      this.isbn,
      required this.totalCopies,
      required this.availableCopies});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    if (!nullToAbsent || isbn != null) {
      map['isbn'] = Variable<String>(isbn);
    }
    map['total_copies'] = Variable<int>(totalCopies);
    map['available_copies'] = Variable<int>(availableCopies);
    return map;
  }

  BookCompanion toCompanion(bool nullToAbsent) {
    return BookCompanion(
      id: Value(id),
      title: Value(title),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      isbn: isbn == null && nullToAbsent ? const Value.absent() : Value(isbn),
      totalCopies: Value(totalCopies),
      availableCopies: Value(availableCopies),
    );
  }

  factory BookData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      author: serializer.fromJson<String?>(json['author']),
      isbn: serializer.fromJson<String?>(json['isbn']),
      totalCopies: serializer.fromJson<int>(json['totalCopies']),
      availableCopies: serializer.fromJson<int>(json['availableCopies']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'author': serializer.toJson<String?>(author),
      'isbn': serializer.toJson<String?>(isbn),
      'totalCopies': serializer.toJson<int>(totalCopies),
      'availableCopies': serializer.toJson<int>(availableCopies),
    };
  }

  BookData copyWith(
          {int? id,
          String? title,
          Value<String?> author = const Value.absent(),
          Value<String?> isbn = const Value.absent(),
          int? totalCopies,
          int? availableCopies}) =>
      BookData(
        id: id ?? this.id,
        title: title ?? this.title,
        author: author.present ? author.value : this.author,
        isbn: isbn.present ? isbn.value : this.isbn,
        totalCopies: totalCopies ?? this.totalCopies,
        availableCopies: availableCopies ?? this.availableCopies,
      );
  BookData copyWithCompanion(BookCompanion data) {
    return BookData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      author: data.author.present ? data.author.value : this.author,
      isbn: data.isbn.present ? data.isbn.value : this.isbn,
      totalCopies:
          data.totalCopies.present ? data.totalCopies.value : this.totalCopies,
      availableCopies: data.availableCopies.present
          ? data.availableCopies.value
          : this.availableCopies,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BookData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('isbn: $isbn, ')
          ..write('totalCopies: $totalCopies, ')
          ..write('availableCopies: $availableCopies')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, author, isbn, totalCopies, availableCopies);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookData &&
          other.id == this.id &&
          other.title == this.title &&
          other.author == this.author &&
          other.isbn == this.isbn &&
          other.totalCopies == this.totalCopies &&
          other.availableCopies == this.availableCopies);
}

class BookCompanion extends UpdateCompanion<BookData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> author;
  final Value<String?> isbn;
  final Value<int> totalCopies;
  final Value<int> availableCopies;
  const BookCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.author = const Value.absent(),
    this.isbn = const Value.absent(),
    this.totalCopies = const Value.absent(),
    this.availableCopies = const Value.absent(),
  });
  BookCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.author = const Value.absent(),
    this.isbn = const Value.absent(),
    this.totalCopies = const Value.absent(),
    this.availableCopies = const Value.absent(),
  }) : title = Value(title);
  static Insertable<BookData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? author,
    Expression<String>? isbn,
    Expression<int>? totalCopies,
    Expression<int>? availableCopies,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (author != null) 'author': author,
      if (isbn != null) 'isbn': isbn,
      if (totalCopies != null) 'total_copies': totalCopies,
      if (availableCopies != null) 'available_copies': availableCopies,
    });
  }

  BookCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String?>? author,
      Value<String?>? isbn,
      Value<int>? totalCopies,
      Value<int>? availableCopies}) {
    return BookCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      isbn: isbn ?? this.isbn,
      totalCopies: totalCopies ?? this.totalCopies,
      availableCopies: availableCopies ?? this.availableCopies,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (isbn.present) {
      map['isbn'] = Variable<String>(isbn.value);
    }
    if (totalCopies.present) {
      map['total_copies'] = Variable<int>(totalCopies.value);
    }
    if (availableCopies.present) {
      map['available_copies'] = Variable<int>(availableCopies.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('isbn: $isbn, ')
          ..write('totalCopies: $totalCopies, ')
          ..write('availableCopies: $availableCopies')
          ..write(')'))
        .toString();
  }
}

class $BorrowingRecordTable extends BorrowingRecord
    with TableInfo<$BorrowingRecordTable, BorrowingRecordData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BorrowingRecordTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES book (id)'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES student (id)'));
  static const VerificationMeta _borrowDateMeta =
      const VerificationMeta('borrowDate');
  @override
  late final GeneratedColumn<DateTime> borrowDate = GeneratedColumn<DateTime>(
      'borrow_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dueDateMeta =
      const VerificationMeta('dueDate');
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
      'due_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _returnDateMeta =
      const VerificationMeta('returnDate');
  @override
  late final GeneratedColumn<DateTime> returnDate = GeneratedColumn<DateTime>(
      'return_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, bookId, studentId, borrowDate, dueDate, returnDate, notes];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'borrowing_record';
  @override
  VerificationContext validateIntegrity(
      Insertable<BorrowingRecordData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('borrow_date')) {
      context.handle(
          _borrowDateMeta,
          borrowDate.isAcceptableOrUnknown(
              data['borrow_date']!, _borrowDateMeta));
    } else if (isInserting) {
      context.missing(_borrowDateMeta);
    }
    if (data.containsKey('due_date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta));
    }
    if (data.containsKey('return_date')) {
      context.handle(
          _returnDateMeta,
          returnDate.isAcceptableOrUnknown(
              data['return_date']!, _returnDateMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BorrowingRecordData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BorrowingRecordData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      borrowDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}borrow_date'])!,
      dueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}due_date']),
      returnDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}return_date']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $BorrowingRecordTable createAlias(String alias) {
    return $BorrowingRecordTable(attachedDatabase, alias);
  }
}

class BorrowingRecordData extends DataClass
    implements Insertable<BorrowingRecordData> {
  final int id;
  final int bookId;
  final int studentId;
  final DateTime borrowDate;
  final DateTime? dueDate;
  final DateTime? returnDate;
  final String? notes;
  const BorrowingRecordData(
      {required this.id,
      required this.bookId,
      required this.studentId,
      required this.borrowDate,
      this.dueDate,
      this.returnDate,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['student_id'] = Variable<int>(studentId);
    map['borrow_date'] = Variable<DateTime>(borrowDate);
    if (!nullToAbsent || dueDate != null) {
      map['due_date'] = Variable<DateTime>(dueDate);
    }
    if (!nullToAbsent || returnDate != null) {
      map['return_date'] = Variable<DateTime>(returnDate);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  BorrowingRecordCompanion toCompanion(bool nullToAbsent) {
    return BorrowingRecordCompanion(
      id: Value(id),
      bookId: Value(bookId),
      studentId: Value(studentId),
      borrowDate: Value(borrowDate),
      dueDate: dueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(dueDate),
      returnDate: returnDate == null && nullToAbsent
          ? const Value.absent()
          : Value(returnDate),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory BorrowingRecordData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BorrowingRecordData(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      studentId: serializer.fromJson<int>(json['studentId']),
      borrowDate: serializer.fromJson<DateTime>(json['borrowDate']),
      dueDate: serializer.fromJson<DateTime?>(json['dueDate']),
      returnDate: serializer.fromJson<DateTime?>(json['returnDate']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'studentId': serializer.toJson<int>(studentId),
      'borrowDate': serializer.toJson<DateTime>(borrowDate),
      'dueDate': serializer.toJson<DateTime?>(dueDate),
      'returnDate': serializer.toJson<DateTime?>(returnDate),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  BorrowingRecordData copyWith(
          {int? id,
          int? bookId,
          int? studentId,
          DateTime? borrowDate,
          Value<DateTime?> dueDate = const Value.absent(),
          Value<DateTime?> returnDate = const Value.absent(),
          Value<String?> notes = const Value.absent()}) =>
      BorrowingRecordData(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        studentId: studentId ?? this.studentId,
        borrowDate: borrowDate ?? this.borrowDate,
        dueDate: dueDate.present ? dueDate.value : this.dueDate,
        returnDate: returnDate.present ? returnDate.value : this.returnDate,
        notes: notes.present ? notes.value : this.notes,
      );
  BorrowingRecordData copyWithCompanion(BorrowingRecordCompanion data) {
    return BorrowingRecordData(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      studentId: data.studentId.present ? data.studentId.value : this.studentId,
      borrowDate:
          data.borrowDate.present ? data.borrowDate.value : this.borrowDate,
      dueDate: data.dueDate.present ? data.dueDate.value : this.dueDate,
      returnDate:
          data.returnDate.present ? data.returnDate.value : this.returnDate,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BorrowingRecordData(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('studentId: $studentId, ')
          ..write('borrowDate: $borrowDate, ')
          ..write('dueDate: $dueDate, ')
          ..write('returnDate: $returnDate, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, bookId, studentId, borrowDate, dueDate, returnDate, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BorrowingRecordData &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.studentId == this.studentId &&
          other.borrowDate == this.borrowDate &&
          other.dueDate == this.dueDate &&
          other.returnDate == this.returnDate &&
          other.notes == this.notes);
}

class BorrowingRecordCompanion extends UpdateCompanion<BorrowingRecordData> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> studentId;
  final Value<DateTime> borrowDate;
  final Value<DateTime?> dueDate;
  final Value<DateTime?> returnDate;
  final Value<String?> notes;
  const BorrowingRecordCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.studentId = const Value.absent(),
    this.borrowDate = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.returnDate = const Value.absent(),
    this.notes = const Value.absent(),
  });
  BorrowingRecordCompanion.insert({
    this.id = const Value.absent(),
    required int bookId,
    required int studentId,
    required DateTime borrowDate,
    this.dueDate = const Value.absent(),
    this.returnDate = const Value.absent(),
    this.notes = const Value.absent(),
  })  : bookId = Value(bookId),
        studentId = Value(studentId),
        borrowDate = Value(borrowDate);
  static Insertable<BorrowingRecordData> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<int>? studentId,
    Expression<DateTime>? borrowDate,
    Expression<DateTime>? dueDate,
    Expression<DateTime>? returnDate,
    Expression<String>? notes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (studentId != null) 'student_id': studentId,
      if (borrowDate != null) 'borrow_date': borrowDate,
      if (dueDate != null) 'due_date': dueDate,
      if (returnDate != null) 'return_date': returnDate,
      if (notes != null) 'notes': notes,
    });
  }

  BorrowingRecordCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookId,
      Value<int>? studentId,
      Value<DateTime>? borrowDate,
      Value<DateTime?>? dueDate,
      Value<DateTime?>? returnDate,
      Value<String?>? notes}) {
    return BorrowingRecordCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      studentId: studentId ?? this.studentId,
      borrowDate: borrowDate ?? this.borrowDate,
      dueDate: dueDate ?? this.dueDate,
      returnDate: returnDate ?? this.returnDate,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (borrowDate.present) {
      map['borrow_date'] = Variable<DateTime>(borrowDate.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (returnDate.present) {
      map['return_date'] = Variable<DateTime>(returnDate.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BorrowingRecordCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('studentId: $studentId, ')
          ..write('borrowDate: $borrowDate, ')
          ..write('dueDate: $dueDate, ')
          ..write('returnDate: $returnDate, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $InventoryItemTable extends InventoryItem
    with TableInfo<$InventoryItemTable, InventoryItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InventoryItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _skuMeta = const VerificationMeta('sku');
  @override
  late final GeneratedColumn<String> sku = GeneratedColumn<String>(
      'sku', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'unit_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, sku, quantity, unitPrice, category];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'inventory_item';
  @override
  VerificationContext validateIntegrity(Insertable<InventoryItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('sku')) {
      context.handle(
          _skuMeta, sku.isAcceptableOrUnknown(data['sku']!, _skuMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InventoryItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InventoryItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      sku: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sku']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_price']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
    );
  }

  @override
  $InventoryItemTable createAlias(String alias) {
    return $InventoryItemTable(attachedDatabase, alias);
  }
}

class InventoryItemData extends DataClass
    implements Insertable<InventoryItemData> {
  final int id;
  final String name;
  final String? sku;
  final int quantity;
  final double? unitPrice;
  final String? category;
  const InventoryItemData(
      {required this.id,
      required this.name,
      this.sku,
      required this.quantity,
      this.unitPrice,
      this.category});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || sku != null) {
      map['sku'] = Variable<String>(sku);
    }
    map['quantity'] = Variable<int>(quantity);
    if (!nullToAbsent || unitPrice != null) {
      map['unit_price'] = Variable<double>(unitPrice);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    return map;
  }

  InventoryItemCompanion toCompanion(bool nullToAbsent) {
    return InventoryItemCompanion(
      id: Value(id),
      name: Value(name),
      sku: sku == null && nullToAbsent ? const Value.absent() : Value(sku),
      quantity: Value(quantity),
      unitPrice: unitPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(unitPrice),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  factory InventoryItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InventoryItemData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      sku: serializer.fromJson<String?>(json['sku']),
      quantity: serializer.fromJson<int>(json['quantity']),
      unitPrice: serializer.fromJson<double?>(json['unitPrice']),
      category: serializer.fromJson<String?>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'sku': serializer.toJson<String?>(sku),
      'quantity': serializer.toJson<int>(quantity),
      'unitPrice': serializer.toJson<double?>(unitPrice),
      'category': serializer.toJson<String?>(category),
    };
  }

  InventoryItemData copyWith(
          {int? id,
          String? name,
          Value<String?> sku = const Value.absent(),
          int? quantity,
          Value<double?> unitPrice = const Value.absent(),
          Value<String?> category = const Value.absent()}) =>
      InventoryItemData(
        id: id ?? this.id,
        name: name ?? this.name,
        sku: sku.present ? sku.value : this.sku,
        quantity: quantity ?? this.quantity,
        unitPrice: unitPrice.present ? unitPrice.value : this.unitPrice,
        category: category.present ? category.value : this.category,
      );
  InventoryItemData copyWithCompanion(InventoryItemCompanion data) {
    return InventoryItemData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      sku: data.sku.present ? data.sku.value : this.sku,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      unitPrice: data.unitPrice.present ? data.unitPrice.value : this.unitPrice,
      category: data.category.present ? data.category.value : this.category,
    );
  }

  @override
  String toString() {
    return (StringBuffer('InventoryItemData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('sku: $sku, ')
          ..write('quantity: $quantity, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, sku, quantity, unitPrice, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InventoryItemData &&
          other.id == this.id &&
          other.name == this.name &&
          other.sku == this.sku &&
          other.quantity == this.quantity &&
          other.unitPrice == this.unitPrice &&
          other.category == this.category);
}

class InventoryItemCompanion extends UpdateCompanion<InventoryItemData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> sku;
  final Value<int> quantity;
  final Value<double?> unitPrice;
  final Value<String?> category;
  const InventoryItemCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.sku = const Value.absent(),
    this.quantity = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.category = const Value.absent(),
  });
  InventoryItemCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.sku = const Value.absent(),
    this.quantity = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.category = const Value.absent(),
  }) : name = Value(name);
  static Insertable<InventoryItemData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? sku,
    Expression<int>? quantity,
    Expression<double>? unitPrice,
    Expression<String>? category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (sku != null) 'sku': sku,
      if (quantity != null) 'quantity': quantity,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (category != null) 'category': category,
    });
  }

  InventoryItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? sku,
      Value<int>? quantity,
      Value<double?>? unitPrice,
      Value<String?>? category}) {
    return InventoryItemCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      sku: sku ?? this.sku,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      category: category ?? this.category,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sku.present) {
      map['sku'] = Variable<String>(sku.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InventoryItemCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('sku: $sku, ')
          ..write('quantity: $quantity, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }
}

class $PurchaseOrderTable extends PurchaseOrder
    with TableInfo<$PurchaseOrderTable, PurchaseOrderData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PurchaseOrderTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES inventory_item (id)'));
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalCostMeta =
      const VerificationMeta('totalCost');
  @override
  late final GeneratedColumn<double> totalCost = GeneratedColumn<double>(
      'total_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _orderDateMeta =
      const VerificationMeta('orderDate');
  @override
  late final GeneratedColumn<DateTime> orderDate = GeneratedColumn<DateTime>(
      'order_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _supplierIdMeta =
      const VerificationMeta('supplierId');
  @override
  late final GeneratedColumn<int> supplierId = GeneratedColumn<int>(
      'supplier_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemId, quantity, totalCost, orderDate, supplierId, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'purchase_order';
  @override
  VerificationContext validateIntegrity(Insertable<PurchaseOrderData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('total_cost')) {
      context.handle(_totalCostMeta,
          totalCost.isAcceptableOrUnknown(data['total_cost']!, _totalCostMeta));
    } else if (isInserting) {
      context.missing(_totalCostMeta);
    }
    if (data.containsKey('order_date')) {
      context.handle(_orderDateMeta,
          orderDate.isAcceptableOrUnknown(data['order_date']!, _orderDateMeta));
    }
    if (data.containsKey('supplier_id')) {
      context.handle(
          _supplierIdMeta,
          supplierId.isAcceptableOrUnknown(
              data['supplier_id']!, _supplierIdMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PurchaseOrderData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PurchaseOrderData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      totalCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_cost'])!,
      orderDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}order_date'])!,
      supplierId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}supplier_id']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
    );
  }

  @override
  $PurchaseOrderTable createAlias(String alias) {
    return $PurchaseOrderTable(attachedDatabase, alias);
  }
}

class PurchaseOrderData extends DataClass
    implements Insertable<PurchaseOrderData> {
  final int id;
  final int itemId;
  final int quantity;
  final double totalCost;
  final DateTime orderDate;
  final int? supplierId;
  final String? status;
  const PurchaseOrderData(
      {required this.id,
      required this.itemId,
      required this.quantity,
      required this.totalCost,
      required this.orderDate,
      this.supplierId,
      this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_id'] = Variable<int>(itemId);
    map['quantity'] = Variable<int>(quantity);
    map['total_cost'] = Variable<double>(totalCost);
    map['order_date'] = Variable<DateTime>(orderDate);
    if (!nullToAbsent || supplierId != null) {
      map['supplier_id'] = Variable<int>(supplierId);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    return map;
  }

  PurchaseOrderCompanion toCompanion(bool nullToAbsent) {
    return PurchaseOrderCompanion(
      id: Value(id),
      itemId: Value(itemId),
      quantity: Value(quantity),
      totalCost: Value(totalCost),
      orderDate: Value(orderDate),
      supplierId: supplierId == null && nullToAbsent
          ? const Value.absent()
          : Value(supplierId),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
    );
  }

  factory PurchaseOrderData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PurchaseOrderData(
      id: serializer.fromJson<int>(json['id']),
      itemId: serializer.fromJson<int>(json['itemId']),
      quantity: serializer.fromJson<int>(json['quantity']),
      totalCost: serializer.fromJson<double>(json['totalCost']),
      orderDate: serializer.fromJson<DateTime>(json['orderDate']),
      supplierId: serializer.fromJson<int?>(json['supplierId']),
      status: serializer.fromJson<String?>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemId': serializer.toJson<int>(itemId),
      'quantity': serializer.toJson<int>(quantity),
      'totalCost': serializer.toJson<double>(totalCost),
      'orderDate': serializer.toJson<DateTime>(orderDate),
      'supplierId': serializer.toJson<int?>(supplierId),
      'status': serializer.toJson<String?>(status),
    };
  }

  PurchaseOrderData copyWith(
          {int? id,
          int? itemId,
          int? quantity,
          double? totalCost,
          DateTime? orderDate,
          Value<int?> supplierId = const Value.absent(),
          Value<String?> status = const Value.absent()}) =>
      PurchaseOrderData(
        id: id ?? this.id,
        itemId: itemId ?? this.itemId,
        quantity: quantity ?? this.quantity,
        totalCost: totalCost ?? this.totalCost,
        orderDate: orderDate ?? this.orderDate,
        supplierId: supplierId.present ? supplierId.value : this.supplierId,
        status: status.present ? status.value : this.status,
      );
  PurchaseOrderData copyWithCompanion(PurchaseOrderCompanion data) {
    return PurchaseOrderData(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      totalCost: data.totalCost.present ? data.totalCost.value : this.totalCost,
      orderDate: data.orderDate.present ? data.orderDate.value : this.orderDate,
      supplierId:
          data.supplierId.present ? data.supplierId.value : this.supplierId,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseOrderData(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('quantity: $quantity, ')
          ..write('totalCost: $totalCost, ')
          ..write('orderDate: $orderDate, ')
          ..write('supplierId: $supplierId, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, itemId, quantity, totalCost, orderDate, supplierId, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PurchaseOrderData &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.quantity == this.quantity &&
          other.totalCost == this.totalCost &&
          other.orderDate == this.orderDate &&
          other.supplierId == this.supplierId &&
          other.status == this.status);
}

class PurchaseOrderCompanion extends UpdateCompanion<PurchaseOrderData> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<int> quantity;
  final Value<double> totalCost;
  final Value<DateTime> orderDate;
  final Value<int?> supplierId;
  final Value<String?> status;
  const PurchaseOrderCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.totalCost = const Value.absent(),
    this.orderDate = const Value.absent(),
    this.supplierId = const Value.absent(),
    this.status = const Value.absent(),
  });
  PurchaseOrderCompanion.insert({
    this.id = const Value.absent(),
    required int itemId,
    required int quantity,
    required double totalCost,
    this.orderDate = const Value.absent(),
    this.supplierId = const Value.absent(),
    this.status = const Value.absent(),
  })  : itemId = Value(itemId),
        quantity = Value(quantity),
        totalCost = Value(totalCost);
  static Insertable<PurchaseOrderData> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<int>? quantity,
    Expression<double>? totalCost,
    Expression<DateTime>? orderDate,
    Expression<int>? supplierId,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (quantity != null) 'quantity': quantity,
      if (totalCost != null) 'total_cost': totalCost,
      if (orderDate != null) 'order_date': orderDate,
      if (supplierId != null) 'supplier_id': supplierId,
      if (status != null) 'status': status,
    });
  }

  PurchaseOrderCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemId,
      Value<int>? quantity,
      Value<double>? totalCost,
      Value<DateTime>? orderDate,
      Value<int?>? supplierId,
      Value<String?>? status}) {
    return PurchaseOrderCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
      totalCost: totalCost ?? this.totalCost,
      orderDate: orderDate ?? this.orderDate,
      supplierId: supplierId ?? this.supplierId,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (totalCost.present) {
      map['total_cost'] = Variable<double>(totalCost.value);
    }
    if (orderDate.present) {
      map['order_date'] = Variable<DateTime>(orderDate.value);
    }
    if (supplierId.present) {
      map['supplier_id'] = Variable<int>(supplierId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PurchaseOrderCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('quantity: $quantity, ')
          ..write('totalCost: $totalCost, ')
          ..write('orderDate: $orderDate, ')
          ..write('supplierId: $supplierId, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $SupplierTable extends Supplier
    with TableInfo<$SupplierTable, SupplierData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupplierTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contactPersonMeta =
      const VerificationMeta('contactPerson');
  @override
  late final GeneratedColumn<String> contactPerson = GeneratedColumn<String>(
      'contact_person', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, contactPerson, phone, email];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'supplier';
  @override
  VerificationContext validateIntegrity(Insertable<SupplierData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('contact_person')) {
      context.handle(
          _contactPersonMeta,
          contactPerson.isAcceptableOrUnknown(
              data['contact_person']!, _contactPersonMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SupplierData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SupplierData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      contactPerson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_person']),
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
    );
  }

  @override
  $SupplierTable createAlias(String alias) {
    return $SupplierTable(attachedDatabase, alias);
  }
}

class SupplierData extends DataClass implements Insertable<SupplierData> {
  final int id;
  final String name;
  final String? contactPerson;
  final String? phone;
  final String? email;
  const SupplierData(
      {required this.id,
      required this.name,
      this.contactPerson,
      this.phone,
      this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || contactPerson != null) {
      map['contact_person'] = Variable<String>(contactPerson);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    return map;
  }

  SupplierCompanion toCompanion(bool nullToAbsent) {
    return SupplierCompanion(
      id: Value(id),
      name: Value(name),
      contactPerson: contactPerson == null && nullToAbsent
          ? const Value.absent()
          : Value(contactPerson),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
    );
  }

  factory SupplierData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SupplierData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      contactPerson: serializer.fromJson<String?>(json['contactPerson']),
      phone: serializer.fromJson<String?>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'contactPerson': serializer.toJson<String?>(contactPerson),
      'phone': serializer.toJson<String?>(phone),
      'email': serializer.toJson<String?>(email),
    };
  }

  SupplierData copyWith(
          {int? id,
          String? name,
          Value<String?> contactPerson = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<String?> email = const Value.absent()}) =>
      SupplierData(
        id: id ?? this.id,
        name: name ?? this.name,
        contactPerson:
            contactPerson.present ? contactPerson.value : this.contactPerson,
        phone: phone.present ? phone.value : this.phone,
        email: email.present ? email.value : this.email,
      );
  SupplierData copyWithCompanion(SupplierCompanion data) {
    return SupplierData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      contactPerson: data.contactPerson.present
          ? data.contactPerson.value
          : this.contactPerson,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SupplierData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('contactPerson: $contactPerson, ')
          ..write('phone: $phone, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, contactPerson, phone, email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SupplierData &&
          other.id == this.id &&
          other.name == this.name &&
          other.contactPerson == this.contactPerson &&
          other.phone == this.phone &&
          other.email == this.email);
}

class SupplierCompanion extends UpdateCompanion<SupplierData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> contactPerson;
  final Value<String?> phone;
  final Value<String?> email;
  const SupplierCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.contactPerson = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
  });
  SupplierCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.contactPerson = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
  }) : name = Value(name);
  static Insertable<SupplierData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? contactPerson,
    Expression<String>? phone,
    Expression<String>? email,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (contactPerson != null) 'contact_person': contactPerson,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
    });
  }

  SupplierCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? contactPerson,
      Value<String?>? phone,
      Value<String?>? email}) {
    return SupplierCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      contactPerson: contactPerson ?? this.contactPerson,
      phone: phone ?? this.phone,
      email: email ?? this.email,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (contactPerson.present) {
      map['contact_person'] = Variable<String>(contactPerson.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupplierCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('contactPerson: $contactPerson, ')
          ..write('phone: $phone, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }
}

class $SettingTable extends Setting with TableInfo<$SettingTable, SettingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, key, value, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'setting';
  @override
  VerificationContext validateIntegrity(Insertable<SettingData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SettingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $SettingTable createAlias(String alias) {
    return $SettingTable(attachedDatabase, alias);
  }
}

class SettingData extends DataClass implements Insertable<SettingData> {
  final int id;
  final String key;
  final String value;
  final String? description;
  const SettingData(
      {required this.id,
      required this.key,
      required this.value,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  SettingCompanion toCompanion(bool nullToAbsent) {
    return SettingCompanion(
      id: Value(id),
      key: Value(key),
      value: Value(value),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory SettingData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingData(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
      'description': serializer.toJson<String?>(description),
    };
  }

  SettingData copyWith(
          {int? id,
          String? key,
          String? value,
          Value<String?> description = const Value.absent()}) =>
      SettingData(
        id: id ?? this.id,
        key: key ?? this.key,
        value: value ?? this.value,
        description: description.present ? description.value : this.description,
      );
  SettingData copyWithCompanion(SettingCompanion data) {
    return SettingData(
      id: data.id.present ? data.id.value : this.id,
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingData(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, value, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingData &&
          other.id == this.id &&
          other.key == this.key &&
          other.value == this.value &&
          other.description == this.description);
}

class SettingCompanion extends UpdateCompanion<SettingData> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> value;
  final Value<String?> description;
  const SettingCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.description = const Value.absent(),
  });
  SettingCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String value,
    this.description = const Value.absent(),
  })  : key = Value(key),
        value = Value(value);
  static Insertable<SettingData> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? value,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (description != null) 'description': description,
    });
  }

  SettingCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? value,
      Value<String?>? description}) {
    return SettingCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PersonTable person = $PersonTable(this);
  late final $GuardianTable guardian = $GuardianTable(this);
  late final $StudentTable student = $StudentTable(this);
  late final $TeacherTable teacher = $TeacherTable(this);
  late final $EmployeeTable employee = $EmployeeTable(this);
  late final $RoleTable role = $RoleTable(this);
  late final $PermissionTable permission = $PermissionTable(this);
  late final $RolePermissionTable rolePermission = $RolePermissionTable(this);
  late final $UserAccountTable userAccount = $UserAccountTable(this);
  late final $SubjectTable subject = $SubjectTable(this);
  late final $ClassroomTable classroom = $ClassroomTable(this);
  late final $ClassScheduleTable classSchedule = $ClassScheduleTable(this);
  late final $ExamTable exam = $ExamTable(this);
  late final $GradeTable grade = $GradeTable(this);
  late final $SectionAssignmentTable sectionAssignment =
      $SectionAssignmentTable(this);
  late final $AttendanceRecordTable attendanceRecord =
      $AttendanceRecordTable(this);
  late final $TuitionFeeTable tuitionFee = $TuitionFeeTable(this);
  late final $ReceiptTable receipt = $ReceiptTable(this);
  late final $ExpenseTable expense = $ExpenseTable(this);
  late final $PayrollTable payroll = $PayrollTable(this);
  late final $WalletTable wallet = $WalletTable(this);
  late final $WalletTransactionTable walletTransaction =
      $WalletTransactionTable(this);
  late final $CanteenSaleTable canteenSale = $CanteenSaleTable(this);
  late final $CanteenProductTable canteenProduct = $CanteenProductTable(this);
  late final $BookTable book = $BookTable(this);
  late final $BorrowingRecordTable borrowingRecord =
      $BorrowingRecordTable(this);
  late final $InventoryItemTable inventoryItem = $InventoryItemTable(this);
  late final $PurchaseOrderTable purchaseOrder = $PurchaseOrderTable(this);
  late final $SupplierTable supplier = $SupplierTable(this);
  late final $SettingTable setting = $SettingTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        person,
        guardian,
        student,
        teacher,
        employee,
        role,
        permission,
        rolePermission,
        userAccount,
        subject,
        classroom,
        classSchedule,
        exam,
        grade,
        sectionAssignment,
        attendanceRecord,
        tuitionFee,
        receipt,
        expense,
        payroll,
        wallet,
        walletTransaction,
        canteenSale,
        canteenProduct,
        book,
        borrowingRecord,
        inventoryItem,
        purchaseOrder,
        supplier,
        setting
      ];
}

typedef $$PersonTableCreateCompanionBuilder = PersonCompanion Function({
  Value<int> id,
  required String fullName,
  Value<String?> phone,
  Value<String?> email,
  Value<String?> address,
  Value<String?> nationalId,
  Value<DateTime?> birthDate,
  Value<String?> gender,
  Value<DateTime> createdAt,
});
typedef $$PersonTableUpdateCompanionBuilder = PersonCompanion Function({
  Value<int> id,
  Value<String> fullName,
  Value<String?> phone,
  Value<String?> email,
  Value<String?> address,
  Value<String?> nationalId,
  Value<DateTime?> birthDate,
  Value<String?> gender,
  Value<DateTime> createdAt,
});

final class $$PersonTableReferences
    extends BaseReferences<_$AppDatabase, $PersonTable, PersonData> {
  $$PersonTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$GuardianTable, List<GuardianData>>
      _guardianRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.guardian,
              aliasName: 'person__id__guardian__person_id');

  $$GuardianTableProcessedTableManager get guardianRefs {
    final manager = $$GuardianTableTableManager($_db, $_db.guardian)
        .filter((f) => f.personId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_guardianRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$StudentTable, List<StudentData>>
      _studentRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.student,
              aliasName: 'person__id__student__person_id');

  $$StudentTableProcessedTableManager get studentRefs {
    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.personId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_studentRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$TeacherTable, List<TeacherData>>
      _teacherRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.teacher,
              aliasName: 'person__id__teacher__person_id');

  $$TeacherTableProcessedTableManager get teacherRefs {
    final manager = $$TeacherTableTableManager($_db, $_db.teacher)
        .filter((f) => f.personId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_teacherRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$EmployeeTable, List<EmployeeData>>
      _employeeRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.employee,
              aliasName: 'person__id__employee__person_id');

  $$EmployeeTableProcessedTableManager get employeeRefs {
    final manager = $$EmployeeTableTableManager($_db, $_db.employee)
        .filter((f) => f.personId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_employeeRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$UserAccountTable, List<UserAccountData>>
      _userAccountRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.userAccount,
              aliasName: 'person__id__user_account__person_id');

  $$UserAccountTableProcessedTableManager get userAccountRefs {
    final manager = $$UserAccountTableTableManager($_db, $_db.userAccount)
        .filter((f) => f.personId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_userAccountRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$PersonTableFilterComposer
    extends Composer<_$AppDatabase, $PersonTable> {
  $$PersonTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nationalId => $composableBuilder(
      column: $table.nationalId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  Expression<bool> guardianRefs(
      Expression<bool> Function($$GuardianTableFilterComposer f) f) {
    final $$GuardianTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.guardian,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GuardianTableFilterComposer(
              $db: $db,
              $table: $db.guardian,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> studentRefs(
      Expression<bool> Function($$StudentTableFilterComposer f) f) {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> teacherRefs(
      Expression<bool> Function($$TeacherTableFilterComposer f) f) {
    final $$TeacherTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.teacher,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeacherTableFilterComposer(
              $db: $db,
              $table: $db.teacher,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> employeeRefs(
      Expression<bool> Function($$EmployeeTableFilterComposer f) f) {
    final $$EmployeeTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.employee,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EmployeeTableFilterComposer(
              $db: $db,
              $table: $db.employee,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> userAccountRefs(
      Expression<bool> Function($$UserAccountTableFilterComposer f) f) {
    final $$UserAccountTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userAccount,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserAccountTableFilterComposer(
              $db: $db,
              $table: $db.userAccount,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PersonTableOrderingComposer
    extends Composer<_$AppDatabase, $PersonTable> {
  $$PersonTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nationalId => $composableBuilder(
      column: $table.nationalId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$PersonTableAnnotationComposer
    extends Composer<_$AppDatabase, $PersonTable> {
  $$PersonTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get nationalId => $composableBuilder(
      column: $table.nationalId, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> guardianRefs<T extends Object>(
      Expression<T> Function($$GuardianTableAnnotationComposer a) f) {
    final $$GuardianTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.guardian,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GuardianTableAnnotationComposer(
              $db: $db,
              $table: $db.guardian,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> studentRefs<T extends Object>(
      Expression<T> Function($$StudentTableAnnotationComposer a) f) {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> teacherRefs<T extends Object>(
      Expression<T> Function($$TeacherTableAnnotationComposer a) f) {
    final $$TeacherTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.teacher,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeacherTableAnnotationComposer(
              $db: $db,
              $table: $db.teacher,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> employeeRefs<T extends Object>(
      Expression<T> Function($$EmployeeTableAnnotationComposer a) f) {
    final $$EmployeeTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.employee,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EmployeeTableAnnotationComposer(
              $db: $db,
              $table: $db.employee,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> userAccountRefs<T extends Object>(
      Expression<T> Function($$UserAccountTableAnnotationComposer a) f) {
    final $$UserAccountTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userAccount,
        getReferencedColumn: (t) => t.personId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserAccountTableAnnotationComposer(
              $db: $db,
              $table: $db.userAccount,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PersonTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PersonTable,
    PersonData,
    $$PersonTableFilterComposer,
    $$PersonTableOrderingComposer,
    $$PersonTableAnnotationComposer,
    $$PersonTableCreateCompanionBuilder,
    $$PersonTableUpdateCompanionBuilder,
    (PersonData, $$PersonTableReferences),
    PersonData,
    PrefetchHooks Function(
        {bool guardianRefs,
        bool studentRefs,
        bool teacherRefs,
        bool employeeRefs,
        bool userAccountRefs})> {
  $$PersonTableTableManager(_$AppDatabase db, $PersonTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PersonTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PersonTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PersonTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> fullName = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> nationalId = const Value.absent(),
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> gender = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              PersonCompanion(
            id: id,
            fullName: fullName,
            phone: phone,
            email: email,
            address: address,
            nationalId: nationalId,
            birthDate: birthDate,
            gender: gender,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String fullName,
            Value<String?> phone = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> nationalId = const Value.absent(),
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> gender = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              PersonCompanion.insert(
            id: id,
            fullName: fullName,
            phone: phone,
            email: email,
            address: address,
            nationalId: nationalId,
            birthDate: birthDate,
            gender: gender,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$PersonTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {guardianRefs = false,
              studentRefs = false,
              teacherRefs = false,
              employeeRefs = false,
              userAccountRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (guardianRefs) db.guardian,
                if (studentRefs) db.student,
                if (teacherRefs) db.teacher,
                if (employeeRefs) db.employee,
                if (userAccountRefs) db.userAccount
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (guardianRefs)
                    await $_getPrefetchedData<PersonData, $PersonTable,
                            GuardianData>(
                        currentTable: table,
                        referencedTable:
                            $$PersonTableReferences._guardianRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PersonTableReferences(db, table, p0).guardianRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.personId == item.id),
                        typedResults: items),
                  if (studentRefs)
                    await $_getPrefetchedData<PersonData, $PersonTable,
                            StudentData>(
                        currentTable: table,
                        referencedTable:
                            $$PersonTableReferences._studentRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PersonTableReferences(db, table, p0).studentRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.personId == item.id),
                        typedResults: items),
                  if (teacherRefs)
                    await $_getPrefetchedData<PersonData, $PersonTable,
                            TeacherData>(
                        currentTable: table,
                        referencedTable:
                            $$PersonTableReferences._teacherRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PersonTableReferences(db, table, p0).teacherRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.personId == item.id),
                        typedResults: items),
                  if (employeeRefs)
                    await $_getPrefetchedData<PersonData, $PersonTable,
                            EmployeeData>(
                        currentTable: table,
                        referencedTable:
                            $$PersonTableReferences._employeeRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PersonTableReferences(db, table, p0).employeeRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.personId == item.id),
                        typedResults: items),
                  if (userAccountRefs)
                    await $_getPrefetchedData<PersonData, $PersonTable,
                            UserAccountData>(
                        currentTable: table,
                        referencedTable:
                            $$PersonTableReferences._userAccountRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PersonTableReferences(db, table, p0)
                                .userAccountRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.personId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$PersonTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PersonTable,
    PersonData,
    $$PersonTableFilterComposer,
    $$PersonTableOrderingComposer,
    $$PersonTableAnnotationComposer,
    $$PersonTableCreateCompanionBuilder,
    $$PersonTableUpdateCompanionBuilder,
    (PersonData, $$PersonTableReferences),
    PersonData,
    PrefetchHooks Function(
        {bool guardianRefs,
        bool studentRefs,
        bool teacherRefs,
        bool employeeRefs,
        bool userAccountRefs})>;
typedef $$GuardianTableCreateCompanionBuilder = GuardianCompanion Function({
  Value<int> id,
  required int personId,
  Value<String?> relationToStudent,
  Value<bool> isPrimaryContact,
});
typedef $$GuardianTableUpdateCompanionBuilder = GuardianCompanion Function({
  Value<int> id,
  Value<int> personId,
  Value<String?> relationToStudent,
  Value<bool> isPrimaryContact,
});

final class $$GuardianTableReferences
    extends BaseReferences<_$AppDatabase, $GuardianTable, GuardianData> {
  $$GuardianTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PersonTable _personIdTable(_$AppDatabase db) =>
      db.person.createAlias('guardian__person_id__person__id');

  $$PersonTableProcessedTableManager get personId {
    final $_column = $_itemColumn<int>('person_id')!;

    final manager = $$PersonTableTableManager($_db, $_db.person)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_personIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$StudentTable, List<StudentData>>
      _studentRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.student,
              aliasName: 'guardian__id__student__guardian_id');

  $$StudentTableProcessedTableManager get studentRefs {
    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.guardianId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_studentRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$GuardianTableFilterComposer
    extends Composer<_$AppDatabase, $GuardianTable> {
  $$GuardianTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get relationToStudent => $composableBuilder(
      column: $table.relationToStudent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPrimaryContact => $composableBuilder(
      column: $table.isPrimaryContact,
      builder: (column) => ColumnFilters(column));

  $$PersonTableFilterComposer get personId {
    final $$PersonTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableFilterComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> studentRefs(
      Expression<bool> Function($$StudentTableFilterComposer f) f) {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.guardianId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$GuardianTableOrderingComposer
    extends Composer<_$AppDatabase, $GuardianTable> {
  $$GuardianTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get relationToStudent => $composableBuilder(
      column: $table.relationToStudent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPrimaryContact => $composableBuilder(
      column: $table.isPrimaryContact,
      builder: (column) => ColumnOrderings(column));

  $$PersonTableOrderingComposer get personId {
    final $$PersonTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableOrderingComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GuardianTableAnnotationComposer
    extends Composer<_$AppDatabase, $GuardianTable> {
  $$GuardianTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get relationToStudent => $composableBuilder(
      column: $table.relationToStudent, builder: (column) => column);

  GeneratedColumn<bool> get isPrimaryContact => $composableBuilder(
      column: $table.isPrimaryContact, builder: (column) => column);

  $$PersonTableAnnotationComposer get personId {
    final $$PersonTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableAnnotationComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> studentRefs<T extends Object>(
      Expression<T> Function($$StudentTableAnnotationComposer a) f) {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.guardianId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$GuardianTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GuardianTable,
    GuardianData,
    $$GuardianTableFilterComposer,
    $$GuardianTableOrderingComposer,
    $$GuardianTableAnnotationComposer,
    $$GuardianTableCreateCompanionBuilder,
    $$GuardianTableUpdateCompanionBuilder,
    (GuardianData, $$GuardianTableReferences),
    GuardianData,
    PrefetchHooks Function({bool personId, bool studentRefs})> {
  $$GuardianTableTableManager(_$AppDatabase db, $GuardianTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GuardianTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GuardianTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GuardianTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> personId = const Value.absent(),
            Value<String?> relationToStudent = const Value.absent(),
            Value<bool> isPrimaryContact = const Value.absent(),
          }) =>
              GuardianCompanion(
            id: id,
            personId: personId,
            relationToStudent: relationToStudent,
            isPrimaryContact: isPrimaryContact,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int personId,
            Value<String?> relationToStudent = const Value.absent(),
            Value<bool> isPrimaryContact = const Value.absent(),
          }) =>
              GuardianCompanion.insert(
            id: id,
            personId: personId,
            relationToStudent: relationToStudent,
            isPrimaryContact: isPrimaryContact,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$GuardianTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({personId = false, studentRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (studentRefs) db.student],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (personId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.personId,
                    referencedTable:
                        $$GuardianTableReferences._personIdTable(db),
                    referencedColumn:
                        $$GuardianTableReferences._personIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (studentRefs)
                    await $_getPrefetchedData<GuardianData, $GuardianTable,
                            StudentData>(
                        currentTable: table,
                        referencedTable:
                            $$GuardianTableReferences._studentRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GuardianTableReferences(db, table, p0)
                                .studentRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.guardianId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$GuardianTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GuardianTable,
    GuardianData,
    $$GuardianTableFilterComposer,
    $$GuardianTableOrderingComposer,
    $$GuardianTableAnnotationComposer,
    $$GuardianTableCreateCompanionBuilder,
    $$GuardianTableUpdateCompanionBuilder,
    (GuardianData, $$GuardianTableReferences),
    GuardianData,
    PrefetchHooks Function({bool personId, bool studentRefs})>;
typedef $$StudentTableCreateCompanionBuilder = StudentCompanion Function({
  Value<int> id,
  required int personId,
  Value<DateTime> enrollmentDate,
  Value<bool> status,
  required int guardianId,
  Value<String?> photoPath,
});
typedef $$StudentTableUpdateCompanionBuilder = StudentCompanion Function({
  Value<int> id,
  Value<int> personId,
  Value<DateTime> enrollmentDate,
  Value<bool> status,
  Value<int> guardianId,
  Value<String?> photoPath,
});

final class $$StudentTableReferences
    extends BaseReferences<_$AppDatabase, $StudentTable, StudentData> {
  $$StudentTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PersonTable _personIdTable(_$AppDatabase db) =>
      db.person.createAlias('student__person_id__person__id');

  $$PersonTableProcessedTableManager get personId {
    final $_column = $_itemColumn<int>('person_id')!;

    final manager = $$PersonTableTableManager($_db, $_db.person)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_personIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $GuardianTable _guardianIdTable(_$AppDatabase db) =>
      db.guardian.createAlias('student__guardian_id__guardian__id');

  $$GuardianTableProcessedTableManager get guardianId {
    final $_column = $_itemColumn<int>('guardian_id')!;

    final manager = $$GuardianTableTableManager($_db, $_db.guardian)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_guardianIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$GradeTable, List<GradeData>> _gradeRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.grade,
          aliasName: 'student__id__grade__student_id');

  $$GradeTableProcessedTableManager get gradeRefs {
    final manager = $$GradeTableTableManager($_db, $_db.grade)
        .filter((f) => f.studentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_gradeRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$SectionAssignmentTable,
      List<SectionAssignmentData>> _sectionAssignmentRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.sectionAssignment,
          aliasName: 'student__id__section_assignment__student_id');

  $$SectionAssignmentTableProcessedTableManager get sectionAssignmentRefs {
    final manager =
        $$SectionAssignmentTableTableManager($_db, $_db.sectionAssignment)
            .filter((f) => f.studentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_sectionAssignmentRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$AttendanceRecordTable, List<AttendanceRecordData>>
      _attendanceRecordRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.attendanceRecord,
              aliasName: 'student__id__attendance_record__student_id');

  $$AttendanceRecordTableProcessedTableManager get attendanceRecordRefs {
    final manager =
        $$AttendanceRecordTableTableManager($_db, $_db.attendanceRecord)
            .filter((f) => f.studentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_attendanceRecordRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$TuitionFeeTable, List<TuitionFeeData>>
      _tuitionFeeRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.tuitionFee,
              aliasName: 'student__id__tuition_fee__student_id');

  $$TuitionFeeTableProcessedTableManager get tuitionFeeRefs {
    final manager = $$TuitionFeeTableTableManager($_db, $_db.tuitionFee)
        .filter((f) => f.studentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_tuitionFeeRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ReceiptTable, List<ReceiptData>>
      _receiptRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.receipt,
              aliasName: 'student__id__receipt__student_id');

  $$ReceiptTableProcessedTableManager get receiptRefs {
    final manager = $$ReceiptTableTableManager($_db, $_db.receipt)
        .filter((f) => f.studentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_receiptRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$WalletTable, List<WalletData>> _walletRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.wallet,
          aliasName: 'student__id__wallet__student_id');

  $$WalletTableProcessedTableManager get walletRefs {
    final manager = $$WalletTableTableManager($_db, $_db.wallet)
        .filter((f) => f.studentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_walletRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$CanteenSaleTable, List<CanteenSaleData>>
      _canteenSaleRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.canteenSale,
              aliasName: 'student__id__canteen_sale__student_id');

  $$CanteenSaleTableProcessedTableManager get canteenSaleRefs {
    final manager = $$CanteenSaleTableTableManager($_db, $_db.canteenSale)
        .filter((f) => f.studentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_canteenSaleRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$BorrowingRecordTable, List<BorrowingRecordData>>
      _borrowingRecordRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.borrowingRecord,
              aliasName: 'student__id__borrowing_record__student_id');

  $$BorrowingRecordTableProcessedTableManager get borrowingRecordRefs {
    final manager =
        $$BorrowingRecordTableTableManager($_db, $_db.borrowingRecord)
            .filter((f) => f.studentId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_borrowingRecordRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$StudentTableFilterComposer
    extends Composer<_$AppDatabase, $StudentTable> {
  $$StudentTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get enrollmentDate => $composableBuilder(
      column: $table.enrollmentDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get photoPath => $composableBuilder(
      column: $table.photoPath, builder: (column) => ColumnFilters(column));

  $$PersonTableFilterComposer get personId {
    final $$PersonTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableFilterComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$GuardianTableFilterComposer get guardianId {
    final $$GuardianTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.guardianId,
        referencedTable: $db.guardian,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GuardianTableFilterComposer(
              $db: $db,
              $table: $db.guardian,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> gradeRefs(
      Expression<bool> Function($$GradeTableFilterComposer f) f) {
    final $$GradeTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.grade,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GradeTableFilterComposer(
              $db: $db,
              $table: $db.grade,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> sectionAssignmentRefs(
      Expression<bool> Function($$SectionAssignmentTableFilterComposer f) f) {
    final $$SectionAssignmentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sectionAssignment,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SectionAssignmentTableFilterComposer(
              $db: $db,
              $table: $db.sectionAssignment,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> attendanceRecordRefs(
      Expression<bool> Function($$AttendanceRecordTableFilterComposer f) f) {
    final $$AttendanceRecordTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.attendanceRecord,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AttendanceRecordTableFilterComposer(
              $db: $db,
              $table: $db.attendanceRecord,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> tuitionFeeRefs(
      Expression<bool> Function($$TuitionFeeTableFilterComposer f) f) {
    final $$TuitionFeeTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tuitionFee,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TuitionFeeTableFilterComposer(
              $db: $db,
              $table: $db.tuitionFee,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> receiptRefs(
      Expression<bool> Function($$ReceiptTableFilterComposer f) f) {
    final $$ReceiptTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.receipt,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ReceiptTableFilterComposer(
              $db: $db,
              $table: $db.receipt,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> walletRefs(
      Expression<bool> Function($$WalletTableFilterComposer f) f) {
    final $$WalletTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.wallet,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletTableFilterComposer(
              $db: $db,
              $table: $db.wallet,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> canteenSaleRefs(
      Expression<bool> Function($$CanteenSaleTableFilterComposer f) f) {
    final $$CanteenSaleTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.canteenSale,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CanteenSaleTableFilterComposer(
              $db: $db,
              $table: $db.canteenSale,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> borrowingRecordRefs(
      Expression<bool> Function($$BorrowingRecordTableFilterComposer f) f) {
    final $$BorrowingRecordTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.borrowingRecord,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BorrowingRecordTableFilterComposer(
              $db: $db,
              $table: $db.borrowingRecord,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StudentTableOrderingComposer
    extends Composer<_$AppDatabase, $StudentTable> {
  $$StudentTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get enrollmentDate => $composableBuilder(
      column: $table.enrollmentDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get photoPath => $composableBuilder(
      column: $table.photoPath, builder: (column) => ColumnOrderings(column));

  $$PersonTableOrderingComposer get personId {
    final $$PersonTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableOrderingComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$GuardianTableOrderingComposer get guardianId {
    final $$GuardianTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.guardianId,
        referencedTable: $db.guardian,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GuardianTableOrderingComposer(
              $db: $db,
              $table: $db.guardian,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StudentTableAnnotationComposer
    extends Composer<_$AppDatabase, $StudentTable> {
  $$StudentTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get enrollmentDate => $composableBuilder(
      column: $table.enrollmentDate, builder: (column) => column);

  GeneratedColumn<bool> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get photoPath =>
      $composableBuilder(column: $table.photoPath, builder: (column) => column);

  $$PersonTableAnnotationComposer get personId {
    final $$PersonTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableAnnotationComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$GuardianTableAnnotationComposer get guardianId {
    final $$GuardianTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.guardianId,
        referencedTable: $db.guardian,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GuardianTableAnnotationComposer(
              $db: $db,
              $table: $db.guardian,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> gradeRefs<T extends Object>(
      Expression<T> Function($$GradeTableAnnotationComposer a) f) {
    final $$GradeTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.grade,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GradeTableAnnotationComposer(
              $db: $db,
              $table: $db.grade,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> sectionAssignmentRefs<T extends Object>(
      Expression<T> Function($$SectionAssignmentTableAnnotationComposer a) f) {
    final $$SectionAssignmentTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.sectionAssignment,
            getReferencedColumn: (t) => t.studentId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$SectionAssignmentTableAnnotationComposer(
                  $db: $db,
                  $table: $db.sectionAssignment,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> attendanceRecordRefs<T extends Object>(
      Expression<T> Function($$AttendanceRecordTableAnnotationComposer a) f) {
    final $$AttendanceRecordTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.attendanceRecord,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AttendanceRecordTableAnnotationComposer(
              $db: $db,
              $table: $db.attendanceRecord,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> tuitionFeeRefs<T extends Object>(
      Expression<T> Function($$TuitionFeeTableAnnotationComposer a) f) {
    final $$TuitionFeeTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tuitionFee,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TuitionFeeTableAnnotationComposer(
              $db: $db,
              $table: $db.tuitionFee,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> receiptRefs<T extends Object>(
      Expression<T> Function($$ReceiptTableAnnotationComposer a) f) {
    final $$ReceiptTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.receipt,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ReceiptTableAnnotationComposer(
              $db: $db,
              $table: $db.receipt,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> walletRefs<T extends Object>(
      Expression<T> Function($$WalletTableAnnotationComposer a) f) {
    final $$WalletTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.wallet,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletTableAnnotationComposer(
              $db: $db,
              $table: $db.wallet,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> canteenSaleRefs<T extends Object>(
      Expression<T> Function($$CanteenSaleTableAnnotationComposer a) f) {
    final $$CanteenSaleTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.canteenSale,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CanteenSaleTableAnnotationComposer(
              $db: $db,
              $table: $db.canteenSale,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> borrowingRecordRefs<T extends Object>(
      Expression<T> Function($$BorrowingRecordTableAnnotationComposer a) f) {
    final $$BorrowingRecordTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.borrowingRecord,
        getReferencedColumn: (t) => t.studentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BorrowingRecordTableAnnotationComposer(
              $db: $db,
              $table: $db.borrowingRecord,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StudentTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StudentTable,
    StudentData,
    $$StudentTableFilterComposer,
    $$StudentTableOrderingComposer,
    $$StudentTableAnnotationComposer,
    $$StudentTableCreateCompanionBuilder,
    $$StudentTableUpdateCompanionBuilder,
    (StudentData, $$StudentTableReferences),
    StudentData,
    PrefetchHooks Function(
        {bool personId,
        bool guardianId,
        bool gradeRefs,
        bool sectionAssignmentRefs,
        bool attendanceRecordRefs,
        bool tuitionFeeRefs,
        bool receiptRefs,
        bool walletRefs,
        bool canteenSaleRefs,
        bool borrowingRecordRefs})> {
  $$StudentTableTableManager(_$AppDatabase db, $StudentTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StudentTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StudentTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StudentTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> personId = const Value.absent(),
            Value<DateTime> enrollmentDate = const Value.absent(),
            Value<bool> status = const Value.absent(),
            Value<int> guardianId = const Value.absent(),
            Value<String?> photoPath = const Value.absent(),
          }) =>
              StudentCompanion(
            id: id,
            personId: personId,
            enrollmentDate: enrollmentDate,
            status: status,
            guardianId: guardianId,
            photoPath: photoPath,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int personId,
            Value<DateTime> enrollmentDate = const Value.absent(),
            Value<bool> status = const Value.absent(),
            required int guardianId,
            Value<String?> photoPath = const Value.absent(),
          }) =>
              StudentCompanion.insert(
            id: id,
            personId: personId,
            enrollmentDate: enrollmentDate,
            status: status,
            guardianId: guardianId,
            photoPath: photoPath,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$StudentTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {personId = false,
              guardianId = false,
              gradeRefs = false,
              sectionAssignmentRefs = false,
              attendanceRecordRefs = false,
              tuitionFeeRefs = false,
              receiptRefs = false,
              walletRefs = false,
              canteenSaleRefs = false,
              borrowingRecordRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (gradeRefs) db.grade,
                if (sectionAssignmentRefs) db.sectionAssignment,
                if (attendanceRecordRefs) db.attendanceRecord,
                if (tuitionFeeRefs) db.tuitionFee,
                if (receiptRefs) db.receipt,
                if (walletRefs) db.wallet,
                if (canteenSaleRefs) db.canteenSale,
                if (borrowingRecordRefs) db.borrowingRecord
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (personId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.personId,
                    referencedTable:
                        $$StudentTableReferences._personIdTable(db),
                    referencedColumn:
                        $$StudentTableReferences._personIdTable(db).id,
                  ) as T;
                }
                if (guardianId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.guardianId,
                    referencedTable:
                        $$StudentTableReferences._guardianIdTable(db),
                    referencedColumn:
                        $$StudentTableReferences._guardianIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gradeRefs)
                    await $_getPrefetchedData<StudentData, $StudentTable,
                            GradeData>(
                        currentTable: table,
                        referencedTable:
                            $$StudentTableReferences._gradeRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StudentTableReferences(db, table, p0).gradeRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.studentId == item.id),
                        typedResults: items),
                  if (sectionAssignmentRefs)
                    await $_getPrefetchedData<StudentData, $StudentTable, SectionAssignmentData>(
                        currentTable: table,
                        referencedTable: $$StudentTableReferences
                            ._sectionAssignmentRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StudentTableReferences(db, table, p0)
                                .sectionAssignmentRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.studentId == item.id),
                        typedResults: items),
                  if (attendanceRecordRefs)
                    await $_getPrefetchedData<StudentData, $StudentTable,
                            AttendanceRecordData>(
                        currentTable: table,
                        referencedTable: $$StudentTableReferences
                            ._attendanceRecordRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StudentTableReferences(db, table, p0)
                                .attendanceRecordRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.studentId == item.id),
                        typedResults: items),
                  if (tuitionFeeRefs)
                    await $_getPrefetchedData<StudentData, $StudentTable,
                            TuitionFeeData>(
                        currentTable: table,
                        referencedTable:
                            $$StudentTableReferences._tuitionFeeRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StudentTableReferences(db, table, p0)
                                .tuitionFeeRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.studentId == item.id),
                        typedResults: items),
                  if (receiptRefs)
                    await $_getPrefetchedData<StudentData, $StudentTable,
                            ReceiptData>(
                        currentTable: table,
                        referencedTable:
                            $$StudentTableReferences._receiptRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StudentTableReferences(db, table, p0).receiptRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.studentId == item.id),
                        typedResults: items),
                  if (walletRefs)
                    await $_getPrefetchedData<StudentData, $StudentTable,
                            WalletData>(
                        currentTable: table,
                        referencedTable:
                            $$StudentTableReferences._walletRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StudentTableReferences(db, table, p0).walletRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.studentId == item.id),
                        typedResults: items),
                  if (canteenSaleRefs)
                    await $_getPrefetchedData<StudentData, $StudentTable,
                            CanteenSaleData>(
                        currentTable: table,
                        referencedTable:
                            $$StudentTableReferences._canteenSaleRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StudentTableReferences(db, table, p0)
                                .canteenSaleRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.studentId == item.id),
                        typedResults: items),
                  if (borrowingRecordRefs)
                    await $_getPrefetchedData<StudentData, $StudentTable,
                            BorrowingRecordData>(
                        currentTable: table,
                        referencedTable: $$StudentTableReferences
                            ._borrowingRecordRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StudentTableReferences(db, table, p0)
                                .borrowingRecordRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.studentId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$StudentTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StudentTable,
    StudentData,
    $$StudentTableFilterComposer,
    $$StudentTableOrderingComposer,
    $$StudentTableAnnotationComposer,
    $$StudentTableCreateCompanionBuilder,
    $$StudentTableUpdateCompanionBuilder,
    (StudentData, $$StudentTableReferences),
    StudentData,
    PrefetchHooks Function(
        {bool personId,
        bool guardianId,
        bool gradeRefs,
        bool sectionAssignmentRefs,
        bool attendanceRecordRefs,
        bool tuitionFeeRefs,
        bool receiptRefs,
        bool walletRefs,
        bool canteenSaleRefs,
        bool borrowingRecordRefs})>;
typedef $$TeacherTableCreateCompanionBuilder = TeacherCompanion Function({
  Value<int> id,
  required int personId,
  Value<String?> specialization,
  Value<DateTime> hireDate,
  Value<bool> status,
});
typedef $$TeacherTableUpdateCompanionBuilder = TeacherCompanion Function({
  Value<int> id,
  Value<int> personId,
  Value<String?> specialization,
  Value<DateTime> hireDate,
  Value<bool> status,
});

final class $$TeacherTableReferences
    extends BaseReferences<_$AppDatabase, $TeacherTable, TeacherData> {
  $$TeacherTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PersonTable _personIdTable(_$AppDatabase db) =>
      db.person.createAlias('teacher__person_id__person__id');

  $$PersonTableProcessedTableManager get personId {
    final $_column = $_itemColumn<int>('person_id')!;

    final manager = $$PersonTableTableManager($_db, $_db.person)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_personIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ClassScheduleTable, List<ClassScheduleData>>
      _classScheduleRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.classSchedule,
              aliasName: 'teacher__id__class_schedule__teacher_id');

  $$ClassScheduleTableProcessedTableManager get classScheduleRefs {
    final manager = $$ClassScheduleTableTableManager($_db, $_db.classSchedule)
        .filter((f) => f.teacherId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_classScheduleRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TeacherTableFilterComposer
    extends Composer<_$AppDatabase, $TeacherTable> {
  $$TeacherTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get specialization => $composableBuilder(
      column: $table.specialization,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get hireDate => $composableBuilder(
      column: $table.hireDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  $$PersonTableFilterComposer get personId {
    final $$PersonTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableFilterComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> classScheduleRefs(
      Expression<bool> Function($$ClassScheduleTableFilterComposer f) f) {
    final $$ClassScheduleTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.classSchedule,
        getReferencedColumn: (t) => t.teacherId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassScheduleTableFilterComposer(
              $db: $db,
              $table: $db.classSchedule,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TeacherTableOrderingComposer
    extends Composer<_$AppDatabase, $TeacherTable> {
  $$TeacherTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get specialization => $composableBuilder(
      column: $table.specialization,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get hireDate => $composableBuilder(
      column: $table.hireDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  $$PersonTableOrderingComposer get personId {
    final $$PersonTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableOrderingComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TeacherTableAnnotationComposer
    extends Composer<_$AppDatabase, $TeacherTable> {
  $$TeacherTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get specialization => $composableBuilder(
      column: $table.specialization, builder: (column) => column);

  GeneratedColumn<DateTime> get hireDate =>
      $composableBuilder(column: $table.hireDate, builder: (column) => column);

  GeneratedColumn<bool> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$PersonTableAnnotationComposer get personId {
    final $$PersonTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableAnnotationComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> classScheduleRefs<T extends Object>(
      Expression<T> Function($$ClassScheduleTableAnnotationComposer a) f) {
    final $$ClassScheduleTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.classSchedule,
        getReferencedColumn: (t) => t.teacherId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassScheduleTableAnnotationComposer(
              $db: $db,
              $table: $db.classSchedule,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TeacherTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TeacherTable,
    TeacherData,
    $$TeacherTableFilterComposer,
    $$TeacherTableOrderingComposer,
    $$TeacherTableAnnotationComposer,
    $$TeacherTableCreateCompanionBuilder,
    $$TeacherTableUpdateCompanionBuilder,
    (TeacherData, $$TeacherTableReferences),
    TeacherData,
    PrefetchHooks Function({bool personId, bool classScheduleRefs})> {
  $$TeacherTableTableManager(_$AppDatabase db, $TeacherTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TeacherTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TeacherTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TeacherTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> personId = const Value.absent(),
            Value<String?> specialization = const Value.absent(),
            Value<DateTime> hireDate = const Value.absent(),
            Value<bool> status = const Value.absent(),
          }) =>
              TeacherCompanion(
            id: id,
            personId: personId,
            specialization: specialization,
            hireDate: hireDate,
            status: status,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int personId,
            Value<String?> specialization = const Value.absent(),
            Value<DateTime> hireDate = const Value.absent(),
            Value<bool> status = const Value.absent(),
          }) =>
              TeacherCompanion.insert(
            id: id,
            personId: personId,
            specialization: specialization,
            hireDate: hireDate,
            status: status,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TeacherTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {personId = false, classScheduleRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (classScheduleRefs) db.classSchedule
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (personId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.personId,
                    referencedTable:
                        $$TeacherTableReferences._personIdTable(db),
                    referencedColumn:
                        $$TeacherTableReferences._personIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (classScheduleRefs)
                    await $_getPrefetchedData<TeacherData, $TeacherTable,
                            ClassScheduleData>(
                        currentTable: table,
                        referencedTable: $$TeacherTableReferences
                            ._classScheduleRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TeacherTableReferences(db, table, p0)
                                .classScheduleRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.teacherId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TeacherTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TeacherTable,
    TeacherData,
    $$TeacherTableFilterComposer,
    $$TeacherTableOrderingComposer,
    $$TeacherTableAnnotationComposer,
    $$TeacherTableCreateCompanionBuilder,
    $$TeacherTableUpdateCompanionBuilder,
    (TeacherData, $$TeacherTableReferences),
    TeacherData,
    PrefetchHooks Function({bool personId, bool classScheduleRefs})>;
typedef $$EmployeeTableCreateCompanionBuilder = EmployeeCompanion Function({
  Value<int> id,
  required int personId,
  Value<String?> jobTitle,
  Value<DateTime> hireDate,
  Value<bool> status,
});
typedef $$EmployeeTableUpdateCompanionBuilder = EmployeeCompanion Function({
  Value<int> id,
  Value<int> personId,
  Value<String?> jobTitle,
  Value<DateTime> hireDate,
  Value<bool> status,
});

final class $$EmployeeTableReferences
    extends BaseReferences<_$AppDatabase, $EmployeeTable, EmployeeData> {
  $$EmployeeTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PersonTable _personIdTable(_$AppDatabase db) =>
      db.person.createAlias('employee__person_id__person__id');

  $$PersonTableProcessedTableManager get personId {
    final $_column = $_itemColumn<int>('person_id')!;

    final manager = $$PersonTableTableManager($_db, $_db.person)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_personIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$EmployeeTableFilterComposer
    extends Composer<_$AppDatabase, $EmployeeTable> {
  $$EmployeeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get jobTitle => $composableBuilder(
      column: $table.jobTitle, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get hireDate => $composableBuilder(
      column: $table.hireDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  $$PersonTableFilterComposer get personId {
    final $$PersonTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableFilterComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EmployeeTableOrderingComposer
    extends Composer<_$AppDatabase, $EmployeeTable> {
  $$EmployeeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get jobTitle => $composableBuilder(
      column: $table.jobTitle, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get hireDate => $composableBuilder(
      column: $table.hireDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  $$PersonTableOrderingComposer get personId {
    final $$PersonTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableOrderingComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EmployeeTableAnnotationComposer
    extends Composer<_$AppDatabase, $EmployeeTable> {
  $$EmployeeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get jobTitle =>
      $composableBuilder(column: $table.jobTitle, builder: (column) => column);

  GeneratedColumn<DateTime> get hireDate =>
      $composableBuilder(column: $table.hireDate, builder: (column) => column);

  GeneratedColumn<bool> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$PersonTableAnnotationComposer get personId {
    final $$PersonTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableAnnotationComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EmployeeTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EmployeeTable,
    EmployeeData,
    $$EmployeeTableFilterComposer,
    $$EmployeeTableOrderingComposer,
    $$EmployeeTableAnnotationComposer,
    $$EmployeeTableCreateCompanionBuilder,
    $$EmployeeTableUpdateCompanionBuilder,
    (EmployeeData, $$EmployeeTableReferences),
    EmployeeData,
    PrefetchHooks Function({bool personId})> {
  $$EmployeeTableTableManager(_$AppDatabase db, $EmployeeTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EmployeeTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EmployeeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EmployeeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> personId = const Value.absent(),
            Value<String?> jobTitle = const Value.absent(),
            Value<DateTime> hireDate = const Value.absent(),
            Value<bool> status = const Value.absent(),
          }) =>
              EmployeeCompanion(
            id: id,
            personId: personId,
            jobTitle: jobTitle,
            hireDate: hireDate,
            status: status,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int personId,
            Value<String?> jobTitle = const Value.absent(),
            Value<DateTime> hireDate = const Value.absent(),
            Value<bool> status = const Value.absent(),
          }) =>
              EmployeeCompanion.insert(
            id: id,
            personId: personId,
            jobTitle: jobTitle,
            hireDate: hireDate,
            status: status,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$EmployeeTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({personId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (personId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.personId,
                    referencedTable:
                        $$EmployeeTableReferences._personIdTable(db),
                    referencedColumn:
                        $$EmployeeTableReferences._personIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$EmployeeTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EmployeeTable,
    EmployeeData,
    $$EmployeeTableFilterComposer,
    $$EmployeeTableOrderingComposer,
    $$EmployeeTableAnnotationComposer,
    $$EmployeeTableCreateCompanionBuilder,
    $$EmployeeTableUpdateCompanionBuilder,
    (EmployeeData, $$EmployeeTableReferences),
    EmployeeData,
    PrefetchHooks Function({bool personId})>;
typedef $$RoleTableCreateCompanionBuilder = RoleCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$RoleTableUpdateCompanionBuilder = RoleCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$RoleTableReferences
    extends BaseReferences<_$AppDatabase, $RoleTable, RoleData> {
  $$RoleTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RolePermissionTable, List<RolePermissionData>>
      _rolePermissionRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.rolePermission,
              aliasName: 'role__id__role_permission__role_id');

  $$RolePermissionTableProcessedTableManager get rolePermissionRefs {
    final manager = $$RolePermissionTableTableManager($_db, $_db.rolePermission)
        .filter((f) => f.roleId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_rolePermissionRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$UserAccountTable, List<UserAccountData>>
      _userAccountRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.userAccount,
              aliasName: 'role__id__user_account__role_id');

  $$UserAccountTableProcessedTableManager get userAccountRefs {
    final manager = $$UserAccountTableTableManager($_db, $_db.userAccount)
        .filter((f) => f.roleId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_userAccountRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$RoleTableFilterComposer extends Composer<_$AppDatabase, $RoleTable> {
  $$RoleTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> rolePermissionRefs(
      Expression<bool> Function($$RolePermissionTableFilterComposer f) f) {
    final $$RolePermissionTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rolePermission,
        getReferencedColumn: (t) => t.roleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RolePermissionTableFilterComposer(
              $db: $db,
              $table: $db.rolePermission,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> userAccountRefs(
      Expression<bool> Function($$UserAccountTableFilterComposer f) f) {
    final $$UserAccountTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userAccount,
        getReferencedColumn: (t) => t.roleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserAccountTableFilterComposer(
              $db: $db,
              $table: $db.userAccount,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RoleTableOrderingComposer extends Composer<_$AppDatabase, $RoleTable> {
  $$RoleTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$RoleTableAnnotationComposer
    extends Composer<_$AppDatabase, $RoleTable> {
  $$RoleTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> rolePermissionRefs<T extends Object>(
      Expression<T> Function($$RolePermissionTableAnnotationComposer a) f) {
    final $$RolePermissionTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rolePermission,
        getReferencedColumn: (t) => t.roleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RolePermissionTableAnnotationComposer(
              $db: $db,
              $table: $db.rolePermission,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> userAccountRefs<T extends Object>(
      Expression<T> Function($$UserAccountTableAnnotationComposer a) f) {
    final $$UserAccountTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userAccount,
        getReferencedColumn: (t) => t.roleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserAccountTableAnnotationComposer(
              $db: $db,
              $table: $db.userAccount,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RoleTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RoleTable,
    RoleData,
    $$RoleTableFilterComposer,
    $$RoleTableOrderingComposer,
    $$RoleTableAnnotationComposer,
    $$RoleTableCreateCompanionBuilder,
    $$RoleTableUpdateCompanionBuilder,
    (RoleData, $$RoleTableReferences),
    RoleData,
    PrefetchHooks Function({bool rolePermissionRefs, bool userAccountRefs})> {
  $$RoleTableTableManager(_$AppDatabase db, $RoleTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RoleTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RoleTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RoleTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              RoleCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              RoleCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$RoleTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {rolePermissionRefs = false, userAccountRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (rolePermissionRefs) db.rolePermission,
                if (userAccountRefs) db.userAccount
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (rolePermissionRefs)
                    await $_getPrefetchedData<RoleData, $RoleTable,
                            RolePermissionData>(
                        currentTable: table,
                        referencedTable:
                            $$RoleTableReferences._rolePermissionRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RoleTableReferences(db, table, p0)
                                .rolePermissionRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.roleId == item.id),
                        typedResults: items),
                  if (userAccountRefs)
                    await $_getPrefetchedData<RoleData, $RoleTable,
                            UserAccountData>(
                        currentTable: table,
                        referencedTable:
                            $$RoleTableReferences._userAccountRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RoleTableReferences(db, table, p0)
                                .userAccountRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.roleId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$RoleTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RoleTable,
    RoleData,
    $$RoleTableFilterComposer,
    $$RoleTableOrderingComposer,
    $$RoleTableAnnotationComposer,
    $$RoleTableCreateCompanionBuilder,
    $$RoleTableUpdateCompanionBuilder,
    (RoleData, $$RoleTableReferences),
    RoleData,
    PrefetchHooks Function({bool rolePermissionRefs, bool userAccountRefs})>;
typedef $$PermissionTableCreateCompanionBuilder = PermissionCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$PermissionTableUpdateCompanionBuilder = PermissionCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$PermissionTableReferences
    extends BaseReferences<_$AppDatabase, $PermissionTable, PermissionData> {
  $$PermissionTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RolePermissionTable, List<RolePermissionData>>
      _rolePermissionRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.rolePermission,
              aliasName: 'permission__id__role_permission__permission_id');

  $$RolePermissionTableProcessedTableManager get rolePermissionRefs {
    final manager = $$RolePermissionTableTableManager($_db, $_db.rolePermission)
        .filter((f) => f.permissionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_rolePermissionRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$PermissionTableFilterComposer
    extends Composer<_$AppDatabase, $PermissionTable> {
  $$PermissionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> rolePermissionRefs(
      Expression<bool> Function($$RolePermissionTableFilterComposer f) f) {
    final $$RolePermissionTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rolePermission,
        getReferencedColumn: (t) => t.permissionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RolePermissionTableFilterComposer(
              $db: $db,
              $table: $db.rolePermission,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PermissionTableOrderingComposer
    extends Composer<_$AppDatabase, $PermissionTable> {
  $$PermissionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$PermissionTableAnnotationComposer
    extends Composer<_$AppDatabase, $PermissionTable> {
  $$PermissionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> rolePermissionRefs<T extends Object>(
      Expression<T> Function($$RolePermissionTableAnnotationComposer a) f) {
    final $$RolePermissionTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rolePermission,
        getReferencedColumn: (t) => t.permissionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RolePermissionTableAnnotationComposer(
              $db: $db,
              $table: $db.rolePermission,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PermissionTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PermissionTable,
    PermissionData,
    $$PermissionTableFilterComposer,
    $$PermissionTableOrderingComposer,
    $$PermissionTableAnnotationComposer,
    $$PermissionTableCreateCompanionBuilder,
    $$PermissionTableUpdateCompanionBuilder,
    (PermissionData, $$PermissionTableReferences),
    PermissionData,
    PrefetchHooks Function({bool rolePermissionRefs})> {
  $$PermissionTableTableManager(_$AppDatabase db, $PermissionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PermissionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PermissionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PermissionTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              PermissionCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              PermissionCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PermissionTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({rolePermissionRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (rolePermissionRefs) db.rolePermission
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (rolePermissionRefs)
                    await $_getPrefetchedData<PermissionData, $PermissionTable,
                            RolePermissionData>(
                        currentTable: table,
                        referencedTable: $$PermissionTableReferences
                            ._rolePermissionRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PermissionTableReferences(db, table, p0)
                                .rolePermissionRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.permissionId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$PermissionTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PermissionTable,
    PermissionData,
    $$PermissionTableFilterComposer,
    $$PermissionTableOrderingComposer,
    $$PermissionTableAnnotationComposer,
    $$PermissionTableCreateCompanionBuilder,
    $$PermissionTableUpdateCompanionBuilder,
    (PermissionData, $$PermissionTableReferences),
    PermissionData,
    PrefetchHooks Function({bool rolePermissionRefs})>;
typedef $$RolePermissionTableCreateCompanionBuilder = RolePermissionCompanion
    Function({
  required int roleId,
  required int permissionId,
  Value<int> rowid,
});
typedef $$RolePermissionTableUpdateCompanionBuilder = RolePermissionCompanion
    Function({
  Value<int> roleId,
  Value<int> permissionId,
  Value<int> rowid,
});

final class $$RolePermissionTableReferences extends BaseReferences<
    _$AppDatabase, $RolePermissionTable, RolePermissionData> {
  $$RolePermissionTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $RoleTable _roleIdTable(_$AppDatabase db) =>
      db.role.createAlias('role_permission__role_id__role__id');

  $$RoleTableProcessedTableManager get roleId {
    final $_column = $_itemColumn<int>('role_id')!;

    final manager = $$RoleTableTableManager($_db, $_db.role)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_roleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PermissionTable _permissionIdTable(_$AppDatabase db) => db.permission
      .createAlias('role_permission__permission_id__permission__id');

  $$PermissionTableProcessedTableManager get permissionId {
    final $_column = $_itemColumn<int>('permission_id')!;

    final manager = $$PermissionTableTableManager($_db, $_db.permission)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_permissionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$RolePermissionTableFilterComposer
    extends Composer<_$AppDatabase, $RolePermissionTable> {
  $$RolePermissionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$RoleTableFilterComposer get roleId {
    final $$RoleTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.roleId,
        referencedTable: $db.role,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RoleTableFilterComposer(
              $db: $db,
              $table: $db.role,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PermissionTableFilterComposer get permissionId {
    final $$PermissionTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.permissionId,
        referencedTable: $db.permission,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PermissionTableFilterComposer(
              $db: $db,
              $table: $db.permission,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RolePermissionTableOrderingComposer
    extends Composer<_$AppDatabase, $RolePermissionTable> {
  $$RolePermissionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$RoleTableOrderingComposer get roleId {
    final $$RoleTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.roleId,
        referencedTable: $db.role,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RoleTableOrderingComposer(
              $db: $db,
              $table: $db.role,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PermissionTableOrderingComposer get permissionId {
    final $$PermissionTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.permissionId,
        referencedTable: $db.permission,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PermissionTableOrderingComposer(
              $db: $db,
              $table: $db.permission,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RolePermissionTableAnnotationComposer
    extends Composer<_$AppDatabase, $RolePermissionTable> {
  $$RolePermissionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$RoleTableAnnotationComposer get roleId {
    final $$RoleTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.roleId,
        referencedTable: $db.role,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RoleTableAnnotationComposer(
              $db: $db,
              $table: $db.role,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$PermissionTableAnnotationComposer get permissionId {
    final $$PermissionTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.permissionId,
        referencedTable: $db.permission,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PermissionTableAnnotationComposer(
              $db: $db,
              $table: $db.permission,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RolePermissionTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RolePermissionTable,
    RolePermissionData,
    $$RolePermissionTableFilterComposer,
    $$RolePermissionTableOrderingComposer,
    $$RolePermissionTableAnnotationComposer,
    $$RolePermissionTableCreateCompanionBuilder,
    $$RolePermissionTableUpdateCompanionBuilder,
    (RolePermissionData, $$RolePermissionTableReferences),
    RolePermissionData,
    PrefetchHooks Function({bool roleId, bool permissionId})> {
  $$RolePermissionTableTableManager(
      _$AppDatabase db, $RolePermissionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RolePermissionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RolePermissionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RolePermissionTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> roleId = const Value.absent(),
            Value<int> permissionId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RolePermissionCompanion(
            roleId: roleId,
            permissionId: permissionId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int roleId,
            required int permissionId,
            Value<int> rowid = const Value.absent(),
          }) =>
              RolePermissionCompanion.insert(
            roleId: roleId,
            permissionId: permissionId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$RolePermissionTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({roleId = false, permissionId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (roleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.roleId,
                    referencedTable:
                        $$RolePermissionTableReferences._roleIdTable(db),
                    referencedColumn:
                        $$RolePermissionTableReferences._roleIdTable(db).id,
                  ) as T;
                }
                if (permissionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.permissionId,
                    referencedTable:
                        $$RolePermissionTableReferences._permissionIdTable(db),
                    referencedColumn: $$RolePermissionTableReferences
                        ._permissionIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$RolePermissionTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RolePermissionTable,
    RolePermissionData,
    $$RolePermissionTableFilterComposer,
    $$RolePermissionTableOrderingComposer,
    $$RolePermissionTableAnnotationComposer,
    $$RolePermissionTableCreateCompanionBuilder,
    $$RolePermissionTableUpdateCompanionBuilder,
    (RolePermissionData, $$RolePermissionTableReferences),
    RolePermissionData,
    PrefetchHooks Function({bool roleId, bool permissionId})>;
typedef $$UserAccountTableCreateCompanionBuilder = UserAccountCompanion
    Function({
  Value<int> id,
  required int personId,
  required String username,
  required String passwordHash,
  required int roleId,
  Value<bool> isActive,
});
typedef $$UserAccountTableUpdateCompanionBuilder = UserAccountCompanion
    Function({
  Value<int> id,
  Value<int> personId,
  Value<String> username,
  Value<String> passwordHash,
  Value<int> roleId,
  Value<bool> isActive,
});

final class $$UserAccountTableReferences
    extends BaseReferences<_$AppDatabase, $UserAccountTable, UserAccountData> {
  $$UserAccountTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PersonTable _personIdTable(_$AppDatabase db) =>
      db.person.createAlias('user_account__person_id__person__id');

  $$PersonTableProcessedTableManager get personId {
    final $_column = $_itemColumn<int>('person_id')!;

    final manager = $$PersonTableTableManager($_db, $_db.person)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_personIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $RoleTable _roleIdTable(_$AppDatabase db) =>
      db.role.createAlias('user_account__role_id__role__id');

  $$RoleTableProcessedTableManager get roleId {
    final $_column = $_itemColumn<int>('role_id')!;

    final manager = $$RoleTableTableManager($_db, $_db.role)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_roleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UserAccountTableFilterComposer
    extends Composer<_$AppDatabase, $UserAccountTable> {
  $$UserAccountTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  $$PersonTableFilterComposer get personId {
    final $$PersonTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableFilterComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RoleTableFilterComposer get roleId {
    final $$RoleTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.roleId,
        referencedTable: $db.role,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RoleTableFilterComposer(
              $db: $db,
              $table: $db.role,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserAccountTableOrderingComposer
    extends Composer<_$AppDatabase, $UserAccountTable> {
  $$UserAccountTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  $$PersonTableOrderingComposer get personId {
    final $$PersonTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableOrderingComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RoleTableOrderingComposer get roleId {
    final $$RoleTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.roleId,
        referencedTable: $db.role,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RoleTableOrderingComposer(
              $db: $db,
              $table: $db.role,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserAccountTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserAccountTable> {
  $$UserAccountTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  $$PersonTableAnnotationComposer get personId {
    final $$PersonTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.personId,
        referencedTable: $db.person,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersonTableAnnotationComposer(
              $db: $db,
              $table: $db.person,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RoleTableAnnotationComposer get roleId {
    final $$RoleTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.roleId,
        referencedTable: $db.role,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RoleTableAnnotationComposer(
              $db: $db,
              $table: $db.role,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserAccountTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserAccountTable,
    UserAccountData,
    $$UserAccountTableFilterComposer,
    $$UserAccountTableOrderingComposer,
    $$UserAccountTableAnnotationComposer,
    $$UserAccountTableCreateCompanionBuilder,
    $$UserAccountTableUpdateCompanionBuilder,
    (UserAccountData, $$UserAccountTableReferences),
    UserAccountData,
    PrefetchHooks Function({bool personId, bool roleId})> {
  $$UserAccountTableTableManager(_$AppDatabase db, $UserAccountTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserAccountTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserAccountTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserAccountTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> personId = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> passwordHash = const Value.absent(),
            Value<int> roleId = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
          }) =>
              UserAccountCompanion(
            id: id,
            personId: personId,
            username: username,
            passwordHash: passwordHash,
            roleId: roleId,
            isActive: isActive,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int personId,
            required String username,
            required String passwordHash,
            required int roleId,
            Value<bool> isActive = const Value.absent(),
          }) =>
              UserAccountCompanion.insert(
            id: id,
            personId: personId,
            username: username,
            passwordHash: passwordHash,
            roleId: roleId,
            isActive: isActive,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserAccountTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({personId = false, roleId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (personId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.personId,
                    referencedTable:
                        $$UserAccountTableReferences._personIdTable(db),
                    referencedColumn:
                        $$UserAccountTableReferences._personIdTable(db).id,
                  ) as T;
                }
                if (roleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.roleId,
                    referencedTable:
                        $$UserAccountTableReferences._roleIdTable(db),
                    referencedColumn:
                        $$UserAccountTableReferences._roleIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$UserAccountTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserAccountTable,
    UserAccountData,
    $$UserAccountTableFilterComposer,
    $$UserAccountTableOrderingComposer,
    $$UserAccountTableAnnotationComposer,
    $$UserAccountTableCreateCompanionBuilder,
    $$UserAccountTableUpdateCompanionBuilder,
    (UserAccountData, $$UserAccountTableReferences),
    UserAccountData,
    PrefetchHooks Function({bool personId, bool roleId})>;
typedef $$SubjectTableCreateCompanionBuilder = SubjectCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> code,
  Value<String?> description,
  Value<bool> isActive,
});
typedef $$SubjectTableUpdateCompanionBuilder = SubjectCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> code,
  Value<String?> description,
  Value<bool> isActive,
});

final class $$SubjectTableReferences
    extends BaseReferences<_$AppDatabase, $SubjectTable, SubjectData> {
  $$SubjectTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ClassScheduleTable, List<ClassScheduleData>>
      _classScheduleRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.classSchedule,
              aliasName: 'subject__id__class_schedule__subject_id');

  $$ClassScheduleTableProcessedTableManager get classScheduleRefs {
    final manager = $$ClassScheduleTableTableManager($_db, $_db.classSchedule)
        .filter((f) => f.subjectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_classScheduleRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ExamTable, List<ExamData>> _examRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.exam,
          aliasName: 'subject__id__exam__subject_id');

  $$ExamTableProcessedTableManager get examRefs {
    final manager = $$ExamTableTableManager($_db, $_db.exam)
        .filter((f) => f.subjectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_examRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GradeTable, List<GradeData>> _gradeRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.grade,
          aliasName: 'subject__id__grade__subject_id');

  $$GradeTableProcessedTableManager get gradeRefs {
    final manager = $$GradeTableTableManager($_db, $_db.grade)
        .filter((f) => f.subjectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_gradeRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SubjectTableFilterComposer
    extends Composer<_$AppDatabase, $SubjectTable> {
  $$SubjectTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  Expression<bool> classScheduleRefs(
      Expression<bool> Function($$ClassScheduleTableFilterComposer f) f) {
    final $$ClassScheduleTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.classSchedule,
        getReferencedColumn: (t) => t.subjectId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassScheduleTableFilterComposer(
              $db: $db,
              $table: $db.classSchedule,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> examRefs(
      Expression<bool> Function($$ExamTableFilterComposer f) f) {
    final $$ExamTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.exam,
        getReferencedColumn: (t) => t.subjectId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExamTableFilterComposer(
              $db: $db,
              $table: $db.exam,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> gradeRefs(
      Expression<bool> Function($$GradeTableFilterComposer f) f) {
    final $$GradeTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.grade,
        getReferencedColumn: (t) => t.subjectId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GradeTableFilterComposer(
              $db: $db,
              $table: $db.grade,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SubjectTableOrderingComposer
    extends Composer<_$AppDatabase, $SubjectTable> {
  $$SubjectTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$SubjectTableAnnotationComposer
    extends Composer<_$AppDatabase, $SubjectTable> {
  $$SubjectTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  Expression<T> classScheduleRefs<T extends Object>(
      Expression<T> Function($$ClassScheduleTableAnnotationComposer a) f) {
    final $$ClassScheduleTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.classSchedule,
        getReferencedColumn: (t) => t.subjectId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassScheduleTableAnnotationComposer(
              $db: $db,
              $table: $db.classSchedule,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> examRefs<T extends Object>(
      Expression<T> Function($$ExamTableAnnotationComposer a) f) {
    final $$ExamTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.exam,
        getReferencedColumn: (t) => t.subjectId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExamTableAnnotationComposer(
              $db: $db,
              $table: $db.exam,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> gradeRefs<T extends Object>(
      Expression<T> Function($$GradeTableAnnotationComposer a) f) {
    final $$GradeTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.grade,
        getReferencedColumn: (t) => t.subjectId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GradeTableAnnotationComposer(
              $db: $db,
              $table: $db.grade,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SubjectTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SubjectTable,
    SubjectData,
    $$SubjectTableFilterComposer,
    $$SubjectTableOrderingComposer,
    $$SubjectTableAnnotationComposer,
    $$SubjectTableCreateCompanionBuilder,
    $$SubjectTableUpdateCompanionBuilder,
    (SubjectData, $$SubjectTableReferences),
    SubjectData,
    PrefetchHooks Function(
        {bool classScheduleRefs, bool examRefs, bool gradeRefs})> {
  $$SubjectTableTableManager(_$AppDatabase db, $SubjectTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SubjectTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SubjectTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SubjectTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
          }) =>
              SubjectCompanion(
            id: id,
            name: name,
            code: code,
            description: description,
            isActive: isActive,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> code = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
          }) =>
              SubjectCompanion.insert(
            id: id,
            name: name,
            code: code,
            description: description,
            isActive: isActive,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$SubjectTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {classScheduleRefs = false,
              examRefs = false,
              gradeRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (classScheduleRefs) db.classSchedule,
                if (examRefs) db.exam,
                if (gradeRefs) db.grade
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (classScheduleRefs)
                    await $_getPrefetchedData<SubjectData, $SubjectTable,
                            ClassScheduleData>(
                        currentTable: table,
                        referencedTable: $$SubjectTableReferences
                            ._classScheduleRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SubjectTableReferences(db, table, p0)
                                .classScheduleRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.subjectId == item.id),
                        typedResults: items),
                  if (examRefs)
                    await $_getPrefetchedData<SubjectData, $SubjectTable,
                            ExamData>(
                        currentTable: table,
                        referencedTable:
                            $$SubjectTableReferences._examRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SubjectTableReferences(db, table, p0).examRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.subjectId == item.id),
                        typedResults: items),
                  if (gradeRefs)
                    await $_getPrefetchedData<SubjectData, $SubjectTable,
                            GradeData>(
                        currentTable: table,
                        referencedTable:
                            $$SubjectTableReferences._gradeRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SubjectTableReferences(db, table, p0).gradeRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.subjectId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SubjectTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SubjectTable,
    SubjectData,
    $$SubjectTableFilterComposer,
    $$SubjectTableOrderingComposer,
    $$SubjectTableAnnotationComposer,
    $$SubjectTableCreateCompanionBuilder,
    $$SubjectTableUpdateCompanionBuilder,
    (SubjectData, $$SubjectTableReferences),
    SubjectData,
    PrefetchHooks Function(
        {bool classScheduleRefs, bool examRefs, bool gradeRefs})>;
typedef $$ClassroomTableCreateCompanionBuilder = ClassroomCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> code,
  Value<String?> gradeLevel,
  Value<int?> capacity,
  Value<bool> isActive,
});
typedef $$ClassroomTableUpdateCompanionBuilder = ClassroomCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> code,
  Value<String?> gradeLevel,
  Value<int?> capacity,
  Value<bool> isActive,
});

final class $$ClassroomTableReferences
    extends BaseReferences<_$AppDatabase, $ClassroomTable, ClassroomData> {
  $$ClassroomTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ClassScheduleTable, List<ClassScheduleData>>
      _classScheduleRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.classSchedule,
              aliasName: 'classroom__id__class_schedule__classroom_id');

  $$ClassScheduleTableProcessedTableManager get classScheduleRefs {
    final manager = $$ClassScheduleTableTableManager($_db, $_db.classSchedule)
        .filter((f) => f.classroomId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_classScheduleRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ExamTable, List<ExamData>> _examRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.exam,
          aliasName: 'classroom__id__exam__classroom_id');

  $$ExamTableProcessedTableManager get examRefs {
    final manager = $$ExamTableTableManager($_db, $_db.exam)
        .filter((f) => f.classroomId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_examRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$SectionAssignmentTable,
      List<SectionAssignmentData>> _sectionAssignmentRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.sectionAssignment,
          aliasName: 'classroom__id__section_assignment__classroom_id');

  $$SectionAssignmentTableProcessedTableManager get sectionAssignmentRefs {
    final manager = $$SectionAssignmentTableTableManager(
            $_db, $_db.sectionAssignment)
        .filter((f) => f.classroomId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_sectionAssignmentRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ClassroomTableFilterComposer
    extends Composer<_$AppDatabase, $ClassroomTable> {
  $$ClassroomTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gradeLevel => $composableBuilder(
      column: $table.gradeLevel, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get capacity => $composableBuilder(
      column: $table.capacity, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  Expression<bool> classScheduleRefs(
      Expression<bool> Function($$ClassScheduleTableFilterComposer f) f) {
    final $$ClassScheduleTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.classSchedule,
        getReferencedColumn: (t) => t.classroomId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassScheduleTableFilterComposer(
              $db: $db,
              $table: $db.classSchedule,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> examRefs(
      Expression<bool> Function($$ExamTableFilterComposer f) f) {
    final $$ExamTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.exam,
        getReferencedColumn: (t) => t.classroomId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExamTableFilterComposer(
              $db: $db,
              $table: $db.exam,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> sectionAssignmentRefs(
      Expression<bool> Function($$SectionAssignmentTableFilterComposer f) f) {
    final $$SectionAssignmentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sectionAssignment,
        getReferencedColumn: (t) => t.classroomId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SectionAssignmentTableFilterComposer(
              $db: $db,
              $table: $db.sectionAssignment,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ClassroomTableOrderingComposer
    extends Composer<_$AppDatabase, $ClassroomTable> {
  $$ClassroomTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gradeLevel => $composableBuilder(
      column: $table.gradeLevel, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get capacity => $composableBuilder(
      column: $table.capacity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$ClassroomTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClassroomTable> {
  $$ClassroomTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get gradeLevel => $composableBuilder(
      column: $table.gradeLevel, builder: (column) => column);

  GeneratedColumn<int> get capacity =>
      $composableBuilder(column: $table.capacity, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  Expression<T> classScheduleRefs<T extends Object>(
      Expression<T> Function($$ClassScheduleTableAnnotationComposer a) f) {
    final $$ClassScheduleTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.classSchedule,
        getReferencedColumn: (t) => t.classroomId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassScheduleTableAnnotationComposer(
              $db: $db,
              $table: $db.classSchedule,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> examRefs<T extends Object>(
      Expression<T> Function($$ExamTableAnnotationComposer a) f) {
    final $$ExamTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.exam,
        getReferencedColumn: (t) => t.classroomId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExamTableAnnotationComposer(
              $db: $db,
              $table: $db.exam,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> sectionAssignmentRefs<T extends Object>(
      Expression<T> Function($$SectionAssignmentTableAnnotationComposer a) f) {
    final $$SectionAssignmentTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.sectionAssignment,
            getReferencedColumn: (t) => t.classroomId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$SectionAssignmentTableAnnotationComposer(
                  $db: $db,
                  $table: $db.sectionAssignment,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$ClassroomTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ClassroomTable,
    ClassroomData,
    $$ClassroomTableFilterComposer,
    $$ClassroomTableOrderingComposer,
    $$ClassroomTableAnnotationComposer,
    $$ClassroomTableCreateCompanionBuilder,
    $$ClassroomTableUpdateCompanionBuilder,
    (ClassroomData, $$ClassroomTableReferences),
    ClassroomData,
    PrefetchHooks Function(
        {bool classScheduleRefs, bool examRefs, bool sectionAssignmentRefs})> {
  $$ClassroomTableTableManager(_$AppDatabase db, $ClassroomTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClassroomTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClassroomTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClassroomTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<String?> gradeLevel = const Value.absent(),
            Value<int?> capacity = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
          }) =>
              ClassroomCompanion(
            id: id,
            name: name,
            code: code,
            gradeLevel: gradeLevel,
            capacity: capacity,
            isActive: isActive,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> code = const Value.absent(),
            Value<String?> gradeLevel = const Value.absent(),
            Value<int?> capacity = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
          }) =>
              ClassroomCompanion.insert(
            id: id,
            name: name,
            code: code,
            gradeLevel: gradeLevel,
            capacity: capacity,
            isActive: isActive,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ClassroomTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {classScheduleRefs = false,
              examRefs = false,
              sectionAssignmentRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (classScheduleRefs) db.classSchedule,
                if (examRefs) db.exam,
                if (sectionAssignmentRefs) db.sectionAssignment
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (classScheduleRefs)
                    await $_getPrefetchedData<ClassroomData, $ClassroomTable,
                            ClassScheduleData>(
                        currentTable: table,
                        referencedTable: $$ClassroomTableReferences
                            ._classScheduleRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ClassroomTableReferences(db, table, p0)
                                .classScheduleRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.classroomId == item.id),
                        typedResults: items),
                  if (examRefs)
                    await $_getPrefetchedData<ClassroomData, $ClassroomTable,
                            ExamData>(
                        currentTable: table,
                        referencedTable:
                            $$ClassroomTableReferences._examRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ClassroomTableReferences(db, table, p0).examRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.classroomId == item.id),
                        typedResults: items),
                  if (sectionAssignmentRefs)
                    await $_getPrefetchedData<ClassroomData, $ClassroomTable,
                            SectionAssignmentData>(
                        currentTable: table,
                        referencedTable: $$ClassroomTableReferences
                            ._sectionAssignmentRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ClassroomTableReferences(db, table, p0)
                                .sectionAssignmentRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.classroomId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ClassroomTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ClassroomTable,
    ClassroomData,
    $$ClassroomTableFilterComposer,
    $$ClassroomTableOrderingComposer,
    $$ClassroomTableAnnotationComposer,
    $$ClassroomTableCreateCompanionBuilder,
    $$ClassroomTableUpdateCompanionBuilder,
    (ClassroomData, $$ClassroomTableReferences),
    ClassroomData,
    PrefetchHooks Function(
        {bool classScheduleRefs, bool examRefs, bool sectionAssignmentRefs})>;
typedef $$ClassScheduleTableCreateCompanionBuilder = ClassScheduleCompanion
    Function({
  Value<int> id,
  required int classroomId,
  required int subjectId,
  required int teacherId,
  required int dayOfWeek,
  required String startTime,
  required String endTime,
  Value<String?> academicYear,
});
typedef $$ClassScheduleTableUpdateCompanionBuilder = ClassScheduleCompanion
    Function({
  Value<int> id,
  Value<int> classroomId,
  Value<int> subjectId,
  Value<int> teacherId,
  Value<int> dayOfWeek,
  Value<String> startTime,
  Value<String> endTime,
  Value<String?> academicYear,
});

final class $$ClassScheduleTableReferences extends BaseReferences<_$AppDatabase,
    $ClassScheduleTable, ClassScheduleData> {
  $$ClassScheduleTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ClassroomTable _classroomIdTable(_$AppDatabase db) =>
      db.classroom.createAlias('class_schedule__classroom_id__classroom__id');

  $$ClassroomTableProcessedTableManager get classroomId {
    final $_column = $_itemColumn<int>('classroom_id')!;

    final manager = $$ClassroomTableTableManager($_db, $_db.classroom)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_classroomIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SubjectTable _subjectIdTable(_$AppDatabase db) =>
      db.subject.createAlias('class_schedule__subject_id__subject__id');

  $$SubjectTableProcessedTableManager get subjectId {
    final $_column = $_itemColumn<int>('subject_id')!;

    final manager = $$SubjectTableTableManager($_db, $_db.subject)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_subjectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TeacherTable _teacherIdTable(_$AppDatabase db) =>
      db.teacher.createAlias('class_schedule__teacher_id__teacher__id');

  $$TeacherTableProcessedTableManager get teacherId {
    final $_column = $_itemColumn<int>('teacher_id')!;

    final manager = $$TeacherTableTableManager($_db, $_db.teacher)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_teacherIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ClassScheduleTableFilterComposer
    extends Composer<_$AppDatabase, $ClassScheduleTable> {
  $$ClassScheduleTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dayOfWeek => $composableBuilder(
      column: $table.dayOfWeek, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get endTime => $composableBuilder(
      column: $table.endTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get academicYear => $composableBuilder(
      column: $table.academicYear, builder: (column) => ColumnFilters(column));

  $$ClassroomTableFilterComposer get classroomId {
    final $$ClassroomTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableFilterComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SubjectTableFilterComposer get subjectId {
    final $$SubjectTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableFilterComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeacherTableFilterComposer get teacherId {
    final $$TeacherTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.teacherId,
        referencedTable: $db.teacher,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeacherTableFilterComposer(
              $db: $db,
              $table: $db.teacher,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ClassScheduleTableOrderingComposer
    extends Composer<_$AppDatabase, $ClassScheduleTable> {
  $$ClassScheduleTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dayOfWeek => $composableBuilder(
      column: $table.dayOfWeek, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get endTime => $composableBuilder(
      column: $table.endTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get academicYear => $composableBuilder(
      column: $table.academicYear,
      builder: (column) => ColumnOrderings(column));

  $$ClassroomTableOrderingComposer get classroomId {
    final $$ClassroomTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableOrderingComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SubjectTableOrderingComposer get subjectId {
    final $$SubjectTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableOrderingComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeacherTableOrderingComposer get teacherId {
    final $$TeacherTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.teacherId,
        referencedTable: $db.teacher,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeacherTableOrderingComposer(
              $db: $db,
              $table: $db.teacher,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ClassScheduleTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClassScheduleTable> {
  $$ClassScheduleTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get dayOfWeek =>
      $composableBuilder(column: $table.dayOfWeek, builder: (column) => column);

  GeneratedColumn<String> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<String> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<String> get academicYear => $composableBuilder(
      column: $table.academicYear, builder: (column) => column);

  $$ClassroomTableAnnotationComposer get classroomId {
    final $$ClassroomTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableAnnotationComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SubjectTableAnnotationComposer get subjectId {
    final $$SubjectTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableAnnotationComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeacherTableAnnotationComposer get teacherId {
    final $$TeacherTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.teacherId,
        referencedTable: $db.teacher,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeacherTableAnnotationComposer(
              $db: $db,
              $table: $db.teacher,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ClassScheduleTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ClassScheduleTable,
    ClassScheduleData,
    $$ClassScheduleTableFilterComposer,
    $$ClassScheduleTableOrderingComposer,
    $$ClassScheduleTableAnnotationComposer,
    $$ClassScheduleTableCreateCompanionBuilder,
    $$ClassScheduleTableUpdateCompanionBuilder,
    (ClassScheduleData, $$ClassScheduleTableReferences),
    ClassScheduleData,
    PrefetchHooks Function(
        {bool classroomId, bool subjectId, bool teacherId})> {
  $$ClassScheduleTableTableManager(_$AppDatabase db, $ClassScheduleTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClassScheduleTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClassScheduleTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClassScheduleTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> classroomId = const Value.absent(),
            Value<int> subjectId = const Value.absent(),
            Value<int> teacherId = const Value.absent(),
            Value<int> dayOfWeek = const Value.absent(),
            Value<String> startTime = const Value.absent(),
            Value<String> endTime = const Value.absent(),
            Value<String?> academicYear = const Value.absent(),
          }) =>
              ClassScheduleCompanion(
            id: id,
            classroomId: classroomId,
            subjectId: subjectId,
            teacherId: teacherId,
            dayOfWeek: dayOfWeek,
            startTime: startTime,
            endTime: endTime,
            academicYear: academicYear,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int classroomId,
            required int subjectId,
            required int teacherId,
            required int dayOfWeek,
            required String startTime,
            required String endTime,
            Value<String?> academicYear = const Value.absent(),
          }) =>
              ClassScheduleCompanion.insert(
            id: id,
            classroomId: classroomId,
            subjectId: subjectId,
            teacherId: teacherId,
            dayOfWeek: dayOfWeek,
            startTime: startTime,
            endTime: endTime,
            academicYear: academicYear,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ClassScheduleTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {classroomId = false, subjectId = false, teacherId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (classroomId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.classroomId,
                    referencedTable:
                        $$ClassScheduleTableReferences._classroomIdTable(db),
                    referencedColumn:
                        $$ClassScheduleTableReferences._classroomIdTable(db).id,
                  ) as T;
                }
                if (subjectId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.subjectId,
                    referencedTable:
                        $$ClassScheduleTableReferences._subjectIdTable(db),
                    referencedColumn:
                        $$ClassScheduleTableReferences._subjectIdTable(db).id,
                  ) as T;
                }
                if (teacherId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.teacherId,
                    referencedTable:
                        $$ClassScheduleTableReferences._teacherIdTable(db),
                    referencedColumn:
                        $$ClassScheduleTableReferences._teacherIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ClassScheduleTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ClassScheduleTable,
    ClassScheduleData,
    $$ClassScheduleTableFilterComposer,
    $$ClassScheduleTableOrderingComposer,
    $$ClassScheduleTableAnnotationComposer,
    $$ClassScheduleTableCreateCompanionBuilder,
    $$ClassScheduleTableUpdateCompanionBuilder,
    (ClassScheduleData, $$ClassScheduleTableReferences),
    ClassScheduleData,
    PrefetchHooks Function({bool classroomId, bool subjectId, bool teacherId})>;
typedef $$ExamTableCreateCompanionBuilder = ExamCompanion Function({
  Value<int> id,
  required int subjectId,
  required int classroomId,
  required DateTime examDate,
  Value<String?> examType,
  Value<double?> maxScore,
  Value<String?> description,
});
typedef $$ExamTableUpdateCompanionBuilder = ExamCompanion Function({
  Value<int> id,
  Value<int> subjectId,
  Value<int> classroomId,
  Value<DateTime> examDate,
  Value<String?> examType,
  Value<double?> maxScore,
  Value<String?> description,
});

final class $$ExamTableReferences
    extends BaseReferences<_$AppDatabase, $ExamTable, ExamData> {
  $$ExamTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SubjectTable _subjectIdTable(_$AppDatabase db) =>
      db.subject.createAlias('exam__subject_id__subject__id');

  $$SubjectTableProcessedTableManager get subjectId {
    final $_column = $_itemColumn<int>('subject_id')!;

    final manager = $$SubjectTableTableManager($_db, $_db.subject)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_subjectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ClassroomTable _classroomIdTable(_$AppDatabase db) =>
      db.classroom.createAlias('exam__classroom_id__classroom__id');

  $$ClassroomTableProcessedTableManager get classroomId {
    final $_column = $_itemColumn<int>('classroom_id')!;

    final manager = $$ClassroomTableTableManager($_db, $_db.classroom)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_classroomIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$GradeTable, List<GradeData>> _gradeRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.grade,
          aliasName: 'exam__id__grade__exam_id');

  $$GradeTableProcessedTableManager get gradeRefs {
    final manager = $$GradeTableTableManager($_db, $_db.grade)
        .filter((f) => f.examId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_gradeRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ExamTableFilterComposer extends Composer<_$AppDatabase, $ExamTable> {
  $$ExamTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get examDate => $composableBuilder(
      column: $table.examDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get examType => $composableBuilder(
      column: $table.examType, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get maxScore => $composableBuilder(
      column: $table.maxScore, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  $$SubjectTableFilterComposer get subjectId {
    final $$SubjectTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableFilterComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ClassroomTableFilterComposer get classroomId {
    final $$ClassroomTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableFilterComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> gradeRefs(
      Expression<bool> Function($$GradeTableFilterComposer f) f) {
    final $$GradeTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.grade,
        getReferencedColumn: (t) => t.examId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GradeTableFilterComposer(
              $db: $db,
              $table: $db.grade,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ExamTableOrderingComposer extends Composer<_$AppDatabase, $ExamTable> {
  $$ExamTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get examDate => $composableBuilder(
      column: $table.examDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get examType => $composableBuilder(
      column: $table.examType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get maxScore => $composableBuilder(
      column: $table.maxScore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  $$SubjectTableOrderingComposer get subjectId {
    final $$SubjectTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableOrderingComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ClassroomTableOrderingComposer get classroomId {
    final $$ClassroomTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableOrderingComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ExamTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExamTable> {
  $$ExamTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get examDate =>
      $composableBuilder(column: $table.examDate, builder: (column) => column);

  GeneratedColumn<String> get examType =>
      $composableBuilder(column: $table.examType, builder: (column) => column);

  GeneratedColumn<double> get maxScore =>
      $composableBuilder(column: $table.maxScore, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  $$SubjectTableAnnotationComposer get subjectId {
    final $$SubjectTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableAnnotationComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ClassroomTableAnnotationComposer get classroomId {
    final $$ClassroomTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableAnnotationComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> gradeRefs<T extends Object>(
      Expression<T> Function($$GradeTableAnnotationComposer a) f) {
    final $$GradeTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.grade,
        getReferencedColumn: (t) => t.examId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GradeTableAnnotationComposer(
              $db: $db,
              $table: $db.grade,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ExamTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ExamTable,
    ExamData,
    $$ExamTableFilterComposer,
    $$ExamTableOrderingComposer,
    $$ExamTableAnnotationComposer,
    $$ExamTableCreateCompanionBuilder,
    $$ExamTableUpdateCompanionBuilder,
    (ExamData, $$ExamTableReferences),
    ExamData,
    PrefetchHooks Function(
        {bool subjectId, bool classroomId, bool gradeRefs})> {
  $$ExamTableTableManager(_$AppDatabase db, $ExamTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExamTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExamTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExamTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> subjectId = const Value.absent(),
            Value<int> classroomId = const Value.absent(),
            Value<DateTime> examDate = const Value.absent(),
            Value<String?> examType = const Value.absent(),
            Value<double?> maxScore = const Value.absent(),
            Value<String?> description = const Value.absent(),
          }) =>
              ExamCompanion(
            id: id,
            subjectId: subjectId,
            classroomId: classroomId,
            examDate: examDate,
            examType: examType,
            maxScore: maxScore,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int subjectId,
            required int classroomId,
            required DateTime examDate,
            Value<String?> examType = const Value.absent(),
            Value<double?> maxScore = const Value.absent(),
            Value<String?> description = const Value.absent(),
          }) =>
              ExamCompanion.insert(
            id: id,
            subjectId: subjectId,
            classroomId: classroomId,
            examDate: examDate,
            examType: examType,
            maxScore: maxScore,
            description: description,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ExamTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {subjectId = false, classroomId = false, gradeRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (gradeRefs) db.grade],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (subjectId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.subjectId,
                    referencedTable: $$ExamTableReferences._subjectIdTable(db),
                    referencedColumn:
                        $$ExamTableReferences._subjectIdTable(db).id,
                  ) as T;
                }
                if (classroomId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.classroomId,
                    referencedTable:
                        $$ExamTableReferences._classroomIdTable(db),
                    referencedColumn:
                        $$ExamTableReferences._classroomIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gradeRefs)
                    await $_getPrefetchedData<ExamData, $ExamTable, GradeData>(
                        currentTable: table,
                        referencedTable:
                            $$ExamTableReferences._gradeRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ExamTableReferences(db, table, p0).gradeRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.examId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ExamTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ExamTable,
    ExamData,
    $$ExamTableFilterComposer,
    $$ExamTableOrderingComposer,
    $$ExamTableAnnotationComposer,
    $$ExamTableCreateCompanionBuilder,
    $$ExamTableUpdateCompanionBuilder,
    (ExamData, $$ExamTableReferences),
    ExamData,
    PrefetchHooks Function({bool subjectId, bool classroomId, bool gradeRefs})>;
typedef $$GradeTableCreateCompanionBuilder = GradeCompanion Function({
  Value<int> id,
  required int studentId,
  required int examId,
  required int subjectId,
  required double score,
  Value<String?> gradeLetter,
  Value<String?> notes,
});
typedef $$GradeTableUpdateCompanionBuilder = GradeCompanion Function({
  Value<int> id,
  Value<int> studentId,
  Value<int> examId,
  Value<int> subjectId,
  Value<double> score,
  Value<String?> gradeLetter,
  Value<String?> notes,
});

final class $$GradeTableReferences
    extends BaseReferences<_$AppDatabase, $GradeTable, GradeData> {
  $$GradeTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StudentTable _studentIdTable(_$AppDatabase db) =>
      db.student.createAlias('grade__student_id__student__id');

  $$StudentTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<int>('student_id')!;

    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ExamTable _examIdTable(_$AppDatabase db) =>
      db.exam.createAlias('grade__exam_id__exam__id');

  $$ExamTableProcessedTableManager get examId {
    final $_column = $_itemColumn<int>('exam_id')!;

    final manager = $$ExamTableTableManager($_db, $_db.exam)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_examIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SubjectTable _subjectIdTable(_$AppDatabase db) =>
      db.subject.createAlias('grade__subject_id__subject__id');

  $$SubjectTableProcessedTableManager get subjectId {
    final $_column = $_itemColumn<int>('subject_id')!;

    final manager = $$SubjectTableTableManager($_db, $_db.subject)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_subjectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GradeTableFilterComposer extends Composer<_$AppDatabase, $GradeTable> {
  $$GradeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get score => $composableBuilder(
      column: $table.score, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gradeLetter => $composableBuilder(
      column: $table.gradeLetter, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  $$StudentTableFilterComposer get studentId {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ExamTableFilterComposer get examId {
    final $$ExamTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.examId,
        referencedTable: $db.exam,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExamTableFilterComposer(
              $db: $db,
              $table: $db.exam,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SubjectTableFilterComposer get subjectId {
    final $$SubjectTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableFilterComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GradeTableOrderingComposer
    extends Composer<_$AppDatabase, $GradeTable> {
  $$GradeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get score => $composableBuilder(
      column: $table.score, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gradeLetter => $composableBuilder(
      column: $table.gradeLetter, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  $$StudentTableOrderingComposer get studentId {
    final $$StudentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableOrderingComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ExamTableOrderingComposer get examId {
    final $$ExamTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.examId,
        referencedTable: $db.exam,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExamTableOrderingComposer(
              $db: $db,
              $table: $db.exam,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SubjectTableOrderingComposer get subjectId {
    final $$SubjectTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableOrderingComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GradeTableAnnotationComposer
    extends Composer<_$AppDatabase, $GradeTable> {
  $$GradeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  GeneratedColumn<String> get gradeLetter => $composableBuilder(
      column: $table.gradeLetter, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$StudentTableAnnotationComposer get studentId {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ExamTableAnnotationComposer get examId {
    final $$ExamTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.examId,
        referencedTable: $db.exam,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ExamTableAnnotationComposer(
              $db: $db,
              $table: $db.exam,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SubjectTableAnnotationComposer get subjectId {
    final $$SubjectTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.subjectId,
        referencedTable: $db.subject,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SubjectTableAnnotationComposer(
              $db: $db,
              $table: $db.subject,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GradeTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GradeTable,
    GradeData,
    $$GradeTableFilterComposer,
    $$GradeTableOrderingComposer,
    $$GradeTableAnnotationComposer,
    $$GradeTableCreateCompanionBuilder,
    $$GradeTableUpdateCompanionBuilder,
    (GradeData, $$GradeTableReferences),
    GradeData,
    PrefetchHooks Function({bool studentId, bool examId, bool subjectId})> {
  $$GradeTableTableManager(_$AppDatabase db, $GradeTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GradeTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GradeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GradeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> studentId = const Value.absent(),
            Value<int> examId = const Value.absent(),
            Value<int> subjectId = const Value.absent(),
            Value<double> score = const Value.absent(),
            Value<String?> gradeLetter = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              GradeCompanion(
            id: id,
            studentId: studentId,
            examId: examId,
            subjectId: subjectId,
            score: score,
            gradeLetter: gradeLetter,
            notes: notes,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int studentId,
            required int examId,
            required int subjectId,
            required double score,
            Value<String?> gradeLetter = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              GradeCompanion.insert(
            id: id,
            studentId: studentId,
            examId: examId,
            subjectId: subjectId,
            score: score,
            gradeLetter: gradeLetter,
            notes: notes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$GradeTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {studentId = false, examId = false, subjectId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (studentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.studentId,
                    referencedTable: $$GradeTableReferences._studentIdTable(db),
                    referencedColumn:
                        $$GradeTableReferences._studentIdTable(db).id,
                  ) as T;
                }
                if (examId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.examId,
                    referencedTable: $$GradeTableReferences._examIdTable(db),
                    referencedColumn:
                        $$GradeTableReferences._examIdTable(db).id,
                  ) as T;
                }
                if (subjectId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.subjectId,
                    referencedTable: $$GradeTableReferences._subjectIdTable(db),
                    referencedColumn:
                        $$GradeTableReferences._subjectIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$GradeTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GradeTable,
    GradeData,
    $$GradeTableFilterComposer,
    $$GradeTableOrderingComposer,
    $$GradeTableAnnotationComposer,
    $$GradeTableCreateCompanionBuilder,
    $$GradeTableUpdateCompanionBuilder,
    (GradeData, $$GradeTableReferences),
    GradeData,
    PrefetchHooks Function({bool studentId, bool examId, bool subjectId})>;
typedef $$SectionAssignmentTableCreateCompanionBuilder
    = SectionAssignmentCompanion Function({
  Value<int> id,
  required int studentId,
  required int classroomId,
  Value<String?> academicYear,
});
typedef $$SectionAssignmentTableUpdateCompanionBuilder
    = SectionAssignmentCompanion Function({
  Value<int> id,
  Value<int> studentId,
  Value<int> classroomId,
  Value<String?> academicYear,
});

final class $$SectionAssignmentTableReferences extends BaseReferences<
    _$AppDatabase, $SectionAssignmentTable, SectionAssignmentData> {
  $$SectionAssignmentTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $StudentTable _studentIdTable(_$AppDatabase db) =>
      db.student.createAlias('section_assignment__student_id__student__id');

  $$StudentTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<int>('student_id')!;

    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ClassroomTable _classroomIdTable(_$AppDatabase db) => db.classroom
      .createAlias('section_assignment__classroom_id__classroom__id');

  $$ClassroomTableProcessedTableManager get classroomId {
    final $_column = $_itemColumn<int>('classroom_id')!;

    final manager = $$ClassroomTableTableManager($_db, $_db.classroom)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_classroomIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SectionAssignmentTableFilterComposer
    extends Composer<_$AppDatabase, $SectionAssignmentTable> {
  $$SectionAssignmentTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get academicYear => $composableBuilder(
      column: $table.academicYear, builder: (column) => ColumnFilters(column));

  $$StudentTableFilterComposer get studentId {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ClassroomTableFilterComposer get classroomId {
    final $$ClassroomTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableFilterComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SectionAssignmentTableOrderingComposer
    extends Composer<_$AppDatabase, $SectionAssignmentTable> {
  $$SectionAssignmentTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get academicYear => $composableBuilder(
      column: $table.academicYear,
      builder: (column) => ColumnOrderings(column));

  $$StudentTableOrderingComposer get studentId {
    final $$StudentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableOrderingComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ClassroomTableOrderingComposer get classroomId {
    final $$ClassroomTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableOrderingComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SectionAssignmentTableAnnotationComposer
    extends Composer<_$AppDatabase, $SectionAssignmentTable> {
  $$SectionAssignmentTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get academicYear => $composableBuilder(
      column: $table.academicYear, builder: (column) => column);

  $$StudentTableAnnotationComposer get studentId {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ClassroomTableAnnotationComposer get classroomId {
    final $$ClassroomTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.classroomId,
        referencedTable: $db.classroom,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClassroomTableAnnotationComposer(
              $db: $db,
              $table: $db.classroom,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SectionAssignmentTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SectionAssignmentTable,
    SectionAssignmentData,
    $$SectionAssignmentTableFilterComposer,
    $$SectionAssignmentTableOrderingComposer,
    $$SectionAssignmentTableAnnotationComposer,
    $$SectionAssignmentTableCreateCompanionBuilder,
    $$SectionAssignmentTableUpdateCompanionBuilder,
    (SectionAssignmentData, $$SectionAssignmentTableReferences),
    SectionAssignmentData,
    PrefetchHooks Function({bool studentId, bool classroomId})> {
  $$SectionAssignmentTableTableManager(
      _$AppDatabase db, $SectionAssignmentTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SectionAssignmentTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SectionAssignmentTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SectionAssignmentTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> studentId = const Value.absent(),
            Value<int> classroomId = const Value.absent(),
            Value<String?> academicYear = const Value.absent(),
          }) =>
              SectionAssignmentCompanion(
            id: id,
            studentId: studentId,
            classroomId: classroomId,
            academicYear: academicYear,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int studentId,
            required int classroomId,
            Value<String?> academicYear = const Value.absent(),
          }) =>
              SectionAssignmentCompanion.insert(
            id: id,
            studentId: studentId,
            classroomId: classroomId,
            academicYear: academicYear,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SectionAssignmentTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({studentId = false, classroomId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (studentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.studentId,
                    referencedTable:
                        $$SectionAssignmentTableReferences._studentIdTable(db),
                    referencedColumn: $$SectionAssignmentTableReferences
                        ._studentIdTable(db)
                        .id,
                  ) as T;
                }
                if (classroomId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.classroomId,
                    referencedTable: $$SectionAssignmentTableReferences
                        ._classroomIdTable(db),
                    referencedColumn: $$SectionAssignmentTableReferences
                        ._classroomIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SectionAssignmentTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SectionAssignmentTable,
    SectionAssignmentData,
    $$SectionAssignmentTableFilterComposer,
    $$SectionAssignmentTableOrderingComposer,
    $$SectionAssignmentTableAnnotationComposer,
    $$SectionAssignmentTableCreateCompanionBuilder,
    $$SectionAssignmentTableUpdateCompanionBuilder,
    (SectionAssignmentData, $$SectionAssignmentTableReferences),
    SectionAssignmentData,
    PrefetchHooks Function({bool studentId, bool classroomId})>;
typedef $$AttendanceRecordTableCreateCompanionBuilder
    = AttendanceRecordCompanion Function({
  Value<int> id,
  required int studentId,
  required DateTime date,
  required String status,
  Value<String?> checkInTime,
  Value<String?> checkOutTime,
  Value<String?> notes,
  required int recordedBy,
});
typedef $$AttendanceRecordTableUpdateCompanionBuilder
    = AttendanceRecordCompanion Function({
  Value<int> id,
  Value<int> studentId,
  Value<DateTime> date,
  Value<String> status,
  Value<String?> checkInTime,
  Value<String?> checkOutTime,
  Value<String?> notes,
  Value<int> recordedBy,
});

final class $$AttendanceRecordTableReferences extends BaseReferences<
    _$AppDatabase, $AttendanceRecordTable, AttendanceRecordData> {
  $$AttendanceRecordTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $StudentTable _studentIdTable(_$AppDatabase db) =>
      db.student.createAlias('attendance_record__student_id__student__id');

  $$StudentTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<int>('student_id')!;

    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$AttendanceRecordTableFilterComposer
    extends Composer<_$AppDatabase, $AttendanceRecordTable> {
  $$AttendanceRecordTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get checkInTime => $composableBuilder(
      column: $table.checkInTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get checkOutTime => $composableBuilder(
      column: $table.checkOutTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get recordedBy => $composableBuilder(
      column: $table.recordedBy, builder: (column) => ColumnFilters(column));

  $$StudentTableFilterComposer get studentId {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AttendanceRecordTableOrderingComposer
    extends Composer<_$AppDatabase, $AttendanceRecordTable> {
  $$AttendanceRecordTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get checkInTime => $composableBuilder(
      column: $table.checkInTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get checkOutTime => $composableBuilder(
      column: $table.checkOutTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get recordedBy => $composableBuilder(
      column: $table.recordedBy, builder: (column) => ColumnOrderings(column));

  $$StudentTableOrderingComposer get studentId {
    final $$StudentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableOrderingComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AttendanceRecordTableAnnotationComposer
    extends Composer<_$AppDatabase, $AttendanceRecordTable> {
  $$AttendanceRecordTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get checkInTime => $composableBuilder(
      column: $table.checkInTime, builder: (column) => column);

  GeneratedColumn<String> get checkOutTime => $composableBuilder(
      column: $table.checkOutTime, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<int> get recordedBy => $composableBuilder(
      column: $table.recordedBy, builder: (column) => column);

  $$StudentTableAnnotationComposer get studentId {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AttendanceRecordTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AttendanceRecordTable,
    AttendanceRecordData,
    $$AttendanceRecordTableFilterComposer,
    $$AttendanceRecordTableOrderingComposer,
    $$AttendanceRecordTableAnnotationComposer,
    $$AttendanceRecordTableCreateCompanionBuilder,
    $$AttendanceRecordTableUpdateCompanionBuilder,
    (AttendanceRecordData, $$AttendanceRecordTableReferences),
    AttendanceRecordData,
    PrefetchHooks Function({bool studentId})> {
  $$AttendanceRecordTableTableManager(
      _$AppDatabase db, $AttendanceRecordTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AttendanceRecordTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AttendanceRecordTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AttendanceRecordTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> studentId = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> checkInTime = const Value.absent(),
            Value<String?> checkOutTime = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> recordedBy = const Value.absent(),
          }) =>
              AttendanceRecordCompanion(
            id: id,
            studentId: studentId,
            date: date,
            status: status,
            checkInTime: checkInTime,
            checkOutTime: checkOutTime,
            notes: notes,
            recordedBy: recordedBy,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int studentId,
            required DateTime date,
            required String status,
            Value<String?> checkInTime = const Value.absent(),
            Value<String?> checkOutTime = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            required int recordedBy,
          }) =>
              AttendanceRecordCompanion.insert(
            id: id,
            studentId: studentId,
            date: date,
            status: status,
            checkInTime: checkInTime,
            checkOutTime: checkOutTime,
            notes: notes,
            recordedBy: recordedBy,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AttendanceRecordTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({studentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (studentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.studentId,
                    referencedTable:
                        $$AttendanceRecordTableReferences._studentIdTable(db),
                    referencedColumn: $$AttendanceRecordTableReferences
                        ._studentIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$AttendanceRecordTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AttendanceRecordTable,
    AttendanceRecordData,
    $$AttendanceRecordTableFilterComposer,
    $$AttendanceRecordTableOrderingComposer,
    $$AttendanceRecordTableAnnotationComposer,
    $$AttendanceRecordTableCreateCompanionBuilder,
    $$AttendanceRecordTableUpdateCompanionBuilder,
    (AttendanceRecordData, $$AttendanceRecordTableReferences),
    AttendanceRecordData,
    PrefetchHooks Function({bool studentId})>;
typedef $$TuitionFeeTableCreateCompanionBuilder = TuitionFeeCompanion Function({
  Value<int> id,
  required int studentId,
  required double amount,
  required DateTime dueDate,
  Value<bool> isPaid,
  Value<DateTime?> paidAt,
  Value<String?> notes,
});
typedef $$TuitionFeeTableUpdateCompanionBuilder = TuitionFeeCompanion Function({
  Value<int> id,
  Value<int> studentId,
  Value<double> amount,
  Value<DateTime> dueDate,
  Value<bool> isPaid,
  Value<DateTime?> paidAt,
  Value<String?> notes,
});

final class $$TuitionFeeTableReferences
    extends BaseReferences<_$AppDatabase, $TuitionFeeTable, TuitionFeeData> {
  $$TuitionFeeTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StudentTable _studentIdTable(_$AppDatabase db) =>
      db.student.createAlias('tuition_fee__student_id__student__id');

  $$StudentTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<int>('student_id')!;

    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TuitionFeeTableFilterComposer
    extends Composer<_$AppDatabase, $TuitionFeeTable> {
  $$TuitionFeeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPaid => $composableBuilder(
      column: $table.isPaid, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get paidAt => $composableBuilder(
      column: $table.paidAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  $$StudentTableFilterComposer get studentId {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TuitionFeeTableOrderingComposer
    extends Composer<_$AppDatabase, $TuitionFeeTable> {
  $$TuitionFeeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPaid => $composableBuilder(
      column: $table.isPaid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get paidAt => $composableBuilder(
      column: $table.paidAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  $$StudentTableOrderingComposer get studentId {
    final $$StudentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableOrderingComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TuitionFeeTableAnnotationComposer
    extends Composer<_$AppDatabase, $TuitionFeeTable> {
  $$TuitionFeeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);

  GeneratedColumn<bool> get isPaid =>
      $composableBuilder(column: $table.isPaid, builder: (column) => column);

  GeneratedColumn<DateTime> get paidAt =>
      $composableBuilder(column: $table.paidAt, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$StudentTableAnnotationComposer get studentId {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TuitionFeeTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TuitionFeeTable,
    TuitionFeeData,
    $$TuitionFeeTableFilterComposer,
    $$TuitionFeeTableOrderingComposer,
    $$TuitionFeeTableAnnotationComposer,
    $$TuitionFeeTableCreateCompanionBuilder,
    $$TuitionFeeTableUpdateCompanionBuilder,
    (TuitionFeeData, $$TuitionFeeTableReferences),
    TuitionFeeData,
    PrefetchHooks Function({bool studentId})> {
  $$TuitionFeeTableTableManager(_$AppDatabase db, $TuitionFeeTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TuitionFeeTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TuitionFeeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TuitionFeeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> studentId = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<DateTime> dueDate = const Value.absent(),
            Value<bool> isPaid = const Value.absent(),
            Value<DateTime?> paidAt = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              TuitionFeeCompanion(
            id: id,
            studentId: studentId,
            amount: amount,
            dueDate: dueDate,
            isPaid: isPaid,
            paidAt: paidAt,
            notes: notes,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int studentId,
            required double amount,
            required DateTime dueDate,
            Value<bool> isPaid = const Value.absent(),
            Value<DateTime?> paidAt = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              TuitionFeeCompanion.insert(
            id: id,
            studentId: studentId,
            amount: amount,
            dueDate: dueDate,
            isPaid: isPaid,
            paidAt: paidAt,
            notes: notes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TuitionFeeTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({studentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (studentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.studentId,
                    referencedTable:
                        $$TuitionFeeTableReferences._studentIdTable(db),
                    referencedColumn:
                        $$TuitionFeeTableReferences._studentIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TuitionFeeTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TuitionFeeTable,
    TuitionFeeData,
    $$TuitionFeeTableFilterComposer,
    $$TuitionFeeTableOrderingComposer,
    $$TuitionFeeTableAnnotationComposer,
    $$TuitionFeeTableCreateCompanionBuilder,
    $$TuitionFeeTableUpdateCompanionBuilder,
    (TuitionFeeData, $$TuitionFeeTableReferences),
    TuitionFeeData,
    PrefetchHooks Function({bool studentId})>;
typedef $$ReceiptTableCreateCompanionBuilder = ReceiptCompanion Function({
  Value<int> id,
  required int studentId,
  required double amount,
  required DateTime receiptDate,
  Value<String?> paymentMethod,
  Value<String?> notes,
  required int receivedBy,
});
typedef $$ReceiptTableUpdateCompanionBuilder = ReceiptCompanion Function({
  Value<int> id,
  Value<int> studentId,
  Value<double> amount,
  Value<DateTime> receiptDate,
  Value<String?> paymentMethod,
  Value<String?> notes,
  Value<int> receivedBy,
});

final class $$ReceiptTableReferences
    extends BaseReferences<_$AppDatabase, $ReceiptTable, ReceiptData> {
  $$ReceiptTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StudentTable _studentIdTable(_$AppDatabase db) =>
      db.student.createAlias('receipt__student_id__student__id');

  $$StudentTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<int>('student_id')!;

    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ReceiptTableFilterComposer
    extends Composer<_$AppDatabase, $ReceiptTable> {
  $$ReceiptTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get receiptDate => $composableBuilder(
      column: $table.receiptDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get receivedBy => $composableBuilder(
      column: $table.receivedBy, builder: (column) => ColumnFilters(column));

  $$StudentTableFilterComposer get studentId {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReceiptTableOrderingComposer
    extends Composer<_$AppDatabase, $ReceiptTable> {
  $$ReceiptTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get receiptDate => $composableBuilder(
      column: $table.receiptDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get receivedBy => $composableBuilder(
      column: $table.receivedBy, builder: (column) => ColumnOrderings(column));

  $$StudentTableOrderingComposer get studentId {
    final $$StudentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableOrderingComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReceiptTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReceiptTable> {
  $$ReceiptTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get receiptDate => $composableBuilder(
      column: $table.receiptDate, builder: (column) => column);

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<int> get receivedBy => $composableBuilder(
      column: $table.receivedBy, builder: (column) => column);

  $$StudentTableAnnotationComposer get studentId {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReceiptTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReceiptTable,
    ReceiptData,
    $$ReceiptTableFilterComposer,
    $$ReceiptTableOrderingComposer,
    $$ReceiptTableAnnotationComposer,
    $$ReceiptTableCreateCompanionBuilder,
    $$ReceiptTableUpdateCompanionBuilder,
    (ReceiptData, $$ReceiptTableReferences),
    ReceiptData,
    PrefetchHooks Function({bool studentId})> {
  $$ReceiptTableTableManager(_$AppDatabase db, $ReceiptTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReceiptTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReceiptTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReceiptTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> studentId = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<DateTime> receiptDate = const Value.absent(),
            Value<String?> paymentMethod = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<int> receivedBy = const Value.absent(),
          }) =>
              ReceiptCompanion(
            id: id,
            studentId: studentId,
            amount: amount,
            receiptDate: receiptDate,
            paymentMethod: paymentMethod,
            notes: notes,
            receivedBy: receivedBy,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int studentId,
            required double amount,
            required DateTime receiptDate,
            Value<String?> paymentMethod = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            required int receivedBy,
          }) =>
              ReceiptCompanion.insert(
            id: id,
            studentId: studentId,
            amount: amount,
            receiptDate: receiptDate,
            paymentMethod: paymentMethod,
            notes: notes,
            receivedBy: receivedBy,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ReceiptTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({studentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (studentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.studentId,
                    referencedTable:
                        $$ReceiptTableReferences._studentIdTable(db),
                    referencedColumn:
                        $$ReceiptTableReferences._studentIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ReceiptTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ReceiptTable,
    ReceiptData,
    $$ReceiptTableFilterComposer,
    $$ReceiptTableOrderingComposer,
    $$ReceiptTableAnnotationComposer,
    $$ReceiptTableCreateCompanionBuilder,
    $$ReceiptTableUpdateCompanionBuilder,
    (ReceiptData, $$ReceiptTableReferences),
    ReceiptData,
    PrefetchHooks Function({bool studentId})>;
typedef $$ExpenseTableCreateCompanionBuilder = ExpenseCompanion Function({
  Value<int> id,
  required String description,
  required double amount,
  required DateTime expenseDate,
  Value<String?> category,
  required int approvedBy,
});
typedef $$ExpenseTableUpdateCompanionBuilder = ExpenseCompanion Function({
  Value<int> id,
  Value<String> description,
  Value<double> amount,
  Value<DateTime> expenseDate,
  Value<String?> category,
  Value<int> approvedBy,
});

class $$ExpenseTableFilterComposer
    extends Composer<_$AppDatabase, $ExpenseTable> {
  $$ExpenseTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expenseDate => $composableBuilder(
      column: $table.expenseDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get approvedBy => $composableBuilder(
      column: $table.approvedBy, builder: (column) => ColumnFilters(column));
}

class $$ExpenseTableOrderingComposer
    extends Composer<_$AppDatabase, $ExpenseTable> {
  $$ExpenseTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expenseDate => $composableBuilder(
      column: $table.expenseDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get approvedBy => $composableBuilder(
      column: $table.approvedBy, builder: (column) => ColumnOrderings(column));
}

class $$ExpenseTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExpenseTable> {
  $$ExpenseTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get expenseDate => $composableBuilder(
      column: $table.expenseDate, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<int> get approvedBy => $composableBuilder(
      column: $table.approvedBy, builder: (column) => column);
}

class $$ExpenseTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ExpenseTable,
    ExpenseData,
    $$ExpenseTableFilterComposer,
    $$ExpenseTableOrderingComposer,
    $$ExpenseTableAnnotationComposer,
    $$ExpenseTableCreateCompanionBuilder,
    $$ExpenseTableUpdateCompanionBuilder,
    (ExpenseData, BaseReferences<_$AppDatabase, $ExpenseTable, ExpenseData>),
    ExpenseData,
    PrefetchHooks Function()> {
  $$ExpenseTableTableManager(_$AppDatabase db, $ExpenseTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExpenseTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExpenseTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExpenseTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<DateTime> expenseDate = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<int> approvedBy = const Value.absent(),
          }) =>
              ExpenseCompanion(
            id: id,
            description: description,
            amount: amount,
            expenseDate: expenseDate,
            category: category,
            approvedBy: approvedBy,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String description,
            required double amount,
            required DateTime expenseDate,
            Value<String?> category = const Value.absent(),
            required int approvedBy,
          }) =>
              ExpenseCompanion.insert(
            id: id,
            description: description,
            amount: amount,
            expenseDate: expenseDate,
            category: category,
            approvedBy: approvedBy,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ExpenseTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ExpenseTable,
    ExpenseData,
    $$ExpenseTableFilterComposer,
    $$ExpenseTableOrderingComposer,
    $$ExpenseTableAnnotationComposer,
    $$ExpenseTableCreateCompanionBuilder,
    $$ExpenseTableUpdateCompanionBuilder,
    (ExpenseData, BaseReferences<_$AppDatabase, $ExpenseTable, ExpenseData>),
    ExpenseData,
    PrefetchHooks Function()>;
typedef $$PayrollTableCreateCompanionBuilder = PayrollCompanion Function({
  Value<int> id,
  required int employeeId,
  required double salary,
  Value<double?> deductions,
  Value<double?> bonuses,
  required DateTime payDate,
  Value<String?> notes,
});
typedef $$PayrollTableUpdateCompanionBuilder = PayrollCompanion Function({
  Value<int> id,
  Value<int> employeeId,
  Value<double> salary,
  Value<double?> deductions,
  Value<double?> bonuses,
  Value<DateTime> payDate,
  Value<String?> notes,
});

class $$PayrollTableFilterComposer
    extends Composer<_$AppDatabase, $PayrollTable> {
  $$PayrollTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get salary => $composableBuilder(
      column: $table.salary, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get deductions => $composableBuilder(
      column: $table.deductions, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get bonuses => $composableBuilder(
      column: $table.bonuses, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get payDate => $composableBuilder(
      column: $table.payDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));
}

class $$PayrollTableOrderingComposer
    extends Composer<_$AppDatabase, $PayrollTable> {
  $$PayrollTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get salary => $composableBuilder(
      column: $table.salary, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get deductions => $composableBuilder(
      column: $table.deductions, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get bonuses => $composableBuilder(
      column: $table.bonuses, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get payDate => $composableBuilder(
      column: $table.payDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));
}

class $$PayrollTableAnnotationComposer
    extends Composer<_$AppDatabase, $PayrollTable> {
  $$PayrollTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get employeeId => $composableBuilder(
      column: $table.employeeId, builder: (column) => column);

  GeneratedColumn<double> get salary =>
      $composableBuilder(column: $table.salary, builder: (column) => column);

  GeneratedColumn<double> get deductions => $composableBuilder(
      column: $table.deductions, builder: (column) => column);

  GeneratedColumn<double> get bonuses =>
      $composableBuilder(column: $table.bonuses, builder: (column) => column);

  GeneratedColumn<DateTime> get payDate =>
      $composableBuilder(column: $table.payDate, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$PayrollTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PayrollTable,
    PayrollData,
    $$PayrollTableFilterComposer,
    $$PayrollTableOrderingComposer,
    $$PayrollTableAnnotationComposer,
    $$PayrollTableCreateCompanionBuilder,
    $$PayrollTableUpdateCompanionBuilder,
    (PayrollData, BaseReferences<_$AppDatabase, $PayrollTable, PayrollData>),
    PayrollData,
    PrefetchHooks Function()> {
  $$PayrollTableTableManager(_$AppDatabase db, $PayrollTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PayrollTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PayrollTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PayrollTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> employeeId = const Value.absent(),
            Value<double> salary = const Value.absent(),
            Value<double?> deductions = const Value.absent(),
            Value<double?> bonuses = const Value.absent(),
            Value<DateTime> payDate = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              PayrollCompanion(
            id: id,
            employeeId: employeeId,
            salary: salary,
            deductions: deductions,
            bonuses: bonuses,
            payDate: payDate,
            notes: notes,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int employeeId,
            required double salary,
            Value<double?> deductions = const Value.absent(),
            Value<double?> bonuses = const Value.absent(),
            required DateTime payDate,
            Value<String?> notes = const Value.absent(),
          }) =>
              PayrollCompanion.insert(
            id: id,
            employeeId: employeeId,
            salary: salary,
            deductions: deductions,
            bonuses: bonuses,
            payDate: payDate,
            notes: notes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PayrollTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PayrollTable,
    PayrollData,
    $$PayrollTableFilterComposer,
    $$PayrollTableOrderingComposer,
    $$PayrollTableAnnotationComposer,
    $$PayrollTableCreateCompanionBuilder,
    $$PayrollTableUpdateCompanionBuilder,
    (PayrollData, BaseReferences<_$AppDatabase, $PayrollTable, PayrollData>),
    PayrollData,
    PrefetchHooks Function()>;
typedef $$WalletTableCreateCompanionBuilder = WalletCompanion Function({
  Value<int> id,
  required int studentId,
  Value<double> balance,
});
typedef $$WalletTableUpdateCompanionBuilder = WalletCompanion Function({
  Value<int> id,
  Value<int> studentId,
  Value<double> balance,
});

final class $$WalletTableReferences
    extends BaseReferences<_$AppDatabase, $WalletTable, WalletData> {
  $$WalletTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StudentTable _studentIdTable(_$AppDatabase db) =>
      db.student.createAlias('wallet__student_id__student__id');

  $$StudentTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<int>('student_id')!;

    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$WalletTransactionTable,
      List<WalletTransactionData>> _walletTransactionRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.walletTransaction,
          aliasName: 'wallet__id__wallet_transaction__wallet_id');

  $$WalletTransactionTableProcessedTableManager get walletTransactionRefs {
    final manager =
        $$WalletTransactionTableTableManager($_db, $_db.walletTransaction)
            .filter((f) => f.walletId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_walletTransactionRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$WalletTableFilterComposer
    extends Composer<_$AppDatabase, $WalletTable> {
  $$WalletTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnFilters(column));

  $$StudentTableFilterComposer get studentId {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> walletTransactionRefs(
      Expression<bool> Function($$WalletTransactionTableFilterComposer f) f) {
    final $$WalletTransactionTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.walletTransaction,
        getReferencedColumn: (t) => t.walletId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletTransactionTableFilterComposer(
              $db: $db,
              $table: $db.walletTransaction,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WalletTableOrderingComposer
    extends Composer<_$AppDatabase, $WalletTable> {
  $$WalletTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnOrderings(column));

  $$StudentTableOrderingComposer get studentId {
    final $$StudentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableOrderingComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$WalletTableAnnotationComposer
    extends Composer<_$AppDatabase, $WalletTable> {
  $$WalletTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  $$StudentTableAnnotationComposer get studentId {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> walletTransactionRefs<T extends Object>(
      Expression<T> Function($$WalletTransactionTableAnnotationComposer a) f) {
    final $$WalletTransactionTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.walletTransaction,
            getReferencedColumn: (t) => t.walletId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$WalletTransactionTableAnnotationComposer(
                  $db: $db,
                  $table: $db.walletTransaction,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$WalletTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WalletTable,
    WalletData,
    $$WalletTableFilterComposer,
    $$WalletTableOrderingComposer,
    $$WalletTableAnnotationComposer,
    $$WalletTableCreateCompanionBuilder,
    $$WalletTableUpdateCompanionBuilder,
    (WalletData, $$WalletTableReferences),
    WalletData,
    PrefetchHooks Function({bool studentId, bool walletTransactionRefs})> {
  $$WalletTableTableManager(_$AppDatabase db, $WalletTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WalletTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WalletTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WalletTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> studentId = const Value.absent(),
            Value<double> balance = const Value.absent(),
          }) =>
              WalletCompanion(
            id: id,
            studentId: studentId,
            balance: balance,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int studentId,
            Value<double> balance = const Value.absent(),
          }) =>
              WalletCompanion.insert(
            id: id,
            studentId: studentId,
            balance: balance,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$WalletTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {studentId = false, walletTransactionRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (walletTransactionRefs) db.walletTransaction
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (studentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.studentId,
                    referencedTable:
                        $$WalletTableReferences._studentIdTable(db),
                    referencedColumn:
                        $$WalletTableReferences._studentIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (walletTransactionRefs)
                    await $_getPrefetchedData<WalletData, $WalletTable,
                            WalletTransactionData>(
                        currentTable: table,
                        referencedTable: $$WalletTableReferences
                            ._walletTransactionRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WalletTableReferences(db, table, p0)
                                .walletTransactionRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.walletId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$WalletTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $WalletTable,
    WalletData,
    $$WalletTableFilterComposer,
    $$WalletTableOrderingComposer,
    $$WalletTableAnnotationComposer,
    $$WalletTableCreateCompanionBuilder,
    $$WalletTableUpdateCompanionBuilder,
    (WalletData, $$WalletTableReferences),
    WalletData,
    PrefetchHooks Function({bool studentId, bool walletTransactionRefs})>;
typedef $$WalletTransactionTableCreateCompanionBuilder
    = WalletTransactionCompanion Function({
  Value<int> id,
  required int walletId,
  required double amount,
  required String type,
  Value<DateTime> timestamp,
  Value<String?> description,
});
typedef $$WalletTransactionTableUpdateCompanionBuilder
    = WalletTransactionCompanion Function({
  Value<int> id,
  Value<int> walletId,
  Value<double> amount,
  Value<String> type,
  Value<DateTime> timestamp,
  Value<String?> description,
});

final class $$WalletTransactionTableReferences extends BaseReferences<
    _$AppDatabase, $WalletTransactionTable, WalletTransactionData> {
  $$WalletTransactionTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $WalletTable _walletIdTable(_$AppDatabase db) =>
      db.wallet.createAlias('wallet_transaction__wallet_id__wallet__id');

  $$WalletTableProcessedTableManager get walletId {
    final $_column = $_itemColumn<int>('wallet_id')!;

    final manager = $$WalletTableTableManager($_db, $_db.wallet)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_walletIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$WalletTransactionTableFilterComposer
    extends Composer<_$AppDatabase, $WalletTransactionTable> {
  $$WalletTransactionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  $$WalletTableFilterComposer get walletId {
    final $$WalletTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.walletId,
        referencedTable: $db.wallet,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletTableFilterComposer(
              $db: $db,
              $table: $db.wallet,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$WalletTransactionTableOrderingComposer
    extends Composer<_$AppDatabase, $WalletTransactionTable> {
  $$WalletTransactionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  $$WalletTableOrderingComposer get walletId {
    final $$WalletTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.walletId,
        referencedTable: $db.wallet,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletTableOrderingComposer(
              $db: $db,
              $table: $db.wallet,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$WalletTransactionTableAnnotationComposer
    extends Composer<_$AppDatabase, $WalletTransactionTable> {
  $$WalletTransactionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  $$WalletTableAnnotationComposer get walletId {
    final $$WalletTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.walletId,
        referencedTable: $db.wallet,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletTableAnnotationComposer(
              $db: $db,
              $table: $db.wallet,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$WalletTransactionTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WalletTransactionTable,
    WalletTransactionData,
    $$WalletTransactionTableFilterComposer,
    $$WalletTransactionTableOrderingComposer,
    $$WalletTransactionTableAnnotationComposer,
    $$WalletTransactionTableCreateCompanionBuilder,
    $$WalletTransactionTableUpdateCompanionBuilder,
    (WalletTransactionData, $$WalletTransactionTableReferences),
    WalletTransactionData,
    PrefetchHooks Function({bool walletId})> {
  $$WalletTransactionTableTableManager(
      _$AppDatabase db, $WalletTransactionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WalletTransactionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WalletTransactionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WalletTransactionTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> walletId = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<DateTime> timestamp = const Value.absent(),
            Value<String?> description = const Value.absent(),
          }) =>
              WalletTransactionCompanion(
            id: id,
            walletId: walletId,
            amount: amount,
            type: type,
            timestamp: timestamp,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int walletId,
            required double amount,
            required String type,
            Value<DateTime> timestamp = const Value.absent(),
            Value<String?> description = const Value.absent(),
          }) =>
              WalletTransactionCompanion.insert(
            id: id,
            walletId: walletId,
            amount: amount,
            type: type,
            timestamp: timestamp,
            description: description,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$WalletTransactionTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({walletId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (walletId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.walletId,
                    referencedTable:
                        $$WalletTransactionTableReferences._walletIdTable(db),
                    referencedColumn: $$WalletTransactionTableReferences
                        ._walletIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$WalletTransactionTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $WalletTransactionTable,
    WalletTransactionData,
    $$WalletTransactionTableFilterComposer,
    $$WalletTransactionTableOrderingComposer,
    $$WalletTransactionTableAnnotationComposer,
    $$WalletTransactionTableCreateCompanionBuilder,
    $$WalletTransactionTableUpdateCompanionBuilder,
    (WalletTransactionData, $$WalletTransactionTableReferences),
    WalletTransactionData,
    PrefetchHooks Function({bool walletId})>;
typedef $$CanteenSaleTableCreateCompanionBuilder = CanteenSaleCompanion
    Function({
  Value<int> id,
  required int studentId,
  required double amount,
  Value<DateTime> saleDate,
  Value<String?> items,
  required int recordedBy,
});
typedef $$CanteenSaleTableUpdateCompanionBuilder = CanteenSaleCompanion
    Function({
  Value<int> id,
  Value<int> studentId,
  Value<double> amount,
  Value<DateTime> saleDate,
  Value<String?> items,
  Value<int> recordedBy,
});

final class $$CanteenSaleTableReferences
    extends BaseReferences<_$AppDatabase, $CanteenSaleTable, CanteenSaleData> {
  $$CanteenSaleTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StudentTable _studentIdTable(_$AppDatabase db) =>
      db.student.createAlias('canteen_sale__student_id__student__id');

  $$StudentTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<int>('student_id')!;

    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CanteenSaleTableFilterComposer
    extends Composer<_$AppDatabase, $CanteenSaleTable> {
  $$CanteenSaleTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get saleDate => $composableBuilder(
      column: $table.saleDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get items => $composableBuilder(
      column: $table.items, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get recordedBy => $composableBuilder(
      column: $table.recordedBy, builder: (column) => ColumnFilters(column));

  $$StudentTableFilterComposer get studentId {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CanteenSaleTableOrderingComposer
    extends Composer<_$AppDatabase, $CanteenSaleTable> {
  $$CanteenSaleTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get saleDate => $composableBuilder(
      column: $table.saleDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get items => $composableBuilder(
      column: $table.items, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get recordedBy => $composableBuilder(
      column: $table.recordedBy, builder: (column) => ColumnOrderings(column));

  $$StudentTableOrderingComposer get studentId {
    final $$StudentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableOrderingComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CanteenSaleTableAnnotationComposer
    extends Composer<_$AppDatabase, $CanteenSaleTable> {
  $$CanteenSaleTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get saleDate =>
      $composableBuilder(column: $table.saleDate, builder: (column) => column);

  GeneratedColumn<String> get items =>
      $composableBuilder(column: $table.items, builder: (column) => column);

  GeneratedColumn<int> get recordedBy => $composableBuilder(
      column: $table.recordedBy, builder: (column) => column);

  $$StudentTableAnnotationComposer get studentId {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CanteenSaleTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CanteenSaleTable,
    CanteenSaleData,
    $$CanteenSaleTableFilterComposer,
    $$CanteenSaleTableOrderingComposer,
    $$CanteenSaleTableAnnotationComposer,
    $$CanteenSaleTableCreateCompanionBuilder,
    $$CanteenSaleTableUpdateCompanionBuilder,
    (CanteenSaleData, $$CanteenSaleTableReferences),
    CanteenSaleData,
    PrefetchHooks Function({bool studentId})> {
  $$CanteenSaleTableTableManager(_$AppDatabase db, $CanteenSaleTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CanteenSaleTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CanteenSaleTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CanteenSaleTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> studentId = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<DateTime> saleDate = const Value.absent(),
            Value<String?> items = const Value.absent(),
            Value<int> recordedBy = const Value.absent(),
          }) =>
              CanteenSaleCompanion(
            id: id,
            studentId: studentId,
            amount: amount,
            saleDate: saleDate,
            items: items,
            recordedBy: recordedBy,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int studentId,
            required double amount,
            Value<DateTime> saleDate = const Value.absent(),
            Value<String?> items = const Value.absent(),
            required int recordedBy,
          }) =>
              CanteenSaleCompanion.insert(
            id: id,
            studentId: studentId,
            amount: amount,
            saleDate: saleDate,
            items: items,
            recordedBy: recordedBy,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CanteenSaleTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({studentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (studentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.studentId,
                    referencedTable:
                        $$CanteenSaleTableReferences._studentIdTable(db),
                    referencedColumn:
                        $$CanteenSaleTableReferences._studentIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CanteenSaleTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CanteenSaleTable,
    CanteenSaleData,
    $$CanteenSaleTableFilterComposer,
    $$CanteenSaleTableOrderingComposer,
    $$CanteenSaleTableAnnotationComposer,
    $$CanteenSaleTableCreateCompanionBuilder,
    $$CanteenSaleTableUpdateCompanionBuilder,
    (CanteenSaleData, $$CanteenSaleTableReferences),
    CanteenSaleData,
    PrefetchHooks Function({bool studentId})>;
typedef $$CanteenProductTableCreateCompanionBuilder = CanteenProductCompanion
    Function({
  Value<int> id,
  required String name,
  required double price,
  Value<int> stock,
});
typedef $$CanteenProductTableUpdateCompanionBuilder = CanteenProductCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<double> price,
  Value<int> stock,
});

class $$CanteenProductTableFilterComposer
    extends Composer<_$AppDatabase, $CanteenProductTable> {
  $$CanteenProductTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get stock => $composableBuilder(
      column: $table.stock, builder: (column) => ColumnFilters(column));
}

class $$CanteenProductTableOrderingComposer
    extends Composer<_$AppDatabase, $CanteenProductTable> {
  $$CanteenProductTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get stock => $composableBuilder(
      column: $table.stock, builder: (column) => ColumnOrderings(column));
}

class $$CanteenProductTableAnnotationComposer
    extends Composer<_$AppDatabase, $CanteenProductTable> {
  $$CanteenProductTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get stock =>
      $composableBuilder(column: $table.stock, builder: (column) => column);
}

class $$CanteenProductTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CanteenProductTable,
    CanteenProductData,
    $$CanteenProductTableFilterComposer,
    $$CanteenProductTableOrderingComposer,
    $$CanteenProductTableAnnotationComposer,
    $$CanteenProductTableCreateCompanionBuilder,
    $$CanteenProductTableUpdateCompanionBuilder,
    (
      CanteenProductData,
      BaseReferences<_$AppDatabase, $CanteenProductTable, CanteenProductData>
    ),
    CanteenProductData,
    PrefetchHooks Function()> {
  $$CanteenProductTableTableManager(
      _$AppDatabase db, $CanteenProductTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CanteenProductTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CanteenProductTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CanteenProductTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> stock = const Value.absent(),
          }) =>
              CanteenProductCompanion(
            id: id,
            name: name,
            price: price,
            stock: stock,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required double price,
            Value<int> stock = const Value.absent(),
          }) =>
              CanteenProductCompanion.insert(
            id: id,
            name: name,
            price: price,
            stock: stock,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CanteenProductTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CanteenProductTable,
    CanteenProductData,
    $$CanteenProductTableFilterComposer,
    $$CanteenProductTableOrderingComposer,
    $$CanteenProductTableAnnotationComposer,
    $$CanteenProductTableCreateCompanionBuilder,
    $$CanteenProductTableUpdateCompanionBuilder,
    (
      CanteenProductData,
      BaseReferences<_$AppDatabase, $CanteenProductTable, CanteenProductData>
    ),
    CanteenProductData,
    PrefetchHooks Function()>;
typedef $$BookTableCreateCompanionBuilder = BookCompanion Function({
  Value<int> id,
  required String title,
  Value<String?> author,
  Value<String?> isbn,
  Value<int> totalCopies,
  Value<int> availableCopies,
});
typedef $$BookTableUpdateCompanionBuilder = BookCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String?> author,
  Value<String?> isbn,
  Value<int> totalCopies,
  Value<int> availableCopies,
});

final class $$BookTableReferences
    extends BaseReferences<_$AppDatabase, $BookTable, BookData> {
  $$BookTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$BorrowingRecordTable, List<BorrowingRecordData>>
      _borrowingRecordRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.borrowingRecord,
              aliasName: 'book__id__borrowing_record__book_id');

  $$BorrowingRecordTableProcessedTableManager get borrowingRecordRefs {
    final manager =
        $$BorrowingRecordTableTableManager($_db, $_db.borrowingRecord)
            .filter((f) => f.bookId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_borrowingRecordRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$BookTableFilterComposer extends Composer<_$AppDatabase, $BookTable> {
  $$BookTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get isbn => $composableBuilder(
      column: $table.isbn, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalCopies => $composableBuilder(
      column: $table.totalCopies, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get availableCopies => $composableBuilder(
      column: $table.availableCopies,
      builder: (column) => ColumnFilters(column));

  Expression<bool> borrowingRecordRefs(
      Expression<bool> Function($$BorrowingRecordTableFilterComposer f) f) {
    final $$BorrowingRecordTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.borrowingRecord,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BorrowingRecordTableFilterComposer(
              $db: $db,
              $table: $db.borrowingRecord,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BookTableOrderingComposer extends Composer<_$AppDatabase, $BookTable> {
  $$BookTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get isbn => $composableBuilder(
      column: $table.isbn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalCopies => $composableBuilder(
      column: $table.totalCopies, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get availableCopies => $composableBuilder(
      column: $table.availableCopies,
      builder: (column) => ColumnOrderings(column));
}

class $$BookTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookTable> {
  $$BookTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get isbn =>
      $composableBuilder(column: $table.isbn, builder: (column) => column);

  GeneratedColumn<int> get totalCopies => $composableBuilder(
      column: $table.totalCopies, builder: (column) => column);

  GeneratedColumn<int> get availableCopies => $composableBuilder(
      column: $table.availableCopies, builder: (column) => column);

  Expression<T> borrowingRecordRefs<T extends Object>(
      Expression<T> Function($$BorrowingRecordTableAnnotationComposer a) f) {
    final $$BorrowingRecordTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.borrowingRecord,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BorrowingRecordTableAnnotationComposer(
              $db: $db,
              $table: $db.borrowingRecord,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BookTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookTable,
    BookData,
    $$BookTableFilterComposer,
    $$BookTableOrderingComposer,
    $$BookTableAnnotationComposer,
    $$BookTableCreateCompanionBuilder,
    $$BookTableUpdateCompanionBuilder,
    (BookData, $$BookTableReferences),
    BookData,
    PrefetchHooks Function({bool borrowingRecordRefs})> {
  $$BookTableTableManager(_$AppDatabase db, $BookTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BookTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BookTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BookTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String?> isbn = const Value.absent(),
            Value<int> totalCopies = const Value.absent(),
            Value<int> availableCopies = const Value.absent(),
          }) =>
              BookCompanion(
            id: id,
            title: title,
            author: author,
            isbn: isbn,
            totalCopies: totalCopies,
            availableCopies: availableCopies,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            Value<String?> author = const Value.absent(),
            Value<String?> isbn = const Value.absent(),
            Value<int> totalCopies = const Value.absent(),
            Value<int> availableCopies = const Value.absent(),
          }) =>
              BookCompanion.insert(
            id: id,
            title: title,
            author: author,
            isbn: isbn,
            totalCopies: totalCopies,
            availableCopies: availableCopies,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$BookTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({borrowingRecordRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (borrowingRecordRefs) db.borrowingRecord
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (borrowingRecordRefs)
                    await $_getPrefetchedData<BookData, $BookTable,
                            BorrowingRecordData>(
                        currentTable: table,
                        referencedTable:
                            $$BookTableReferences._borrowingRecordRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$BookTableReferences(db, table, p0)
                                .borrowingRecordRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.bookId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$BookTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BookTable,
    BookData,
    $$BookTableFilterComposer,
    $$BookTableOrderingComposer,
    $$BookTableAnnotationComposer,
    $$BookTableCreateCompanionBuilder,
    $$BookTableUpdateCompanionBuilder,
    (BookData, $$BookTableReferences),
    BookData,
    PrefetchHooks Function({bool borrowingRecordRefs})>;
typedef $$BorrowingRecordTableCreateCompanionBuilder = BorrowingRecordCompanion
    Function({
  Value<int> id,
  required int bookId,
  required int studentId,
  required DateTime borrowDate,
  Value<DateTime?> dueDate,
  Value<DateTime?> returnDate,
  Value<String?> notes,
});
typedef $$BorrowingRecordTableUpdateCompanionBuilder = BorrowingRecordCompanion
    Function({
  Value<int> id,
  Value<int> bookId,
  Value<int> studentId,
  Value<DateTime> borrowDate,
  Value<DateTime?> dueDate,
  Value<DateTime?> returnDate,
  Value<String?> notes,
});

final class $$BorrowingRecordTableReferences extends BaseReferences<
    _$AppDatabase, $BorrowingRecordTable, BorrowingRecordData> {
  $$BorrowingRecordTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $BookTable _bookIdTable(_$AppDatabase db) =>
      db.book.createAlias('borrowing_record__book_id__book__id');

  $$BookTableProcessedTableManager get bookId {
    final $_column = $_itemColumn<int>('book_id')!;

    final manager = $$BookTableTableManager($_db, $_db.book)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_bookIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $StudentTable _studentIdTable(_$AppDatabase db) =>
      db.student.createAlias('borrowing_record__student_id__student__id');

  $$StudentTableProcessedTableManager get studentId {
    final $_column = $_itemColumn<int>('student_id')!;

    final manager = $$StudentTableTableManager($_db, $_db.student)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_studentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$BorrowingRecordTableFilterComposer
    extends Composer<_$AppDatabase, $BorrowingRecordTable> {
  $$BorrowingRecordTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get borrowDate => $composableBuilder(
      column: $table.borrowDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  $$BookTableFilterComposer get bookId {
    final $$BookTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.book,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BookTableFilterComposer(
              $db: $db,
              $table: $db.book,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StudentTableFilterComposer get studentId {
    final $$StudentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableFilterComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BorrowingRecordTableOrderingComposer
    extends Composer<_$AppDatabase, $BorrowingRecordTable> {
  $$BorrowingRecordTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get borrowDate => $composableBuilder(
      column: $table.borrowDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  $$BookTableOrderingComposer get bookId {
    final $$BookTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.book,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BookTableOrderingComposer(
              $db: $db,
              $table: $db.book,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StudentTableOrderingComposer get studentId {
    final $$StudentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableOrderingComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BorrowingRecordTableAnnotationComposer
    extends Composer<_$AppDatabase, $BorrowingRecordTable> {
  $$BorrowingRecordTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get borrowDate => $composableBuilder(
      column: $table.borrowDate, builder: (column) => column);

  GeneratedColumn<DateTime> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);

  GeneratedColumn<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$BookTableAnnotationComposer get bookId {
    final $$BookTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.book,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BookTableAnnotationComposer(
              $db: $db,
              $table: $db.book,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StudentTableAnnotationComposer get studentId {
    final $$StudentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.studentId,
        referencedTable: $db.student,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StudentTableAnnotationComposer(
              $db: $db,
              $table: $db.student,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BorrowingRecordTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BorrowingRecordTable,
    BorrowingRecordData,
    $$BorrowingRecordTableFilterComposer,
    $$BorrowingRecordTableOrderingComposer,
    $$BorrowingRecordTableAnnotationComposer,
    $$BorrowingRecordTableCreateCompanionBuilder,
    $$BorrowingRecordTableUpdateCompanionBuilder,
    (BorrowingRecordData, $$BorrowingRecordTableReferences),
    BorrowingRecordData,
    PrefetchHooks Function({bool bookId, bool studentId})> {
  $$BorrowingRecordTableTableManager(
      _$AppDatabase db, $BorrowingRecordTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BorrowingRecordTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BorrowingRecordTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BorrowingRecordTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> bookId = const Value.absent(),
            Value<int> studentId = const Value.absent(),
            Value<DateTime> borrowDate = const Value.absent(),
            Value<DateTime?> dueDate = const Value.absent(),
            Value<DateTime?> returnDate = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              BorrowingRecordCompanion(
            id: id,
            bookId: bookId,
            studentId: studentId,
            borrowDate: borrowDate,
            dueDate: dueDate,
            returnDate: returnDate,
            notes: notes,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int bookId,
            required int studentId,
            required DateTime borrowDate,
            Value<DateTime?> dueDate = const Value.absent(),
            Value<DateTime?> returnDate = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              BorrowingRecordCompanion.insert(
            id: id,
            bookId: bookId,
            studentId: studentId,
            borrowDate: borrowDate,
            dueDate: dueDate,
            returnDate: returnDate,
            notes: notes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$BorrowingRecordTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({bookId = false, studentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (bookId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.bookId,
                    referencedTable:
                        $$BorrowingRecordTableReferences._bookIdTable(db),
                    referencedColumn:
                        $$BorrowingRecordTableReferences._bookIdTable(db).id,
                  ) as T;
                }
                if (studentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.studentId,
                    referencedTable:
                        $$BorrowingRecordTableReferences._studentIdTable(db),
                    referencedColumn:
                        $$BorrowingRecordTableReferences._studentIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$BorrowingRecordTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BorrowingRecordTable,
    BorrowingRecordData,
    $$BorrowingRecordTableFilterComposer,
    $$BorrowingRecordTableOrderingComposer,
    $$BorrowingRecordTableAnnotationComposer,
    $$BorrowingRecordTableCreateCompanionBuilder,
    $$BorrowingRecordTableUpdateCompanionBuilder,
    (BorrowingRecordData, $$BorrowingRecordTableReferences),
    BorrowingRecordData,
    PrefetchHooks Function({bool bookId, bool studentId})>;
typedef $$InventoryItemTableCreateCompanionBuilder = InventoryItemCompanion
    Function({
  Value<int> id,
  required String name,
  Value<String?> sku,
  Value<int> quantity,
  Value<double?> unitPrice,
  Value<String?> category,
});
typedef $$InventoryItemTableUpdateCompanionBuilder = InventoryItemCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String?> sku,
  Value<int> quantity,
  Value<double?> unitPrice,
  Value<String?> category,
});

final class $$InventoryItemTableReferences extends BaseReferences<_$AppDatabase,
    $InventoryItemTable, InventoryItemData> {
  $$InventoryItemTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PurchaseOrderTable, List<PurchaseOrderData>>
      _purchaseOrderRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.purchaseOrder,
              aliasName: 'inventory_item__id__purchase_order__item_id');

  $$PurchaseOrderTableProcessedTableManager get purchaseOrderRefs {
    final manager = $$PurchaseOrderTableTableManager($_db, $_db.purchaseOrder)
        .filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_purchaseOrderRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$InventoryItemTableFilterComposer
    extends Composer<_$AppDatabase, $InventoryItemTable> {
  $$InventoryItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sku => $composableBuilder(
      column: $table.sku, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  Expression<bool> purchaseOrderRefs(
      Expression<bool> Function($$PurchaseOrderTableFilterComposer f) f) {
    final $$PurchaseOrderTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.purchaseOrder,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PurchaseOrderTableFilterComposer(
              $db: $db,
              $table: $db.purchaseOrder,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$InventoryItemTableOrderingComposer
    extends Composer<_$AppDatabase, $InventoryItemTable> {
  $$InventoryItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sku => $composableBuilder(
      column: $table.sku, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));
}

class $$InventoryItemTableAnnotationComposer
    extends Composer<_$AppDatabase, $InventoryItemTable> {
  $$InventoryItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get sku =>
      $composableBuilder(column: $table.sku, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get unitPrice =>
      $composableBuilder(column: $table.unitPrice, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  Expression<T> purchaseOrderRefs<T extends Object>(
      Expression<T> Function($$PurchaseOrderTableAnnotationComposer a) f) {
    final $$PurchaseOrderTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.purchaseOrder,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PurchaseOrderTableAnnotationComposer(
              $db: $db,
              $table: $db.purchaseOrder,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$InventoryItemTableTableManager extends RootTableManager<
    _$AppDatabase,
    $InventoryItemTable,
    InventoryItemData,
    $$InventoryItemTableFilterComposer,
    $$InventoryItemTableOrderingComposer,
    $$InventoryItemTableAnnotationComposer,
    $$InventoryItemTableCreateCompanionBuilder,
    $$InventoryItemTableUpdateCompanionBuilder,
    (InventoryItemData, $$InventoryItemTableReferences),
    InventoryItemData,
    PrefetchHooks Function({bool purchaseOrderRefs})> {
  $$InventoryItemTableTableManager(_$AppDatabase db, $InventoryItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$InventoryItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$InventoryItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$InventoryItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> sku = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<double?> unitPrice = const Value.absent(),
            Value<String?> category = const Value.absent(),
          }) =>
              InventoryItemCompanion(
            id: id,
            name: name,
            sku: sku,
            quantity: quantity,
            unitPrice: unitPrice,
            category: category,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> sku = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<double?> unitPrice = const Value.absent(),
            Value<String?> category = const Value.absent(),
          }) =>
              InventoryItemCompanion.insert(
            id: id,
            name: name,
            sku: sku,
            quantity: quantity,
            unitPrice: unitPrice,
            category: category,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$InventoryItemTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({purchaseOrderRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (purchaseOrderRefs) db.purchaseOrder
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (purchaseOrderRefs)
                    await $_getPrefetchedData<InventoryItemData,
                            $InventoryItemTable, PurchaseOrderData>(
                        currentTable: table,
                        referencedTable: $$InventoryItemTableReferences
                            ._purchaseOrderRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$InventoryItemTableReferences(db, table, p0)
                                .purchaseOrderRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.itemId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$InventoryItemTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $InventoryItemTable,
    InventoryItemData,
    $$InventoryItemTableFilterComposer,
    $$InventoryItemTableOrderingComposer,
    $$InventoryItemTableAnnotationComposer,
    $$InventoryItemTableCreateCompanionBuilder,
    $$InventoryItemTableUpdateCompanionBuilder,
    (InventoryItemData, $$InventoryItemTableReferences),
    InventoryItemData,
    PrefetchHooks Function({bool purchaseOrderRefs})>;
typedef $$PurchaseOrderTableCreateCompanionBuilder = PurchaseOrderCompanion
    Function({
  Value<int> id,
  required int itemId,
  required int quantity,
  required double totalCost,
  Value<DateTime> orderDate,
  Value<int?> supplierId,
  Value<String?> status,
});
typedef $$PurchaseOrderTableUpdateCompanionBuilder = PurchaseOrderCompanion
    Function({
  Value<int> id,
  Value<int> itemId,
  Value<int> quantity,
  Value<double> totalCost,
  Value<DateTime> orderDate,
  Value<int?> supplierId,
  Value<String?> status,
});

final class $$PurchaseOrderTableReferences extends BaseReferences<_$AppDatabase,
    $PurchaseOrderTable, PurchaseOrderData> {
  $$PurchaseOrderTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $InventoryItemTable _itemIdTable(_$AppDatabase db) => db.inventoryItem
      .createAlias('purchase_order__item_id__inventory_item__id');

  $$InventoryItemTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$InventoryItemTableTableManager($_db, $_db.inventoryItem)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PurchaseOrderTableFilterComposer
    extends Composer<_$AppDatabase, $PurchaseOrderTable> {
  $$PurchaseOrderTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalCost => $composableBuilder(
      column: $table.totalCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get orderDate => $composableBuilder(
      column: $table.orderDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get supplierId => $composableBuilder(
      column: $table.supplierId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  $$InventoryItemTableFilterComposer get itemId {
    final $$InventoryItemTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.inventoryItem,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$InventoryItemTableFilterComposer(
              $db: $db,
              $table: $db.inventoryItem,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PurchaseOrderTableOrderingComposer
    extends Composer<_$AppDatabase, $PurchaseOrderTable> {
  $$PurchaseOrderTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalCost => $composableBuilder(
      column: $table.totalCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get orderDate => $composableBuilder(
      column: $table.orderDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get supplierId => $composableBuilder(
      column: $table.supplierId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  $$InventoryItemTableOrderingComposer get itemId {
    final $$InventoryItemTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.inventoryItem,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$InventoryItemTableOrderingComposer(
              $db: $db,
              $table: $db.inventoryItem,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PurchaseOrderTableAnnotationComposer
    extends Composer<_$AppDatabase, $PurchaseOrderTable> {
  $$PurchaseOrderTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get totalCost =>
      $composableBuilder(column: $table.totalCost, builder: (column) => column);

  GeneratedColumn<DateTime> get orderDate =>
      $composableBuilder(column: $table.orderDate, builder: (column) => column);

  GeneratedColumn<int> get supplierId => $composableBuilder(
      column: $table.supplierId, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$InventoryItemTableAnnotationComposer get itemId {
    final $$InventoryItemTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.inventoryItem,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$InventoryItemTableAnnotationComposer(
              $db: $db,
              $table: $db.inventoryItem,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PurchaseOrderTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PurchaseOrderTable,
    PurchaseOrderData,
    $$PurchaseOrderTableFilterComposer,
    $$PurchaseOrderTableOrderingComposer,
    $$PurchaseOrderTableAnnotationComposer,
    $$PurchaseOrderTableCreateCompanionBuilder,
    $$PurchaseOrderTableUpdateCompanionBuilder,
    (PurchaseOrderData, $$PurchaseOrderTableReferences),
    PurchaseOrderData,
    PrefetchHooks Function({bool itemId})> {
  $$PurchaseOrderTableTableManager(_$AppDatabase db, $PurchaseOrderTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PurchaseOrderTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PurchaseOrderTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PurchaseOrderTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<double> totalCost = const Value.absent(),
            Value<DateTime> orderDate = const Value.absent(),
            Value<int?> supplierId = const Value.absent(),
            Value<String?> status = const Value.absent(),
          }) =>
              PurchaseOrderCompanion(
            id: id,
            itemId: itemId,
            quantity: quantity,
            totalCost: totalCost,
            orderDate: orderDate,
            supplierId: supplierId,
            status: status,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int itemId,
            required int quantity,
            required double totalCost,
            Value<DateTime> orderDate = const Value.absent(),
            Value<int?> supplierId = const Value.absent(),
            Value<String?> status = const Value.absent(),
          }) =>
              PurchaseOrderCompanion.insert(
            id: id,
            itemId: itemId,
            quantity: quantity,
            totalCost: totalCost,
            orderDate: orderDate,
            supplierId: supplierId,
            status: status,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PurchaseOrderTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$PurchaseOrderTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$PurchaseOrderTableReferences._itemIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PurchaseOrderTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PurchaseOrderTable,
    PurchaseOrderData,
    $$PurchaseOrderTableFilterComposer,
    $$PurchaseOrderTableOrderingComposer,
    $$PurchaseOrderTableAnnotationComposer,
    $$PurchaseOrderTableCreateCompanionBuilder,
    $$PurchaseOrderTableUpdateCompanionBuilder,
    (PurchaseOrderData, $$PurchaseOrderTableReferences),
    PurchaseOrderData,
    PrefetchHooks Function({bool itemId})>;
typedef $$SupplierTableCreateCompanionBuilder = SupplierCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> contactPerson,
  Value<String?> phone,
  Value<String?> email,
});
typedef $$SupplierTableUpdateCompanionBuilder = SupplierCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> contactPerson,
  Value<String?> phone,
  Value<String?> email,
});

class $$SupplierTableFilterComposer
    extends Composer<_$AppDatabase, $SupplierTable> {
  $$SupplierTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactPerson => $composableBuilder(
      column: $table.contactPerson, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));
}

class $$SupplierTableOrderingComposer
    extends Composer<_$AppDatabase, $SupplierTable> {
  $$SupplierTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactPerson => $composableBuilder(
      column: $table.contactPerson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));
}

class $$SupplierTableAnnotationComposer
    extends Composer<_$AppDatabase, $SupplierTable> {
  $$SupplierTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get contactPerson => $composableBuilder(
      column: $table.contactPerson, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);
}

class $$SupplierTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SupplierTable,
    SupplierData,
    $$SupplierTableFilterComposer,
    $$SupplierTableOrderingComposer,
    $$SupplierTableAnnotationComposer,
    $$SupplierTableCreateCompanionBuilder,
    $$SupplierTableUpdateCompanionBuilder,
    (SupplierData, BaseReferences<_$AppDatabase, $SupplierTable, SupplierData>),
    SupplierData,
    PrefetchHooks Function()> {
  $$SupplierTableTableManager(_$AppDatabase db, $SupplierTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SupplierTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SupplierTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SupplierTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> contactPerson = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> email = const Value.absent(),
          }) =>
              SupplierCompanion(
            id: id,
            name: name,
            contactPerson: contactPerson,
            phone: phone,
            email: email,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> contactPerson = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> email = const Value.absent(),
          }) =>
              SupplierCompanion.insert(
            id: id,
            name: name,
            contactPerson: contactPerson,
            phone: phone,
            email: email,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SupplierTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SupplierTable,
    SupplierData,
    $$SupplierTableFilterComposer,
    $$SupplierTableOrderingComposer,
    $$SupplierTableAnnotationComposer,
    $$SupplierTableCreateCompanionBuilder,
    $$SupplierTableUpdateCompanionBuilder,
    (SupplierData, BaseReferences<_$AppDatabase, $SupplierTable, SupplierData>),
    SupplierData,
    PrefetchHooks Function()>;
typedef $$SettingTableCreateCompanionBuilder = SettingCompanion Function({
  Value<int> id,
  required String key,
  required String value,
  Value<String?> description,
});
typedef $$SettingTableUpdateCompanionBuilder = SettingCompanion Function({
  Value<int> id,
  Value<String> key,
  Value<String> value,
  Value<String?> description,
});

class $$SettingTableFilterComposer
    extends Composer<_$AppDatabase, $SettingTable> {
  $$SettingTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));
}

class $$SettingTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingTable> {
  $$SettingTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));
}

class $$SettingTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingTable> {
  $$SettingTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);
}

class $$SettingTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SettingTable,
    SettingData,
    $$SettingTableFilterComposer,
    $$SettingTableOrderingComposer,
    $$SettingTableAnnotationComposer,
    $$SettingTableCreateCompanionBuilder,
    $$SettingTableUpdateCompanionBuilder,
    (SettingData, BaseReferences<_$AppDatabase, $SettingTable, SettingData>),
    SettingData,
    PrefetchHooks Function()> {
  $$SettingTableTableManager(_$AppDatabase db, $SettingTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<String?> description = const Value.absent(),
          }) =>
              SettingCompanion(
            id: id,
            key: key,
            value: value,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String key,
            required String value,
            Value<String?> description = const Value.absent(),
          }) =>
              SettingCompanion.insert(
            id: id,
            key: key,
            value: value,
            description: description,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SettingTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SettingTable,
    SettingData,
    $$SettingTableFilterComposer,
    $$SettingTableOrderingComposer,
    $$SettingTableAnnotationComposer,
    $$SettingTableCreateCompanionBuilder,
    $$SettingTableUpdateCompanionBuilder,
    (SettingData, BaseReferences<_$AppDatabase, $SettingTable, SettingData>),
    SettingData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PersonTableTableManager get person =>
      $$PersonTableTableManager(_db, _db.person);
  $$GuardianTableTableManager get guardian =>
      $$GuardianTableTableManager(_db, _db.guardian);
  $$StudentTableTableManager get student =>
      $$StudentTableTableManager(_db, _db.student);
  $$TeacherTableTableManager get teacher =>
      $$TeacherTableTableManager(_db, _db.teacher);
  $$EmployeeTableTableManager get employee =>
      $$EmployeeTableTableManager(_db, _db.employee);
  $$RoleTableTableManager get role => $$RoleTableTableManager(_db, _db.role);
  $$PermissionTableTableManager get permission =>
      $$PermissionTableTableManager(_db, _db.permission);
  $$RolePermissionTableTableManager get rolePermission =>
      $$RolePermissionTableTableManager(_db, _db.rolePermission);
  $$UserAccountTableTableManager get userAccount =>
      $$UserAccountTableTableManager(_db, _db.userAccount);
  $$SubjectTableTableManager get subject =>
      $$SubjectTableTableManager(_db, _db.subject);
  $$ClassroomTableTableManager get classroom =>
      $$ClassroomTableTableManager(_db, _db.classroom);
  $$ClassScheduleTableTableManager get classSchedule =>
      $$ClassScheduleTableTableManager(_db, _db.classSchedule);
  $$ExamTableTableManager get exam => $$ExamTableTableManager(_db, _db.exam);
  $$GradeTableTableManager get grade =>
      $$GradeTableTableManager(_db, _db.grade);
  $$SectionAssignmentTableTableManager get sectionAssignment =>
      $$SectionAssignmentTableTableManager(_db, _db.sectionAssignment);
  $$AttendanceRecordTableTableManager get attendanceRecord =>
      $$AttendanceRecordTableTableManager(_db, _db.attendanceRecord);
  $$TuitionFeeTableTableManager get tuitionFee =>
      $$TuitionFeeTableTableManager(_db, _db.tuitionFee);
  $$ReceiptTableTableManager get receipt =>
      $$ReceiptTableTableManager(_db, _db.receipt);
  $$ExpenseTableTableManager get expense =>
      $$ExpenseTableTableManager(_db, _db.expense);
  $$PayrollTableTableManager get payroll =>
      $$PayrollTableTableManager(_db, _db.payroll);
  $$WalletTableTableManager get wallet =>
      $$WalletTableTableManager(_db, _db.wallet);
  $$WalletTransactionTableTableManager get walletTransaction =>
      $$WalletTransactionTableTableManager(_db, _db.walletTransaction);
  $$CanteenSaleTableTableManager get canteenSale =>
      $$CanteenSaleTableTableManager(_db, _db.canteenSale);
  $$CanteenProductTableTableManager get canteenProduct =>
      $$CanteenProductTableTableManager(_db, _db.canteenProduct);
  $$BookTableTableManager get book => $$BookTableTableManager(_db, _db.book);
  $$BorrowingRecordTableTableManager get borrowingRecord =>
      $$BorrowingRecordTableTableManager(_db, _db.borrowingRecord);
  $$InventoryItemTableTableManager get inventoryItem =>
      $$InventoryItemTableTableManager(_db, _db.inventoryItem);
  $$PurchaseOrderTableTableManager get purchaseOrder =>
      $$PurchaseOrderTableTableManager(_db, _db.purchaseOrder);
  $$SupplierTableTableManager get supplier =>
      $$SupplierTableTableManager(_db, _db.supplier);
  $$SettingTableTableManager get setting =>
      $$SettingTableTableManager(_db, _db.setting);
}
