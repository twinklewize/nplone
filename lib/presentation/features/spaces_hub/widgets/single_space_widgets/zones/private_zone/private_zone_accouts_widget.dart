import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/domain/entities/space_entity.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class PrivateZoneAccountsWidget extends StatelessWidget {
  PrivateZoneAccountsWidget({
    Key? key,
    required this.space,
    required this.bankAccount,
  }) : super(key: key);

  SpaceEntity space;
  BankAccountEntity bankAccount;

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
                "\$ " + bankAccount.howMuchMoneyInDollars.toStringAsFixed(2),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            SizedBox(height: 24),

            Container(
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
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
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
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'DE28100110012624159322',
                        style: TextStyle(
                          color: Color.fromRGBO(119, 119, 123, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
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
                        'BIC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'NTSBDEB1XXX',
                        style: TextStyle(
                          color: Color.fromRGBO(119, 119, 123, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
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
                        'BIC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'NTSBDEB1XXX',
                        style: TextStyle(
                          color: Color.fromRGBO(119, 119, 123, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 8),
                      SvgPicture.asset('assets/icons/copy.svg'),
                      SizedBox(width: 16),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 40,
                      child: LongFilledButton(
                        buttonColor: Colors.black54,
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
                                  bankAccount.bank.imageURL,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Open App',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
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

            SizedBox(height: 16),

            Container(
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
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 8),
                      SvgPicture.asset('assets/icons/?.svg'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 40,
                      child: LongFilledButton(
                        buttonColor: Colors.black54,
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
                                  bankAccount.bank.imageURL,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Open App',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: SizedBox(
                      height: 40,
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
                                  'Sync Transactions',
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
