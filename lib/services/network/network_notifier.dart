import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:meno_fe_v2/di/injection.dart';

final networkProvider =
    StateNotifierProvider<NetworkNotifier, NetworkStatus>((ref) {
  return NetworkNotifier();
});

class NetworkNotifier extends StateNotifier<NetworkStatus> {
  NetworkNotifier() : super(NetworkStatus.connected) {
    di<InternetConnectionChecker>().onStatusChange.listen((event) {
      if (event == InternetConnectionStatus.connected) {
        state = NetworkStatus.connected;
      } else {
        state = NetworkStatus.disconnected;
      }
    });
  }

 
}

enum NetworkStatus { connected, disconnected, loading }
