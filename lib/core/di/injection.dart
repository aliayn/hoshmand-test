import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;
T inject<T extends Object>() => getIt.call();

@injectableInit
void configureDependencies(String env) => $initGetIt(getIt, environment: env);
