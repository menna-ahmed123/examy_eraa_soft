import 'dart:io';

import 'package:examy/feature/profile/data/data_sources/local/profile_photo_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: ProfilePhotoLocalDataSource)
class ProfilePhotoLocalDataSourceImpl
    implements ProfilePhotoLocalDataSource {
  static const _keyPrefix = 'profile_photo_path_';

  String _key(String userId) => '$_keyPrefix$userId';

  @override
  Future<String?> getPhotoPath(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final path = prefs.getString(_key(userId));

    if (path == null || path.isEmpty) return null;
    if (!await File(path).exists()) return null;

    return path;
  }

  @override
  Future<String> savePhoto({
    required String userId,
    required File source,
  }) async {
    final directory = await getApplicationDocumentsDirectory();
    final destination = File('${directory.path}/profile_photo_$userId.jpg');

    await source.copy(destination.path);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key(userId), destination.path);

    return destination.path;
  }
}
