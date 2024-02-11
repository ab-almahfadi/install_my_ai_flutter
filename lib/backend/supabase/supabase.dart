import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ecrdmwdvcectlcnjuedr.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVjcmRtd2R2Y2VjdGxjbmp1ZWRyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDUzMjczNDIsImV4cCI6MjAyMDkwMzM0Mn0.pdWmSHfh2YLpk_s9Y9nir9xO3Sek9XBA43FtR8Io4nU';

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
