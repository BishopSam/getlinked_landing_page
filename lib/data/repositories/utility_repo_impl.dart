import 'dart:io';

import 'package:getlinked_landing_page/core/constants/endpoints.dart';
import 'package:getlinked_landing_page/core/constants/errors/exceptions.dart';
import 'package:getlinked_landing_page/core/network/api_helper.dart';
import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/domain/models/contact_model.dart';
import 'package:getlinked_landing_page/domain/repositories/utility_repo.dart';

class UtilityRepoImpl extends UtilityRepo {
  final ApiBaseHelper _apiBaseHelper;

  UtilityRepoImpl(this._apiBaseHelper);

  @override
  Future<DataState<void>> submitContactForm(Contact contactInfo) async {
    try {
      final dto = contactInfo.toMap();
      final response = await _apiBaseHelper.post(EndPoints.contactForm, dto);
      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return DataState.completed(null);
      }
      return DataState.error((response.data["email"] as List).first);
    } on ServerException catch (e) {
      return DataState.error(e.message);
    } catch (e) {
      return DataState.error(e.toString());
    }
  }
}
