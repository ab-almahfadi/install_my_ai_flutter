import '../database.dart';

class EC2InstanceTable extends SupabaseTable<EC2InstanceRow> {
  @override
  String get tableName => 'EC2Instance';

  @override
  EC2InstanceRow createRow(Map<String, dynamic> data) => EC2InstanceRow(data);
}

class EC2InstanceRow extends SupabaseDataRow {
  EC2InstanceRow(super.data);

  @override
  SupabaseTable get table => EC2InstanceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get owner => getField<String>('owner');
  set owner(String? value) => setField<String>('owner', value);

  String? get instanceName => getField<String>('InstanceName');
  set instanceName(String? value) => setField<String>('InstanceName', value);

  String? get instanceID => getField<String>('InstanceID');
  set instanceID(String? value) => setField<String>('InstanceID', value);

  String? get securityGroupID => getField<String>('SecurityGroupID');
  set securityGroupID(String? value) =>
      setField<String>('SecurityGroupID', value);

  int? get sSDSize => getField<int>('SSDSize');
  set sSDSize(int? value) => setField<int>('SSDSize', value);

  String? get modelUrl => getField<String>('ModelUrl');
  set modelUrl(String? value) => setField<String>('ModelUrl', value);

  String? get liveUrl => getField<String>('LiveUrl');
  set liveUrl(String? value) => setField<String>('LiveUrl', value);
}
