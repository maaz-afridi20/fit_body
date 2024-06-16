import 'package:local_auth/local_auth.dart';

Future<bool> get isDeviceSupportBioMetric =>
    LocalAuthentication().isDeviceSupported();

Future<List<BiometricType>> getAvailableBiometricTypes() =>
    LocalAuthentication().getAvailableBiometrics();

Future<bool> stopAuthentication() async =>
    LocalAuthentication().stopAuthentication();
