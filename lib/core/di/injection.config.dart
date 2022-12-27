// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../posts/application/api_service.dart' as _i6;
import '../../posts/application/database_service.dart' as _i10;
import '../../posts/application/repository_impl.dart' as _i12;
import '../../posts/data/provider/api/api_client.dart' as _i3;
import '../../posts/data/provider/api_provider.dart' as _i4;
import '../../posts/data/provider/database_provider.dart' as _i8;
import '../../posts/data/provider/db/dao/posts_dao.dart' as _i7;
import '../../posts/data/repository/api_repository.dart' as _i5;
import '../../posts/data/repository/database_repository.dart' as _i9;
import '../../posts/domain/repository/repository.dart' as _i11;
import '../../posts/domain/use_case/get_api_data_use_case.dart' as _i14;
import '../../posts/domain/use_case/get_db_data_use_case.dart' as _i15;
import '../../posts/domain/use_case/update_db_data_use_case.dart' as _i13;
import '../../posts/presentation/bloc/posts_bloc.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.PostDao>(() => _i7.PostDao());
  gh.lazySingleton<_i8.DatabaseProvider>(
      () => _i8.DatabaseProvider(get<_i7.PostDao>()));
  gh.lazySingleton<_i9.DataBaseRepository>(
      () => _i9.DataBaseRepository(get<_i8.DatabaseProvider>()));
  gh.lazySingleton<_i10.DatabaseService>(
      () => _i10.DatabaseService(get<_i9.DataBaseRepository>()));
  gh.lazySingleton<_i11.Repository>(() => _i12.RepositoryImpl(
        get<_i6.ApiService>(),
        get<_i10.DatabaseService>(),
      ));
  gh.lazySingleton<_i13.UpdateDBDataUseCase>(
      () => _i13.UpdateDBDataUseCase(get<_i11.Repository>()));
  gh.lazySingleton<_i14.GetApiDataUseCase>(
      () => _i14.GetApiDataUseCase(get<_i11.Repository>()));
  gh.lazySingleton<_i15.GetDBDataUseCase>(
      () => _i15.GetDBDataUseCase(get<_i11.Repository>()));
  gh.factory<_i16.PostsBloc>(() => _i16.PostsBloc(
        get<_i14.GetApiDataUseCase>(),
        get<_i15.GetDBDataUseCase>(),
        get<_i13.UpdateDBDataUseCase>(),
      ));
  return get;
}
