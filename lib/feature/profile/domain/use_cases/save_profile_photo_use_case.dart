import 'dart:io';

import 'package:examy/feature/profile/domain/repos/profile_photo_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SaveProfilePhotoUseCase {
  final ProfilePhotoRepo _repo;

  SaveProfilePhotoUseCase(this._repo);

  Future<String> call({required String userId, required File source}) {
    return _repo.savePhoto(userId: userId, source: source);
  }
}
