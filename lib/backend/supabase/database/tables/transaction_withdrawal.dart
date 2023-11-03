import '../database.dart';

class TransactionWithdrawalTable
    extends SupabaseTable<TransactionWithdrawalRow> {
  @override
  String get tableName => 'transaction_withdrawal';

  @override
  TransactionWithdrawalRow createRow(Map<String, dynamic> data) =>
      TransactionWithdrawalRow(data);
}

class TransactionWithdrawalRow extends SupabaseDataRow {
  TransactionWithdrawalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionWithdrawalTable();

  String? get transactionId => getField<String>('transaction_id');
  set transactionId(String? value) => setField<String>('transaction_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get totalWithdrawnAmount =>
      getField<double>('total_withdrawn_amount');
  set totalWithdrawnAmount(double? value) =>
      setField<double>('total_withdrawn_amount', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
