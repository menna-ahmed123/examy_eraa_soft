import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/profile/domain/entities/change_password_entity.dart';
import 'package:examy/feature/profile/domain/entities/change_password_params.dart';
import 'package:examy/feature/profile/domain/repos/profile_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ChangePasswordUseCase {
  const ChangePasswordUseCase( {required this.profileRepo});

  final ProfileRepo profileRepo;

  Future<BaseResponse<ChangePasswordEntity>> call(ChangePasswordParams params) {
    return profileRepo.changePassword(params);
  }
}
