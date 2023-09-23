import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/core/utils/usecase.dart';
import 'package:getlinked_landing_page/domain/models/register.dart';
import 'package:getlinked_landing_page/domain/repositories/utility_repo.dart';

class RegisterUseCase implements UseCase<void, RegisterModel> {
  final UtilityRepo _utilityRepo;

  RegisterUseCase(this._utilityRepo);

  @override
  Future<DataState<void>> call(RegisterModel params) {
    return _utilityRepo.register(params);
  }
}
