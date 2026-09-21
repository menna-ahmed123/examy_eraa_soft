import 'package:examy/core/base_response/base_response.dart';
import 'package:examy/feature/home/domain/entities/subject_entity.dart';
import 'package:examy/feature/home/domain/repos/explore_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetSubjectDetailsUseCase {
  GetSubjectDetailsUseCase(this._exploreRepo);

  final ExploreRepo _exploreRepo;

  Future<BaseResponse<SubjectEntity>> call(String subjectId) {
    return _exploreRepo.getSubjectDetails(subjectId);
  }
}
