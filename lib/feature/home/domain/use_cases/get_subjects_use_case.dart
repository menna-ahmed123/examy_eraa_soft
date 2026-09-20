import 'package:examy/config/base_response/base_response.dart';
import 'package:examy/feature/home/domain/repos/explore_repo.dart';
import 'package:injectable/injectable.dart';
import '../entities/subjects_entity.dart';

@Injectable()
class GetSubjectsUseCase {
  final ExploreRepo _exploreRepo;

  GetSubjectsUseCase(this._exploreRepo);

  Future<BaseResponse<SubjectsEntity>> call({int? page, int? limit}) {
    return _exploreRepo.getSubjects(page: page, limit: limit);
  }
}
