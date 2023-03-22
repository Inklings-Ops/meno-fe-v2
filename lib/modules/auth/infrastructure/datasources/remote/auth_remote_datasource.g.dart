// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_remote_datasource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AuthRemoteDatasource implements AuthRemoteDatasource {
  _AuthRemoteDatasource(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AuthResponse<UserCredentialsDto?>> changePassword({
    required newPassword,
    required currentPassword,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'newPassword': newPassword,
      'currentPassword': currentPassword,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users/password/change',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto?>> forgotPassword(
      {required email}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'email': email};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users/password/forgot',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto>> googleSignIn(idToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'idToken': idToken};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users/signin/google',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto>.fromJson(
      _result.data!,
      (json) => UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto>> googleSignUp(idToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'idToken': idToken};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users/signup/google',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto>.fromJson(
      _result.data!,
      (json) => UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto>> login({
    required email,
    required password,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'email': email,
      'password': password,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users/signin',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto>.fromJson(
      _result.data!,
      (json) => UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto>> register({
    required fullName,
    bio,
    required email,
    required password,
    image,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'fullName',
      fullName,
    ));
    if (bio != null) {
      _data.fields.add(MapEntry(
        'bio',
        bio,
      ));
    }
    _data.fields.add(MapEntry(
      'email',
      email,
    ));
    _data.fields.add(MapEntry(
      'password',
      password,
    ));
    if (image != null) {
      _data.files.add(MapEntry(
        'image',
        MultipartFile.fromFileSync(
          image.path,
          filename: image.path.split(Platform.pathSeparator).last,
          contentType: MediaType.parse('image/png'),
        ),
      ));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/api/v1/users/signup',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto>.fromJson(
      _result.data!,
      (json) => UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto?>> requestOTP({
    required type,
    required email,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'type': type,
      'email': email,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users/otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto?>> resetPassword({
    required email,
    required code,
    required newPassword,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'email': email,
      'code': code,
      'newPassword': newPassword,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users/password/reset',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto?>> verify({
    required email,
    required code,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'email': email,
      'code': code,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users/email/verify',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<AuthResponse<UserCredentialsDto?>> delete() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthResponse<UserCredentialsDto>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/users',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponse<UserCredentialsDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : UserCredentialsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
