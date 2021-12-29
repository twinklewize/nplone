// Packages
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:n_plus_one/features/auth/data/datasources/country_remote_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Core
import './core/platform/network_info.dart';

// Auth feature
import 'features/auth/data/datasources/auth_remote_datasource.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/register_user_usecase.dart';
import 'features/auth/domain/usecases/google_sign_in_usecase.dart';
import 'features/auth/domain/usecases/login_usecase.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/presentation/bloc/login_bloc/login_bloc.dart';
import 'features/bank_account_adding/data/repositories/bank_repository_impl.dart';
import 'features/bank_account_adding/data/datasources/bank_remote_datasource.dart';
import 'features/bank_account_adding/domain/repositories/bank_repository.dart';
import 'features/bank_account_adding/domain/usecases/get_all_banks.dart';
import 'features/bank_account_adding/presentation/bloc/bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'features/bank_account_adding/presentation/bloc/bank_list_bloc/bank_list_bloc.dart';
import 'features/spaces_hub/data/datasources/bank_accounts_local_datasource.dart';
import 'features/spaces_hub/data/datasources/bank_accounts_remote_datasource.dart';
import 'features/spaces_hub/data/repositories/bank_accounts_repository_impl.dart';
import 'features/spaces_hub/domain/repositories/bank_accounts_repository.dart';
import 'features/spaces_hub/domain/usecases/get_all_bank_accounts.dart';
import 'features/spaces_hub/presentation/bloc/spaces_hub_bloc/spaces_hub_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc - old
  sl.registerFactory(
    () => BankListBloc(getAllBanks: sl()),
  );
  sl.registerFactory(
    () => BankAccountAddingBloc(),
  );
  sl.registerFactory(
    () => SpacesHubBloc(loadUserBankAccounts: sl()),
  );

  // Bloc - new
  sl.registerFactory(
    () => LoginBloc(loginUsecase: sl()),
  );

  // UseCases - old
  sl.registerLazySingleton(() => LoadUserBankAccounts(sl()));
  sl.registerLazySingleton(() => GetAllBanks(sl()));

  // UseCases - Auth
  sl.registerLazySingleton(() => LoginUsecase(sl()));
  sl.registerLazySingleton(() => RegisterUserUsecase(sl()));
  sl.registerLazySingleton(() => GoogleSingInUsecase(sl()));

  // Repositories - old
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

  // Repositories - Auth
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // DataSources - old
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

  // DataSources - Auth
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );
  sl.registerLazySingleton<CountryRemoteDataSource>(
    () => CountryRemoteDataSourceImpl(),
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
