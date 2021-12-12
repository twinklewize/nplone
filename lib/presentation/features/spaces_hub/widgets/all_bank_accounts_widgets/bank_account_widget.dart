import 'package:flutter/material.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/domain/entities/space_entity.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/single_space_page.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/space_creation_page/space_creation_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

class BankAccountWidget extends StatelessWidget {
  BankAccountWidget({required this.bankAccount, Key? key}) : super(key: key);

  BankAccountEntity bankAccount;

  Widget gotoSpaceButton({
    required BuildContext context,
    required SpaceEntity space,
    required BankAccountEntity bankAccount,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // image
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => SingleSpacePage(
                  space: space,
                  bankAccount: bankAccount,
                ),
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 24,
            height: MediaQuery.of(context).size.width / 2 - 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.amber,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                space.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        // name
        Container(
          width: MediaQuery.of(context).size.width / 2 - 24,
          child: Text(
            space.name,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 2),
        // description
        Container(
          width: MediaQuery.of(context).size.width / 2 - 24,
          child: Text(
            space.privacy == Privacy.openPublicSpace
                ? "Open public space"
                : "Private space",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color.fromRGBO(119, 119, 123, 1),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget createSpaceButton({
    required BuildContext context,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SpaceCreationPage()),
          );
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: MediaQuery.of(context).size.width / 2 - 24,
          height: MediaQuery.of(context).size.width / 2 - 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: blue.withOpacity(0.25),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+',
                  style: TextStyle(
                    color: blue,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'New Space',
                  style: TextStyle(
                    color: blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bankAccountListTile({
    required BuildContext context,
  }) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Row(
          children: [
            // bank avatar
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  bankAccount.bank.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(width: 8),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  bankAccount.name,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  bankAccount.spaces.length.toString() + ' spaces',
                  style: TextStyle(color: Color.fromRGBO(119, 119, 123, 1)),
                ),
              ],
            ),

            Spacer(),

            Text('\$ ${bankAccount.howMuchMoneyInDollars.toStringAsFixed(2)}',
                style: TextStyle(color: Color.fromRGBO(119, 119, 123, 1))),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        tilePadding: EdgeInsets.zero,
        title: bankAccountListTile(context: context),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: [
                for (var i = 0; i < bankAccount.spaces.length + 1; i++)
                  i == bankAccount.spaces.length
                      ? createSpaceButton(context: context)
                      : gotoSpaceButton(
                          context: context,
                          space: bankAccount.spaces[i],
                          bankAccount: bankAccount,
                        ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
