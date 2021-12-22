import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:n_plus_one/data/repositories/bank_accounts_repository_impl.dart';
import 'package:n_plus_one/domain/repositories/bank_accounts_repository.dart';
import 'package:n_plus_one/domain/repositories/bank_repository.dart';
import 'package:n_plus_one/domain/usecases/get_all_banks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './core/platform/network_info.dart';
import './data/datasources/bank_accounts_local_datasource.dart';
import './data/datasources/bank_accounts_remote_datasource.dart';
import './domain/usecases/get_all_bank_accouts.dart';
import 'package:http/http.dart' as http;

import 'data/datasources/bank_remote_datasource.dart';
import 'data/repositories/bank_repository_impl.dart';
import 'presentation/features/bank_account_adding/bloc/bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'presentation/features/bank_account_adding/bloc/bank_list_bloc/bank_list_bloc.dart';
import 'presentation/features/spaces_hub/bloc/spaces_hub_bloc/spaces_hub_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => BankListBloc(getAllBanks: sl()),
  );
  sl.registerFactory(
    () => BankAccountAddingBloc(),
  );
  sl.registerFactory(
    () => SpacesHubBloc(loadUserBankAccounts: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => LoadUserBankAccounts(sl()));
  sl.registerLazySingleton(() => GetAllBanks(sl()));

  // Repository
  sl.registerLazySingleton<BankAccountsRepository>(
    () => BankAccountsRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<BankRepository>(
    () => BankRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<BankRemoteDataSource>(
    () => BankRemoteDataSourceImpl(
      client: sl(),
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
