import 'package:examy/feature/profile/domain/repos/profile_photo_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetProfilePhotoUseCase {
  final ProfilePhotoRepo _repo;

  GetProfilePhotoUseCase(this._repo);

  Future<String?> call(String userId) {
    return _repo.getPhotoPath(userId);
  }
}
