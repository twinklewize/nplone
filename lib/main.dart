import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './locator_service.dart' as di;
import 'presentation/features/spaces_hub/pages/single_space/tabs/shared_zone/tabs/shared_zone_page/tabs/news/pages/actions_page.dart';
import 'presentation/features/spaces_hub/pages/single_space/tabs/shared_zone/tabs/shared_zone_access/pages/admins_and_participants/admins_and_participants_page.dart';
import 'presentation/ui_kit/constants/colors.dart';
import 'presentation/features/authentication/pages/start_page.dart';
import 'presentation/features/authentication/pages/login_page.dart';
import 'presentation/features/authentication/pages/signup_page.dart';
import 'presentation/features/onboarding/pages/onboarding_page.dart';
import 'presentation/features/bank_account_adding/bloc/bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'presentation/features/bank_account_adding/bloc/bank_list_bloc/bank_list_bloc.dart';
import 'presentation/features/bank_account_adding/pages/bank_account_adding_page.dart';
import 'presentation/features/bank_account_adding/pages/successfull_page.dart';
import 'presentation/features/spaces_hub/bloc/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'presentation/features/spaces_hub/pages/spaces_hub_page.dart';
import 'presentation/features/spaces_hub/pages/space_creation_page.dart';
import 'presentation/features/spaces_hub/pages/single_space/tabs/private_zone/tabs/private_zone_history/pages/transaction_details_page.dart';
import 'presentation/features/spaces_hub/pages/single_space/tabs/shared_zone/tabs/shared_zone_access/pages/admin_edit_page.dart';
import 'presentation/features/spaces_hub/pages/single_space/tabs/shared_zone/tabs/shared_zone_access/pages/closed_group_rights_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SpacesHubBloc>(
          create: (context) => di.sl<SpacesHubBloc>(),
        ),
        BlocProvider<BankListBloc>(create: (context) => di.sl<BankListBloc>()),
        BlocProvider<BankAccountAddingBloc>(
            create: (context) => di.sl<BankAccountAddingBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'N + 1',
        theme: ThemeData.dark().copyWith(
          backgroundColor: AppColors.gray1,
          scaffoldBackgroundColor: AppColors.gray1,
        ),
        home: StartPage(),
        routes: {
          LoginPage.routeName: (ctx) => LoginPage(),
          SignupPage.routeName: (ctx) => SignupPage(),
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
        },
      ),
    );
  }
}
