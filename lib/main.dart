// Flutter & Dart
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/features/auth/presentation/bloc/google_signin_bloc/google_signin_bloc.dart';
import './locator_service.dart' as di;

// Localization
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/localization/generated/l10n.dart';

// Ui Kit
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';

// Bloc
import 'package:n_plus_one/features/auth/presentation/bloc/register_bloc/register_bloc.dart';
import 'features/auth/presentation/bloc/country_list_bloc/country_list_bloc.dart';
import 'features/bank_account_adding/presentation/bloc/bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'features/bank_account_adding/presentation/bloc/bank_list_bloc/bank_list_bloc.dart';
import 'features/spaces_hub/presentation/bloc/spaces_hub_bloc/spaces_hub_bloc.dart';

// Pages
import 'features/spaces_hub/presentation/pages/single_space/tabs/private_zone/tabs/private_zone_history/pages/transaction_details_page.dart';
import 'features/spaces_hub/presentation/pages/single_space/tabs/shared_zone/tabs/shared_zone_access/pages/admin_edit_page.dart';
import 'features/spaces_hub/presentation/pages/single_space/tabs/shared_zone/tabs/shared_zone_access/pages/admins_and_participants/admins_and_participants_page.dart';
import 'features/spaces_hub/presentation/pages/single_space/tabs/shared_zone/tabs/shared_zone_access/pages/closed_group_rights_page.dart';
import 'features/spaces_hub/presentation/pages/single_space/tabs/shared_zone/tabs/shared_zone_page/tabs/news/pages/actions_page.dart';
import 'features/spaces_hub/presentation/pages/space_creation_page.dart';
import 'features/spaces_hub/presentation/pages/spaces_hub_page.dart';
import 'features/auth/presentation/pages/start_page.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'features/auth/presentation/pages/register_page.dart';
import 'features/auth/presentation/pages/country_choosing_page.dart';
import 'features/onboarding/presentation/pages/onboarding_page.dart';
import 'features/bank_account_adding/presentation/pages/successfull_page.dart';
import 'features/bank_account_adding/presentation/pages/bank_account_adding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Old Bloc
        BlocProvider<SpacesHubBloc>(
            create: (context) => di.sl<SpacesHubBloc>()),
        BlocProvider<BankListBloc>(create: (context) => di.sl<BankListBloc>()),
        BlocProvider<BankAccountAddingBloc>(
            create: (context) => di.sl<BankAccountAddingBloc>()),

        // Auth Bloc
        BlocProvider<CountryListBloc>(
            create: (context) => di.sl<CountryListBloc>()),
        BlocProvider<RegisterBloc>(create: (context) => di.sl<RegisterBloc>()),
        BlocProvider<GoogleSigninBloc>(
            create: (context) => di.sl<GoogleSigninBloc>()),
      ],

      // App
      child: MaterialApp(
        title: 'N + 1',
        debugShowCheckedModeBanner: false,

        // Theme
        theme: ThemeData.dark().copyWith(
          backgroundColor: AppColors.gray1,
          scaffoldBackgroundColor: AppColors.gray1,
        ),

        // Localization
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],

        // Routes
        home: StartPage(),
        routes: {
          LoginPage.routeName: (ctx) => LoginPage(),
          RegisterPage.routeName: (ctx) => RegisterPage(),
          OnboardingPage.routeName: (ctx) => OnboardingPage(),
          BankAccountAddingPage.routeName: (ctx) => BankAccountAddingPage(),
          SuccessfullPage.routeName: (ctx) => SuccessfullPage(),
          SpacesHubPage.routeName: (ctx) => SpacesHubPage(),
          SpaceCreationPage.routeName: (ctx) => SpaceCreationPage(),
          TransactionDetailsPage.routeName: (ctx) => TransactionDetailsPage(),
          ActionsPage.routeName: (ctx) => ActionsPage(),
          ClosedGroupRightsPage.routeName: (ctx) => ClosedGroupRightsPage(),
          AdminsAndParticipantsPage.routeName: (ctx) =>
              AdminsAndParticipantsPage(),
          AdminEditPage.routeName: (ctx) => AdminEditPage(),
          CountryChoosingPage.routeName: (ctx) => CountryChoosingPage(),
        },
      ),
    );
  }
}
