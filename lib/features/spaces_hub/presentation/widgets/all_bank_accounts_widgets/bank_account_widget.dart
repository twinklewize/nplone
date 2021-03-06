import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/space_entity.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/pages/single_space/single_space_page.dart';

class BankAccountWidget extends StatelessWidget {
  BankAccountWidget({required this.bankAccount, Key? key}) : super(key: key);

  final BankAccountEntity bankAccount;

  Widget gotoSpaceButton({
    required BuildContext context,
    required SpaceEntity space,
    required BankAccountEntity bankAccount,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // image
        GestureDetector(
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
            style: AppTextStyles.medium14pt,
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
            style: AppTextStyles.regular12pt.copyWith(
              color: AppColors.frontGray4,
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
          Navigator.pushNamed(
            context,
            '/space-creation',
          );
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: MediaQuery.of(context).size.width / 2 - 24,
          height: MediaQuery.of(context).size.width / 2 - 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: AppColors.blue.withOpacity(0.25),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+',
                  style:
                      AppTextStyles.regular32pt.copyWith(color: AppColors.blue),
                ),
                SizedBox(height: 4),
                Text(
                  'New Space',
                  style: AppTextStyles.regular16pt.copyWith(
                    color: AppColors.blue,
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
                  style: AppTextStyles.regular16pt,
                ),
                Text(
                  bankAccount.spaces.length.toString() + ' spaces',
                  style: AppTextStyles.regular16pt
                      .copyWith(color: AppColors.frontGray4),
                ),
              ],
            ),

            Spacer(),

            Text('\$ ${bankAccount.howMuchMoneyInDollars.toStringAsFixed(2)}',
                style: AppTextStyles.regular16pt
                    .copyWith(color: AppColors.frontGray4)),
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
