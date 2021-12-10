import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/domain/usecases/get_all_bank_accouts.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import './locator_service.dart' as di;
import 'locator_service.dart';

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
          create: (context) => sl<SpacesHubBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          backgroundColor: background_black,
        ),
        home: SpacesHubPage(),
      ),
    );
  }
}
