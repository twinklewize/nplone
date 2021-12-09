import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_events.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_states.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/all_bank_accounts_widgets/bank_account_widget.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class MySpacesWidget extends StatelessWidget {
  const MySpacesWidget({Key? key}) : super(key: key);

  Widget newBankAccountButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: LongFilledButton(
        buttonColor: Color.fromRGBO(25, 52, 84, 1),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '+',
                style: TextStyle(
                  color: blue,
                  fontSize: 24,
                ),
              ),
              SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'New Bank Account',
                  style: TextStyle(
                    color: blue,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SpacesHubBloc>(context, listen: false)
        .add(BankAccountsStartLoadingEvent(userId: 'userId'));

    return BlocBuilder<SpacesHubBloc, SpacesHubState>(
      builder: (context, state) {
        List<BankAccountEntity> bankAccounts = [];
        double totalBalance = 0;
        if (state is BankAccountsLoaded) {
          bankAccounts = state.bankAccounts;
        }
        for (var bankAccount in bankAccounts) {
          totalBalance += bankAccount.howMuchMoneyInDollars;
        }
        return state is BankAccountsLoading
            ? Center(child: CircularProgressIndicator())
            : state is BankAccountsLoadingError
                ? Text('Error :(', style: TextStyle(color: Colors.white))
                : SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 200,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 28),

                          // "Total Balance:"
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Total Balance:",
                              style: TextStyle(
                                color: Color.fromRGBO(179, 179, 184, 1),
                                fontSize: 14,
                              ),
                            ),
                          ),

                          SizedBox(height: 4),

                          // balance
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "\$ ${totalBalance.toStringAsFixed(2)}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),

                          SizedBox(height: 24),

                          // list of banks
                          SizedBox(
                            child: Column(
                              children: [
                                for (var index = 0;
                                    index < bankAccounts.length + 1;
                                    index++)
                                  index == bankAccounts.length
                                      ? newBankAccountButton()
                                      : Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: BankAccountWidget(
                                            bankAccount: bankAccounts[index],
                                          ),
                                        ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                  );
      },
    );
  }
}
