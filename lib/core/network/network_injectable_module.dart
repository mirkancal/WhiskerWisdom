import 'package:connectivity_checker/connectivity_checker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkInjectableModule {
  @lazySingleton
  ConnectivityWrapper get connectivityWrapper => ConnectivityWrapper.instance;
}
