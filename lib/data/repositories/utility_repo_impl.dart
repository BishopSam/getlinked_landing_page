import 'dart:io';

import 'package:getlinked_landing_page/core/constants/endpoints.dart';
import 'package:getlinked_landing_page/core/constants/errors/exceptions.dart';
import 'package:getlinked_landing_page/core/network/api_helper.dart';
import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/domain/models/category.dart';
import 'package:getlinked_landing_page/domain/models/contact_model.dart';
import 'package:getlinked_landing_page/domain/models/register.dart';
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
      return DataState.error(((response.data as Map).values as List).first);
    } on ServerException catch (_) {
      return DataState.error("Something went wrong");
    } catch (e) {
      return DataState.error("Something went wrong");
    }
  }

  @override
  Future<DataState<List<Category>>> getCategories() async {
    try {
      final response = await _apiBaseHelper.get(EndPoints.categories);
      if (response.statusCode == HttpStatus.ok) {
        final List<Category> categoryList = [];
        for (var element in response.data) {
          final dto = Category.fromMap(element);
          categoryList.add(dto);
        }

        return DataState.completed(categoryList);
      }
      return DataState.error(((response.data as Map).values as List).first);
    } on ServerException catch (_) {
      return DataState.error("Something went wrong");
    } catch (e) {
      return DataState.error("Something went wrong");
    }
  }

  @override
  Future<DataState<void>> register(RegisterModel registerModel) async {
    try {
      final dto = registerModel.toMap();
      final response = await _apiBaseHelper.post(EndPoints.register, dto);
      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return DataState.completed(null);
      }
      return DataState.error(((response.data as Map).values as List).first);
    } on ServerException catch (_) {
      return DataState.error("Something went wrong");
    } catch (e) {
      return DataState.error("Something went wrong");
    }
  }
}
