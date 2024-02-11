import '../database.dart';

class UserTokenTable extends SupabaseTable<UserTokenRow> {
  @override
  String get tableName => 'userToken';

  @override
  UserTokenRow createRow(Map<String, dynamic> data) => UserTokenRow(data);
}

class UserTokenRow extends SupabaseDataRow {
  UserTokenRow(super.data);

  @override
  SupabaseTable get table => UserTokenTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get aWSAccessKey => getField<String>('AWSAccessKey');
  set aWSAccessKey(String? value) => setField<String>('AWSAccessKey', value);

  String? get aWSAccessSecretKey => getField<String>('AWSAccessSecretKey');
  set aWSAccessSecretKey(String? value) =>
      setField<String>('AWSAccessSecretKey', value);

  String? get token => getField<String>('Token');
  set token(String? value) => setField<String>('Token', value);
}
