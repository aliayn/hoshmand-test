// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../posts/domain/repository/repository.dart' as _i4;
import '../../posts/domain/use_case/get_api_data_use_case.dart' as _i3;
import '../../posts/domain/use_case/get_db_data_use_case.dart' as _i5;
import '../../posts/domain/use_case/update_db_data_use_case.dart' as _i6;
import '../../posts/presentation/bloc/posts_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.GetApiDataUseCase>(
      () => _i3.GetApiDataUseCase(get<_i4.Repository>()));
  gh.lazySingleton<_i5.GetDBDataUseCase>(
      () => _i5.GetDBDataUseCase(get<_i4.Repository>()));
  gh.lazySingleton<_i6.UpdateDBDataUseCase>(
      () => _i6.UpdateDBDataUseCase(get<_i4.Repository>()));
  gh.factory<_i7.PostsBloc>(() => _i7.PostsBloc(
        get<_i3.GetApiDataUseCase>(),
        get<_i5.GetDBDataUseCase>(),
        get<_i6.UpdateDBDataUseCase>(),
      ));
  return get;
}
