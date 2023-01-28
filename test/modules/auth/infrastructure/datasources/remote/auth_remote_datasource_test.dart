import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meno_fe_v2/core/responses/auth_response.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_credentials_dto.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_remote_datasource_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
void main() {
  late MockDio mockDio;
  late AuthRemoteDatasource remote;

  setUp(() async {
    mockDio = MockDio();
    remote = AuthRemoteDatasource(mockDio, baseUrl: 'some url');
  });

  final tAuthResponse = AuthResponse(
    data: UserCredentialsDto(),
  );

  group('login', () {
    test(
      'should return [AuthResponse<UserCredentials>] when remote call successful',
      () async {
        when(remote.login(email: 'email', password: 'password'))
            .thenAnswer((_) async => tAuthResponse);

        final result = await remote.login(email: 'email', password: 'password');

        expect(result, equals(tAuthResponse));
      },
    );
  });
}
