import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

import 'config/constant_config.dart';
import 'core/data/local/global_storage.dart';
import 'core/network/dio_client.dart';
import 'core/network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc

  // sl.registerFactory(() => HomepageBloc(homepage: sl()));
  //
  // // Use Case
  // sl.registerLazySingleton(() => Login(loginRepository: sl()));
  //
  // // Repository
  // sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(loginDataSource: sl(), verifyDataSource: sl(), networkInfo: NetworkInfoImpl()));
  //
  // // Data Source
  // sl.registerLazySingleton<LoginDataSource>(() => LoginDataSourceImpl(baseUrl: FlavorConfig.instance!.values.baseUrl));

  sl.registerLazySingleton(() => ConstantConfig());
  sl.registerLazySingleton(() => NetworkInfoImpl());
  sl.registerLazySingleton(() => GlobalStorage(GetStorage()));
  sl.registerLazySingleton(() => DioClient(Dio()));
}
