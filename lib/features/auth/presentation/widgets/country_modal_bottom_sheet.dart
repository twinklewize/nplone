import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/core/ui_kit/widgets/search_bar.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';
import 'package:n_plus_one/features/auth/presentation/bloc/register_bloc/register_bloc.dart';

import '../bloc/country_list_bloc/country_list_bloc.dart';

Future<dynamic> customShowModalBottomSheet(
    BuildContext context, MediaQueryData mediaQuery) {
  BlocProvider.of<CountryListBloc>(context, listen: false)
    ..add(CountryListLoadEvent(context));
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
      return CountryModalBottomSheet(mediaQuery: mediaQuery);
    },
  );
}

class CountryModalBottomSheet extends StatelessWidget {
  const CountryModalBottomSheet({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    Function onSearch = (value) {
      BlocProvider.of<CountryListBloc>(context, listen: false)
        ..add(CountryListSearhEvent(value));
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
                  "Select country",
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
            BlocBuilder<CountryListBloc, CountryListState>(
              builder: (context, state) {
                if (state is CountryListLoaded) {
                  final country = state.countries;
                  return Expanded(
                    child: CountryListView(
                      countryList: country,
                    ),
                  );
                } else if (state is CountryListSearchState) {
                  final country = state.countries;
                  if (country.length == 0) {
                    return Center(
                      child: Text(
                        'No results',
                        style: AppTextStyles.regular16pt,
                      ),
                    );
                  } else {
                    return Expanded(
                        child: CountryListView(
                      countryList: country,
                    ));
                  }
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

class CountryListView extends StatelessWidget {
  final List<CountryEntity> countryList;
  const CountryListView({
    Key? key,
    required this.countryList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countryList.length, //items.length,
      itemBuilder: (context, index) {
        return InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onTap: () {
            BlocProvider.of<RegisterBloc>(context, listen: false)
              ..add(AddCountryEvent(country: countryList[index]));
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Text(
                        countryList[index].flagEmoji,
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Text(
                    countryList[index].countryName,
                    style: AppTextStyles.regular16pt,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
