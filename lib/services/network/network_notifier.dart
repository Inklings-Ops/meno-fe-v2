import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:meno_fe_v2/di/injection.dart';

final networkProvider =
    StateNotifierProvider<NetworkNotifier, NetworkStatus>((ref) {
  return NetworkNotifier();
});

class NetworkNotifier extends StateNotifier<NetworkStatus> {
  NetworkNotifier() : super(NetworkStatus.disconnected) {
    di<InternetConnectionChecker>().onStatusChange.listen((event) {
      if (event == InternetConnectionStatus.connected) {
        state = NetworkStatus.connected;
      } else {
        state = NetworkStatus.disconnected;
      }
    });
  }

  Future<void> checkConnection() async {
    state = NetworkStatus.loading;
    Future.delayed(const Duration(seconds: 3));
    final hasConn = await di<InternetConnectionChecker>().hasConnection;
    if (hasConn) {
      state = NetworkStatus.connected;
    } else {
      state = NetworkStatus.disconnected;
    }
  }
}

enum NetworkStatus { connected, disconnected, loading }
