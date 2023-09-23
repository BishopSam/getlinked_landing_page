import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/core/utils/usecase.dart';
import 'package:getlinked_landing_page/domain/models/contact_model.dart';

import 'package:getlinked_landing_page/domain/repositories/utility_repo.dart';

class PostContactInfo implements UseCase<void, Contact> {
  final UtilityRepo _utilityRepo;

  PostContactInfo(this._utilityRepo);

  @override
  Future<DataState<void>> call(Contact params) {
    return _utilityRepo.submitContactForm(params);
  }

}