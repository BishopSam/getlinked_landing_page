import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/core/utils/usecase.dart';
import 'package:getlinked_landing_page/dependeincy_container.dart';
import 'package:getlinked_landing_page/domain/models/category.dart';
import 'package:getlinked_landing_page/domain/models/register.dart';
import 'package:getlinked_landing_page/domain/usecases/get_categories.dart';
import 'package:getlinked_landing_page/domain/usecases/register_usecase.dart';

final registerPageVmProvider =
    StateNotifierProvider<RegisterPageNotifier, DataState>((ref) {
  return RegisterPageNotifier(di(), di());
});

class RegisterPageNotifier extends StateNotifier<DataState> {
  RegisterPageNotifier(this._getCategoriesUsecase, this._registerUseCase)
      : super(DataState.completed(null));

  final GetCategoriesUsecase _getCategoriesUsecase;
  final RegisterUseCase _registerUseCase;

  Future<List<Category>?> getCategories() async {
    return (await _getCategoriesUsecase.call(NoParam())).data;
  }

  Future<void> register(
      {required String email,
      required String teamsName,
      required String projectTopic,
      required int phoneNumber,
      required int groupSize,
      required int category,
      required bool privacyPolicyAccepted}) async {
    state = DataState.loading("");
    final params = RegisterModel(
      email: email,
      category: category,
      teamsName: teamsName,
      projectTopic: projectTopic,
      phoneNumber: phoneNumber,
      groupSize: groupSize,
      privacyPolicyAccepted: privacyPolicyAccepted,
    );
    state = await _registerUseCase.call(params);
  }
}
