import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bank_account_adding_bloc/bank_account_adding_bloc_states.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/successfull_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

import 'bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'bank_account_adding_bloc/bank_account_adding_event.dart';
import 'widgets/container_with_checkbox.dart';
import 'widgets/dropdown_list.dart';
import 'widgets/modal_bottom_sheet.dart';

class BankAccountAddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: background_black,
        elevation: 0,
      ),
      body: SafeArea(
        child: BlocBuilder<BankAccountAddingBloc, BankAccountAddingState>(
            builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Create new bank account',
                  style: AppTextStyles.bold24pt,
                ),
              ),
              const SizedBox(height: 24),
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
                          // TODO: переход
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SuccessfullPage()),
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
}
