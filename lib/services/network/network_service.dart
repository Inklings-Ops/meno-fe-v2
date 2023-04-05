import 'package:internet_connection_checker/internet_connection_checker.dart';



class NetworkService {
  final internetConnectionChecker = InternetConnectionChecker();

  Future<bool> get isConnected async =>
      await internetConnectionChecker.hasConnection;
}


