// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast_remote_datasource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _BroadcastRemoteDatasource implements BroadcastRemoteDatasource {
  _BroadcastRemoteDatasource(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BroadcastResponse<BroadcastDto?>> addBroadcastCoHost({
    required broadcastId,
    required cohostId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'cohostId': cohostId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BroadcastResponse<BroadcastDto>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts/${broadcastId}/co-hosts',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<BroadcastDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : BroadcastDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BroadcastResponse<BroadcastDto?>> createBroadcast({
    required title,
    description,
    timezone,
    cohosts,
    image,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'title',
      title,
    ));
    if (description != null) {
      _data.fields.add(MapEntry(
        'description',
        description,
      ));
    }
    if (timezone != null) {
      _data.fields.add(MapEntry(
        'timezone',
        timezone,
      ));
    }
    cohosts?.forEach((i) {
      _data.fields.add(MapEntry('cohosts', i));
    });
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
        _setStreamType<BroadcastResponse<BroadcastDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<BroadcastDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : BroadcastDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BroadcastResponse<BroadcastDto?>> deleteBroadcast(
      {required broadcastId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BroadcastResponse<BroadcastDto>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts/${broadcastId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<BroadcastDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : BroadcastDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BroadcastResponse<BroadcastDto?>> deleteBroadcastCoHost({
    required broadcastId,
    required cohostId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BroadcastResponse<BroadcastDto>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts/${broadcastId}/co-hosts/${cohostId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<BroadcastDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : BroadcastDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BroadcastResponse<BroadcastDto?>> editBroadcast({
    required broadcastId,
    title,
    description,
    timezone,
    image,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (title != null) {
      _data.fields.add(MapEntry(
        'title',
        title,
      ));
    }
    if (description != null) {
      _data.fields.add(MapEntry(
        'description',
        description,
      ));
    }
    if (timezone != null) {
      _data.fields.add(MapEntry(
        'timezone',
        timezone,
      ));
    }
    if (image != null) {
      _data.files.add(MapEntry(
        'image',
        MultipartFile.fromFileSync(
          image.path,
          filename: image.path.split(Platform.pathSeparator).last,
        ),
      ));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BroadcastResponse<BroadcastDto>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts/${broadcastId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<BroadcastDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : BroadcastDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BroadcastResponse<JoinBroadcastDataDto>> joinBroadcast(
      {required broadcastId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BroadcastResponse<JoinBroadcastDataDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts/${broadcastId}/join',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<JoinBroadcastDataDto>.fromJson(
      _result.data!,
      (json) => JoinBroadcastDataDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BroadcastResponse<BroadcastDto?>> startBroadcast(
      {required broadcastId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BroadcastResponse<BroadcastDto>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts/${broadcastId}/start',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<BroadcastDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : BroadcastDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BroadcastResponse<BroadcastListDataDto?>> getAllCurrentUserBroadcasts({
    required creatorId,
    include,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'creatorId': creatorId,
      r'include': include,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BroadcastResponse<BroadcastListDataDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<BroadcastListDataDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : BroadcastListDataDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BroadcastResponse<BroadcastListDataDto?>> getBroadcasts({
    status,
    include,
    gtEndTime,
    ltEndTime,
    eqEndTime,
    gtStartTime,
    ltStartTime,
    eqStartTime,
    creatorId,
    notCreatorId,
    orderBy,
    sortBy,
    onlySubscriptions,
    keywords,
    page,
    size,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'status': status,
      r'include': include,
      r'endTime[gt]': gtEndTime,
      r'endTime[lt]': ltEndTime,
      r'endTime[eq]': eqEndTime,
      r'startTime[gt]': gtStartTime,
      r'startTime[lt]': ltStartTime,
      r'startTime[eq]': eqStartTime,
      r'creatorId': creatorId,
      r'creatorId!': notCreatorId,
      r'orderBy': orderBy,
      r'sortBy': sortBy,
      r'onlySubscriptions': onlySubscriptions,
      r'keywords': keywords,
      r'page': page,
      r'size': size,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BroadcastResponse<BroadcastListDataDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/broadcasts/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BroadcastResponse<BroadcastListDataDto?>.fromJson(
      _result.data!,
      (json) => json == null
          ? null
          : BroadcastListDataDto.fromJson(json as Map<String, dynamic>),
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
