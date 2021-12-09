import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/locator_sevice.dart' as di;
import 'package:n_plus_one/presentation/features/bank_account_adding/bank_list_bloc/bank_list_bloc.dart';
import 'package:n_plus_one/presentation/features/onboarding/onboarding_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'locator_sevice.dart';
import 'presentation/features/bank_account_adding/bank_account_adding_bloc/bank_account_adding_bloc.dart';

void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BankListBloc>(create: (context) => sl<BankListBloc>()),
        BlocProvider<BankAccountAddingBloc>(
            create: (context) => sl<BankAccountAddingBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          backgroundColor: background_black,
          scaffoldBackgroundColor: background_black,
        ),
        // home: StartPage(),
        home: OnboardingPage(),
      ),
    );
  }
}
