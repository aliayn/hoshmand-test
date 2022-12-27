// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../posts/application/api_service.dart' as _i6;
import '../../posts/application/repository_impl.dart' as _i8;
import '../../posts/data/provider/api/api_client.dart' as _i3;
import '../../posts/data/provider/api_provider.dart' as _i4;
import '../../posts/data/repository/api_repository.dart' as _i5;
import '../../posts/domain/repository/repository.dart' as _i7;
import '../../posts/domain/use_case/get_api_data_use_case.dart' as _i10;
import '../../posts/domain/use_case/get_db_data_use_case.dart' as _i11;
import '../../posts/domain/use_case/update_db_data_use_case.dart' as _i9;
import '../../posts/presentation/bloc/posts_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.ApiClient>(() => _i3.ApiClient());
  gh.lazySingleton<_i4.ApiProvider>(
      () => _i4.ApiProvider(get<_i3.ApiClient>()));
  gh.lazySingleton<_i5.ApiRepository>(
      () => _i5.ApiRepository(get<_i4.ApiProvider>()));
  gh.lazySingleton<_i6.ApiService>(
      () => _i6.ApiService(get<_i5.ApiRepository>()));
  gh.lazySingleton<_i7.Repository>(
      () => _i8.RepositoryImpl(get<_i6.ApiService>()));
  gh.lazySingleton<_i9.UpdateDBDataUseCase>(
      () => _i9.UpdateDBDataUseCase(get<_i7.Repository>()));
  gh.lazySingleton<_i10.GetApiDataUseCase>(
      () => _i10.GetApiDataUseCase(get<_i7.Repository>()));
  gh.lazySingleton<_i11.GetDBDataUseCase>(
      () => _i11.GetDBDataUseCase(get<_i7.Repository>()));
  gh.factory<_i12.PostsBloc>(() => _i12.PostsBloc(
        get<_i10.GetApiDataUseCase>(),
        get<_i11.GetDBDataUseCase>(),
        get<_i9.UpdateDBDataUseCase>(),
      ));
  return get;
}
