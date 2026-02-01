import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sharefile_method_channel.dart';

abstract class SharefilePlatform extends PlatformInterface {
  SharefilePlatform() : super(token: _token);

  static final Object _token = Object();

  static SharefilePlatform _instance = MethodChannelSharefile();

  static SharefilePlatform get instance => _instance;

  static set instance(SharefilePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> share({
    required String path,
    required String mime,
    String? targetPackage,
  }) {
    throw UnimplementedError('share() has not been implemented.');
  }
}
