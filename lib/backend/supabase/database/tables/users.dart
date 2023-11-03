import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  double? get unlockedFunds => getField<double>('unlocked_funds');
  set unlockedFunds(double? value) => setField<double>('unlocked_funds', value);

  double? get lockedFunds => getField<double>('locked_funds');
  set lockedFunds(double? value) => setField<double>('locked_funds', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
