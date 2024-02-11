import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start InstalMyAIAPI Group Code

class InstalMyAIAPIGroup {
  static String baseUrl = 'https://installmyai.meem.biz/api/users/';
  static Map<String, String> headers = {};
  static CreateInstanceCall createInstanceCall = CreateInstanceCall();
  static TestCall testCall = TestCall();
  static LoginCall loginCall = LoginCall();
  static RegisterCall registerCall = RegisterCall();
}

class CreateInstanceCall {
  Future<ApiCallResponse> call({
    String? modelUrl = '',
    String? ssdSize = '',
    String? aWSAccessKey = '',
    String? aWSAccessSecretKey = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model_url": "$modelUrl",
  "ssd_size": "$ssdSize",
  "AWSAccessKeyId": "$aWSAccessKey",
  "AWSSecretKey": "$aWSAccessSecretKey"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createInstance',
      apiUrl: '${InstalMyAIAPIGroup.baseUrl}create_instance/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? a2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance_details.live_url''',
      ));
  List? a3a4(dynamic response) => getJsonField(
        response,
        r'''$.instance_details.cmd_output''',
        true,
      ) as List?;
  dynamic a5(dynamic response) => getJsonField(
        response,
        r'''$.instance_details''',
      );
  String? a6(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? a7(dynamic response) => getJsonField(
        response,
        r'''$.instances''',
        true,
      ) as List?;
  List<int>? a8(dynamic response) => (getJsonField(
        response,
        r'''$.instances[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? a9(dynamic response) => (getJsonField(
        response,
        r'''$.instances[:].instance_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? a10(dynamic response) => (getJsonField(
        response,
        r'''$.instances[:].instance_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? a11(dynamic response) => (getJsonField(
        response,
        r'''$.instances[:].security_group_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? a12(dynamic response) => (getJsonField(
        response,
        r'''$.instances[:].ssd_size''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? a13(dynamic response) => (getJsonField(
        response,
        r'''$.instances[:].model_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? a14(dynamic response) => (getJsonField(
        response,
        r'''$.instances[:].owner''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? a15(dynamic response) => (getJsonField(
        response,
        r'''$.instances[:].live_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? a16(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class TestCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: '${InstalMyAIAPIGroup.baseUrl}protected/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${InstalMyAIAPIGroup.baseUrl}token/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? password = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "first_name": "$firstName",
  "last_name": "$lastName",
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'register',
      apiUrl: '${InstalMyAIAPIGroup.baseUrl}register/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End InstalMyAIAPI Group Code

class CreateInstancesCall {
  static Future<ApiCallResponse> call({
    String? modelUrl = '',
    String? ssdSize = '',
    String? aWSAccessKey = '',
    String? aWSSecretKey = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model_url": "$modelUrl",
  "ssd_size": "$ssdSize",
  "AWSAccessKeyId": "$aWSAccessKey",
  "AWSSecretKey": "$aWSSecretKey"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createInstances',
      apiUrl: 'https://installmyai.meem.biz/api/users/create_instance/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
