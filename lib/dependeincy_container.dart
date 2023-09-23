import 'package:get_it/get_it.dart';
import 'package:getlinked_landing_page/core/network/api_helper.dart';
import 'package:getlinked_landing_page/data/repositories/utility_repo_impl.dart';
import 'package:getlinked_landing_page/domain/repositories/utility_repo.dart';
import 'package:getlinked_landing_page/domain/usecases/get_categories.dart';
import 'package:getlinked_landing_page/domain/usecases/post_contact_info.dart';
import 'package:getlinked_landing_page/domain/usecases/register_usecase.dart';

final di = GetIt.instance;

void initDependencies() {
di.registerFactory(() => ApiBaseHelper());
di.registerSingleton<UtilityRepo>(UtilityRepoImpl(di()));
di.registerFactory(() => PostContactInfo(di()));
di.registerFactory(() => GetCategoriesUsecase(di()));
di.registerFactory(() => RegisterUseCase(di()));
}

