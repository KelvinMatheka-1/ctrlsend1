import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://niytofxymvautkwkjsqe.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
