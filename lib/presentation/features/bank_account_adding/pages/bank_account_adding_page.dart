import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bloc/bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bloc/bank_account_adding_bloc/bank_account_adding_bloc_states.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bloc/bank_account_adding_bloc/bank_account_adding_event.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

import '../widgets/container_with_checkbox.dart';
import '../widgets/dropdown_list.dart';
import '../widgets/modal_bottom_sheet.dart';

class BankAccountAddingPage extends StatelessWidget {
  static const routeName = '/bank-account-adding';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Create new bank account',
                  style: AppTextStyles.bold24pt,
                ),
              ),
              const SizedBox(height: 24),

              // Drop Down List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank',
                      style: AppTextStyles.regular16pt,
                    ),
                    const SizedBox(height: 4),
                    InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onTap: () {
                        customShowModalBottomSheet(context, mediaQuery);
                      },
                      child: state is BankAccountAddingChoosenState
                          ? DropdownList(
                              text: state.bank.name,
                              imageURL: state.bank.imageUrl,
                            )
                          : DropdownList(),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Private Checkbox
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onTap: () {
                    BlocProvider.of<BankAccountAddingBloc>(context,
                        listen: false)
                      ..add(BankAccountAddingPrivateEvent());
                  },
                  child: ContainerWithCheckbox(
                      check: state.props[0] as bool, text: 'Private'),
                ),
              ),
              const SizedBox(height: 8),

              // Business Checkbox
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onTap: () {
                    BlocProvider.of<BankAccountAddingBloc>(context,
                        listen: false)
                      ..add(BankAccountAddingBuisnessEvent());
                  },
                  child: ContainerWithCheckbox(
                      check: state.props[1] as bool, text: 'Business'),
                ),
              ),
              const Spacer(),

              // Create Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: LongFilledButton(
                  buttonColor: state is BankAccountAddingChoosenState
                      ? AppColors.blue
                      : AppColors.blue.withOpacity(0.4),
                  child: Text(
                    "Create",
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
