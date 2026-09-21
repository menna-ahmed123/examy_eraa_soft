import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/profile/domain/entities/profile_entity.dart';
import 'package:examy/feature/profile/domain/entities/update_profile_params.dart';
import 'package:examy/feature/profile/domain/repos/profile_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UpdateProfileUseCase {
  final ProfileRepo profileRepo;

  UpdateProfileUseCase({required this.profileRepo});

  Future<BaseResponse<ProfileEntity>> call({
    required UpdateProfileParams params,
  }) {
    return profileRepo.updateProfile(params: params);
  }
}
