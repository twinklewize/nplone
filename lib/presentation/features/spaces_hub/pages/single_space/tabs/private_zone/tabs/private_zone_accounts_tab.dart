import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/domain/entities/space_entity.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/bloc/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/bloc/spaces_hub_bloc/spaces_hub_states.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class PrivateZoneAccountsTab extends StatelessWidget {
  PrivateZoneAccountsTab({
    Key? key,
    required this.space,
    required this.bankAccount,
  }) : super(key: key);

  final SpaceEntity space;
  final BankAccountEntity bankAccount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 28),

            // "Total Balance:"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Total Balance:",
                style: AppTextStyles.regular14pt
                    .copyWith(color: AppColors.gray2nd),
              ),
            ),

            SizedBox(height: 4),

            // balance
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "\$ " + bankAccount.howMuchMoneyInDollars.toStringAsFixed(2),
                style: AppTextStyles.bold24pt,
              ),
            ),

            SizedBox(height: 24),

            // Main bank account info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                width: MediaQuery.of(context).size.width - 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromRGBO(44, 45, 46, 1),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Row(
                      children: [
                        SizedBox(width: 16),
                        Text(
                          'Main bank account',
                          style: AppTextStyles.bold20pt,
                        ),
                        SizedBox(width: 8),
                        SvgPicture.asset('assets/icons/?.svg'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        SizedBox(width: 16),
                        Text(
                          'IBAN',
                          style: AppTextStyles.medium14pt,
                        ),
                        Spacer(),
                        Text(
                          'DE28100110012624159322',
                          style: AppTextStyles.regular14pt
                              .copyWith(color: AppColors.gray3rd),
                        ),
                        SizedBox(width: 8),
                        SvgPicture.asset('assets/icons/copy.svg'),
                        SizedBox(width: 16),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 16),
                        Text(
                          'BIC',
                          style: AppTextStyles.medium14pt,
                        ),
                        Spacer(),
                        Text(
                          'NTSBDEB1XXX',
                          style: AppTextStyles.regular14pt
                              .copyWith(color: AppColors.gray3rd),
                        ),
                        SizedBox(width: 8),
                        SvgPicture.asset('assets/icons/copy.svg'),
                        SizedBox(width: 16),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        SizedBox(width: 16),
                        Text(
                          'Last updated:',
                          style: AppTextStyles.medium14pt,
                        ),
                        Spacer(),
                        Text(
                          '21.11.2021',
                          style: AppTextStyles.regular14pt
                              .copyWith(color: AppColors.gray3rd),
                        ),
                        SizedBox(width: 16),
                        SvgPicture.asset('assets/icons/repeat.svg'),
                        SizedBox(width: 24),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 40,
                        child: LongFilledButton(
                          buttonColor: AppColors.white.withOpacity(0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  color: Colors.amber,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Image.network(
                                    bankAccount.bank.imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Open App',
                                style: AppTextStyles.medium14pt,
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            // Linked bank accounts
            BlocBuilder<SpacesHubBloc, SpacesHubState>(
              builder: (context, snapshot) => snapshot is BankAccountsLoaded
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromRGBO(44, 45, 46, 1),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 16),
                            Row(
                              children: [
                                SizedBox(width: 16),
                                Text(
                                  'Linked additional accounts',
                                  style: AppTextStyles.bold20pt,
                                ),
                                SizedBox(width: 8),
                                SvgPicture.asset('assets/icons/?.svg'),
                              ],
                            ),
                            for (var bankAccount in snapshot.bankAccounts)
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16, left: 16, right: 16),
                                    child: SizedBox(
                                      height: 40,
                                      child: LongFilledButton(
                                        buttonColor:
                                            AppColors.white.withOpacity(0.1),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 24,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                color: Colors.amber,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                child: Image.network(
                                                  bankAccount.bank.imageUrl,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Open App',
                                              style: AppTextStyles.medium14pt,
                                            ),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16, top: 16),
                              child: SizedBox(
                                height: 40,
                                child: LongFilledButton(
                                  buttonColor: Color.fromRGBO(25, 52, 84, 1),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '+',
                                          style: TextStyle(
                                            color: AppColors.blue,
                                            fontSize: 24,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Text(
                                            'Sync Transactions',
                                            style: TextStyle(
                                              color: AppColors.blue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
