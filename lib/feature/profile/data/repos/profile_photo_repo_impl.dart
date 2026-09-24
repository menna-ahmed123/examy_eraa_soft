import 'dart:io';

import 'package:examy/feature/profile/data/data_sources/local/profile_photo_local_data_source.dart';
import 'package:examy/feature/profile/domain/repos/profile_photo_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfilePhotoRepo)
class ProfilePhotoRepoImpl implements ProfilePhotoRepo {
  ProfilePhotoRepoImpl({required this.localDataSource});

  final ProfilePhotoLocalDataSource localDataSource;

  @override
  Future<String?> getPhotoPath(String userId) {
    return localDataSource.getPhotoPath(userId);
  }

  @override
  Future<String> savePhoto({required String userId, required File source}) {
    return localDataSource.savePhoto(userId: userId, source: source);
  }
}
