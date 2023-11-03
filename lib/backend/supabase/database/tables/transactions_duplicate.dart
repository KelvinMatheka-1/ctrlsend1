import '../database.dart';

class TransactionsDuplicateTable
    extends SupabaseTable<TransactionsDuplicateRow> {
  @override
  String get tableName => 'transactions_duplicate';

  @override
  TransactionsDuplicateRow createRow(Map<String, dynamic> data) =>
      TransactionsDuplicateRow(data);
}

class TransactionsDuplicateRow extends SupabaseDataRow {
  TransactionsDuplicateRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionsDuplicateTable();

  String get senderId => getField<String>('sender_id')!;
  set senderId(String value) => setField<String>('sender_id', value);

  String? get recipientId => getField<String>('recipient_id');
  set recipientId(String? value) => setField<String>('recipient_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  String get transactionType => getField<String>('transaction_type')!;
  set transactionType(String value) =>
      setField<String>('transaction_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get senderEmail => getField<String>('sender_email');
  set senderEmail(String? value) => setField<String>('sender_email', value);

  String? get recipientEmail => getField<String>('recipient_email');
  set recipientEmail(String? value) =>
      setField<String>('recipient_email', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
