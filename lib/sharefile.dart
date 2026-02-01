import 'sharefile_platform_interface.dart';

class Sharefile {
  Future<void> share({
    required String path,
    required String mime,
    String? targetPackage,
  }) {
    return SharefilePlatform.instance.share(
      path: path,
      mime: mime,
      targetPackage: targetPackage,
    );
  }
}
