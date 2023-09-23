import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/domain/models/contact_model.dart';


abstract class UtilityRepo {
  Future<DataState<void>> submitContactForm(Contact contactInfo);
}
