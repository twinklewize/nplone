import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import './core/platform/network_info.dart';
import './data/datasources/bank_accounts_local_datasource.dart';
import './data/datasources/bank_accounts_remote_datasource.dart';
import './data/repositories/bank_accouts_repository_impl.dart';
import './domain/repositories/bank_accouts_repository.dart';
import './domain/usecases/get_all_bank_accouts.dart';
import './presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC
  sl.registerFactory(
    () => SpacesHubBloc(loadUserBankAccounts: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => LoadUserBankAccounts(sl()));

  // Repository
  sl.registerLazySingleton<BankAccountsRepository>(
    () => BankAccountsRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<BankAccountsRemoteDataSource>(
    () => BankAccountsRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  sl.registerLazySingleton<BankAccountsLocalDataSource>(
    () => BankAccountsLocalDataSourceImpl(sharedPreferences: sl()),
  );

  // Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(sl()),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
