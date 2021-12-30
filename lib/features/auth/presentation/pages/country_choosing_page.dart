import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/core/localization/generated/l10n.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';
import 'package:n_plus_one/features/auth/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:n_plus_one/features/auth/presentation/widgets/country_dropdown_list.dart';
import 'package:n_plus_one/core/ui_kit/widgets/long_filled_button.dart';

import '../widgets/country_modal_bottom_sheet.dart';

class CountryChoosingPage extends StatelessWidget {
  static const routeName = '/country-choosing';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: appBar(context),
      body: SafeArea(
        child:
            BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
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
                  S.of(context).countryChoosingPageMainText,
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
                    state is RegisterCountryAddedState ||
                            state is RegisterLoadingState
                        ? CountryDropdownList(
                            defaultText: S
                                .of(context)
                                .countryChoosingPageDropdownHintText,
                            text: (state.props[0] as CountryEntity).countryName,
                            flagEmoji:
                                (state.props[0] as CountryEntity).flagEmoji,
                            onTap: () =>
                                customShowModalBottomSheet(context, mediaQuery),
                          )
                        : CountryDropdownList(
                            defaultText: S
                                .of(context)
                                .countryChoosingPageDropdownHintText,
                            onTap: () =>
                                customShowModalBottomSheet(context, mediaQuery),
                          ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),

              state is RegisterFailedState
                  ? Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            state.errorMessage,
                            style: AppTextStyles.regular16pt
                                .copyWith(color: AppColors.red),
                          ),
                        ),
                        Spacer(),
                      ],
                    )
                  : const SizedBox(),

              const Spacer(),

              // Loading
              state is RegisterLoadingState
                  ? Expanded(
                      child: Center(
                          child: CircularProgressIndicator(
                      color: AppColors.blue,
                    )))
                  : const SizedBox(),

              const Spacer(),

              // Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  S.of(context).countryChoosingPageSecondaryText,
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
                  buttonColor: state is RegisterCountryAddedState
                      ? AppColors.blue
                      : AppColors.blue.withOpacity(0.4),
                  child: Text(
                    S.of(context).countryChoosingPageContinueButton,
                    style: state is RegisterCountryAddedState
                        ? AppTextStyles.bold20pt
                        : AppTextStyles.bold20pt
                            .copyWith(color: AppColors.white.withOpacity(0.4)),
                  ),
                  onPressed: state is RegisterCountryAddedState
                      ? () {
                          BlocProvider.of<RegisterBloc>(context, listen: false)
                            ..add(
                              UserRegisterEvent(
                                context: context,
                              ),
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
