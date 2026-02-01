import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sharefile_platform_interface.dart';

/// An implementation of [SharefilePlatform] that uses method channels.
class MethodChannelSharefile extends SharefilePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sharefile');

  @override
  Future<void> share({
    required String path,
    required String mime,
    String? targetPackage,
  }) async {
    await methodChannel.invokeMethod("share", {
      "path": path,
      "mime": mime,
      "package": targetPackage,
    });
  }
}
