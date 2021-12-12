import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bank_account_adding_bloc/bank_account_adding_bloc.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bank_account_adding_bloc/bank_account_adding_event.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bank_list_bloc/bank_list_bloc.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bank_list_bloc/bank_list_event.dart';
import 'package:n_plus_one/presentation/features/bank_account_adding/bank_list_bloc/bank_list_states.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

import 'search_bar.dart';

Future<dynamic> customShowModalBottomSheet(
    BuildContext context, MediaQueryData mediaQuery) {
  BlocProvider.of<BankListBloc>(context, listen: false)
    ..add(BankListLoadEvent());
  return showModalBottomSheet(
    backgroundColor: AppColors.gray2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(14),
        topRight: Radius.circular(14),
      ),
    ),
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return ModalBottomSheet(mediaQuery: mediaQuery);
    },
  );
}

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    Function onSearch = (value) {
      BlocProvider.of<BankListBloc>(context, listen: false)
        ..add(BankListSearhEvent(value));
    };
    return FractionallySizedBox(
      heightFactor: (mediaQuery.size.height - mediaQuery.padding.top) /
          mediaQuery.size.height,
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 52),
                Spacer(),
                Text(
                  "Select bank",
                  style: AppTextStyles.bold20pt,
                ),
                Spacer(),
                InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: SvgPicture.asset(
                    "assets/icons/close_icon.svg",
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(width: 4)
              ],
            ),
            const SizedBox(height: 4),
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SearchBar(onSearch: onSearch),
            ),
            const SizedBox(height: 12),
            BlocBuilder<BankListBloc, BankListState>(
              builder: (context, state) {
                if (state is BankListLoadingState) {
                  return Expanded(
                    child: Center(
                        child:
                            CircularProgressIndicator(color: AppColors.white)),
                  );
                } else if (state is BankListLoadedState) {
                  final bank = state.banks;
                  return Expanded(
                      child: BankListView(
                    bankList: bank,
                  ));
                } else if (state is BankListSearchState) {
                  final bank = state.banks;
                  if (bank.length == 0) {
                    return Center(
                      child: Text(
                        'No results',
                        style: AppTextStyles.regular16pt,
                      ),
                    );
                  } else {
                    return Expanded(
                        child: BankListView(
                      bankList: bank,
                    ));
                  }
                } else if (state is BankListErrorState) {
                  return Text(
                    'No Internet Connection',
                    style: AppTextStyles.regular16pt,
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BankListView extends StatelessWidget {
  final List<BankEntity> bankList;
  const BankListView({
    Key? key,
    required this.bankList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bankList.length, //items.length,
      itemBuilder: (context, index) {
        return InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onTap: () {
            BlocProvider.of<BankAccountAddingBloc>(context, listen: false)
              ..add(BankAccountAddingChooseEvent(bankList[index]));
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: AppColors.white.withOpacity(0.2),
                    child: Image.network(bankList[index].imageUrl),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  bankList[index].name,
                  style: AppTextStyles.regular16pt,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
