import '../database.dart';

class WithdrawRequestTable extends SupabaseTable<WithdrawRequestRow> {
  @override
  String get tableName => 'withdraw_request';

  @override
  WithdrawRequestRow createRow(Map<String, dynamic> data) =>
      WithdrawRequestRow(data);
}

class WithdrawRequestRow extends SupabaseDataRow {
  WithdrawRequestRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WithdrawRequestTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get senderId => getField<String>('sender_id')!;
  set senderId(String value) => setField<String>('sender_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  bool? get processed => getField<bool>('processed');
  set processed(bool? value) => setField<bool>('processed', value);

  String? get transactionId => getField<String>('transaction_id');
  set transactionId(String? value) => setField<String>('transaction_id', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);
}
