import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bloc/bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bloc/bank_account_adding_bloc/bank_account_adding_bloc_states.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/dropdown_list.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

import '../widgets/modal_bottom_sheet.dart';

class CountryChoosingPage extends StatelessWidget {
  static const routeName = '/country-choosing';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: appBar(context),
      body: SafeArea(
        child: BlocBuilder<BankAccountAddingBloc, BankAccountAddingState>(
            builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 131,
                width: 131,
                child: Image.asset('assets/images/country_choosing_image.png'),
              ),
              const SizedBox(height: 24),
              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Before you continue choose your country',
                  style: AppTextStyles.bold32pt,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 34),

              // Drop Down List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    state is BankAccountAddingChoosenState
                        ? DropdownList(
                            defaultText: 'Select Country',
                            text: state.bank.name,
                            imageURL: state.bank.imageUrl,
                            onTap: () =>
                                customShowModalBottomSheet(context, mediaQuery),
                          )
                        : DropdownList(
                            defaultText: 'Select Country',
                            onTap: () =>
                                customShowModalBottomSheet(context, mediaQuery),
                          ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),

              const Spacer(),

              // Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'The registration process may differ from the choice of the country.',
                  style: AppTextStyles.regular14pt.copyWith(
                    color: AppColors.gray3rd,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Continue Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: LongFilledButton(
                  buttonColor: state is BankAccountAddingChoosenState
                      ? AppColors.blue
                      : AppColors.blue.withOpacity(0.4),
                  child: Text(
                    "Continue",
                    style: state is BankAccountAddingChoosenState
                        ? AppTextStyles.bold20pt
                        : AppTextStyles.bold20pt
                            .copyWith(color: AppColors.white.withOpacity(0.4)),
                  ),
                  onPressed: state is BankAccountAddingChoosenState
                      ? () {
                          Navigator.pushNamed(
                            context,
                            '/bank-account-adding-success',
                          );
                        }
                      : () {},
                ),
              ),
              const SizedBox(height: 24),
            ],
          );
        }),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: AppColors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: AppColors.gray1,
      elevation: 0,
    );
  }
}
