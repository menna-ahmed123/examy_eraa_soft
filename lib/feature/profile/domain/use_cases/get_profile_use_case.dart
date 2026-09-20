import 'package:examy/config/base_response/base_response.dart';
import 'package:examy/feature/profile/domain/entities/profile_entity.dart';
import 'package:examy/feature/profile/domain/repos/profile_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetProfileUseCase {
  final ProfileRepo profileRepo;

  GetProfileUseCase({required this.profileRepo});

  Future <BaseResponse<ProfileEntity>> call(){
     return profileRepo.getProfile();
  }
}
