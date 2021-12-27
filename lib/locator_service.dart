// Packages
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:n_plus_one/data/datasources/new_datasources/auth_remote_datasource.dart';
import 'package:n_plus_one/presentation/features/authentication/bloc/login_bloc/login_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Core
import './core/platform/network_info.dart';

// Repositories impl
import 'data/repositories/old_repositories/bank_repository_impl.dart';
import 'data/repositories/old_repositories/bank_accounts_repository_impl.dart';
import 'data/repositories/new_repositories/auth_repository_impl.dart';

// Repositories contract
import 'domain/repositories/old_repositories/bank_accounts_repository.dart';
import 'domain/repositories/old_repositories/bank_repository.dart';
import 'domain/repositories/new_repositories/auth_repository.dart';

// Datasources
import 'data/datasources/old_datasources/bank_remote_datasource.dart';
import 'data/datasources/old_datasources/bank_accounts_local_datasource.dart';
import 'data/datasources/old_datasources/bank_accounts_remote_datasource.dart';

// Usecases
import 'domain/usecases/old_usecases/get_all_banks.dart';
import 'domain/usecases/old_usecases/get_all_bank_accounts.dart';
import 'domain/usecases/new_usecases/auth_usecases/register_user_usecase.dart';
import 'domain/usecases/new_usecases/auth_usecases/google_sign_in_usecase.dart';
import 'domain/usecases/new_usecases/auth_usecases/login_usecase.dart';

// Bloc
import 'presentation/features/bank_account_adding/bloc/bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'presentation/features/bank_account_adding/bloc/bank_list_bloc/bank_list_bloc.dart';
import 'presentation/features/spaces_hub/bloc/spaces_hub_bloc/spaces_hub_bloc.dart';

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

  // UseCases - new
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

  // DataSources - new
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );

  // Repositories - new
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
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
