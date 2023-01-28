// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:meno_fe_v2/core/value/value_objects.dart';
// import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';
// import 'package:meno_fe_v2/modules/auth/infrastructure/auth_facade.dart';
// import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart';
// import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart';
// import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';

// import 'auth_facade_test.mocks.dart';

// @GenerateNiceMocks([
//   MockSpec<AuthLocalDatasource>(),
//   MockSpec<AuthRemoteDatasource>(),
//   MockSpec<UserCredentialsMapper>(),
// ])
// void main() {
//   late MockAuthLocalDatasource mockLocal;
//   late MockAuthRemoteDatasource mockRemote;
//   late MockUserCredentialsMapper mockMapper;
//   late IAuthFacade facade;

//   setUp(() async {
//     mockLocal = MockAuthLocalDatasource();
//     mockRemote = MockAuthRemoteDatasource();
//     mockMapper = MockUserCredentialsMapper();
//     facade = AuthFacade(mockLocal, mockRemote, mockMapper);
//   });

//   final tEmail = IEmail('test@test.com');
//   final tPassword = IPassword('Rw0uePsW!');

//   group('Login', () {
//     test('should return [Right(Unit)] when login successful', () async {
//       when(facade.login(email: tEmail, password: tPassword))
//           .thenAnswer((_) async => right(unit));
//       final result = await facade.login(email: tEmail, password: tPassword);
//       expect(result, const TypeMatcher<Right>());
//     });
//   });
// }
