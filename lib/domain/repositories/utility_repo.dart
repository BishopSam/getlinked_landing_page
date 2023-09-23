import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/domain/models/category.dart';
import 'package:getlinked_landing_page/domain/models/contact_model.dart';
import 'package:getlinked_landing_page/domain/models/register.dart';


abstract class UtilityRepo {
  Future<DataState<void>> submitContactForm(Contact contactInfo);

  Future<DataState<List<Category>>> getCategories();

  Future<DataState<void>> register(RegisterModel registerModel);
}
