import 'package:get_it/get_it.dart';
import 'package:offline_reboot/presentation/use_case/connect_to_database_use_case.dart';
import 'package:offline_reboot/presentation/use_case/get_chat_use_case.dart';

import 'api_service/ApiService.dart';
import 'domain/repository/apiRepositoryImpl.dart';
import 'domain/repository/api_repository.dart';


final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<ApiService>(ApiService());
  sl.registerLazySingleton<ApiRepository>(() => ApiRepositoryImpl(apiService: sl<ApiService>()));
  sl.registerLazySingleton<ConnectToDatabaseUseCase>(() => ConnectToDatabaseUseCase(apiRepository: sl<ApiRepository>()));
  sl.registerLazySingleton<GetChatUseCase>(() => GetChatUseCase(apiRepository: sl<ApiRepository>()));
}