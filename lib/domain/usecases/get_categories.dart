import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/core/utils/usecase.dart';
import 'package:getlinked_landing_page/domain/models/category.dart';
import 'package:getlinked_landing_page/domain/repositories/utility_repo.dart';

class GetCategoriesUsecase implements UseCase<List<Category>, NoParam> {
  final UtilityRepo _utilityRepo;

  GetCategoriesUsecase(this._utilityRepo);
  @override
  Future<DataState<List<Category>>> call(NoParam params) {
    return _utilityRepo.getCategories();
  }

}