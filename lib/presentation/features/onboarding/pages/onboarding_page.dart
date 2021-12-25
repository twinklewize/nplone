import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/features/onboarding/widgets/onboarding_screen.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_empty_button.dart';

import '../widgets/animated_bar.dart';

class OnboardingPage extends StatefulWidget {
  static const routeName = '/onboarding';
  final List<Widget> screens = [
    OnboardingScreen(
      mainText: 'Share transactions and financial statements with others',
      secondaryText: 'Privat & Publicly',
      image: 'assets/images/onboarding_image1.png',
      backgroundImage: 'assets/images/onboarding_background1.png',
    ),
    OnboardingScreen(
      mainText:
          'Manage finances jointly\n from any European bank account,\n from any country',
      secondaryText: 'Privat & Corporate',
      image: 'assets/images/onboarding_image2.png',
      backgroundImage: 'assets/images/onboarding_background2.png',
    ),
    OnboardingScreen(
      mainText:
          'Mix financial transactions\n from all bank accounts\n with third parties',
      secondaryText: 'While keeping a required level of privacy',
      image: 'assets/images/onboarding_image3.png',
      backgroundImage: 'assets/images/onboarding_background3.png',
    ),
    OnboardingScreen(
      mainText:
          'Consolidate common financial data in one place. Get a full and immediate finance view',
      secondaryText: 'Without cross-platform reporting and reconciliations',
      image: 'assets/images/onboarding_image4.png',
      backgroundImage: 'assets/images/onboarding_background4.png',
    ),
  ];

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animationController = AnimationController(vsync: this);

    _loadScreen(story: widget.screens.first, animateToPage: false);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.stop();
        _animationController.reset();
        setState(() {
          if (_currentIndex + 1 < widget.screens.length) {
            _currentIndex += 1;
            _loadScreen(story: widget.screens[_currentIndex]);
          } else {
            // Здесь должен быть переход на следующую страницу

            _currentIndex = 0;
            _loadScreen(story: widget.screens[_currentIndex]);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Function nextPage = () {
      return Navigator.pushNamed(
        context,
        '/bank-account-adding',
      );
    };

    final Widget screen = widget.screens[_currentIndex];

    return Scaffold(
      backgroundColor: AppColors.gray1,
      body: GestureDetector(
        onTapDown: (details) => _onTapDown(details, screen, nextPage),
        child: Stack(
          children: <Widget>[
            PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.screens.length,
              itemBuilder: (context, i) {
                return widget.screens[i];
              },
            ),
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 24,
              left: 24.0,
              right: 24.0,
              child: LongEmptyButton(
                buttonColor: AppColors.gray1,
                onPressed: () {
                  setState(() {
                    if (_currentIndex + 1 < widget.screens.length) {
                      _currentIndex += 1;
                      _loadScreen(story: widget.screens[_currentIndex]);
                    } else {
                      // Здесь должен быть переход на следующую страницу
                      nextPage();
                      // _currentIndex = 0;
                      // _loadScreen(story: widget.screens[_currentIndex]);
                    }
                  });
                },
                textColor: Colors.white,
                textValue: 'Next',
              ),
            ),

            // Animated Bars
            Positioned(
              top: MediaQuery.of(context).padding.top + 24,
              left: 12.0,
              right: 12.0,
              child: Column(
                children: <Widget>[
                  Row(
                    children: widget.screens
                        .asMap()
                        .map((i, e) {
                          return MapEntry(
                            i,
                            AnimatedBar(
                              animationController: _animationController,
                              position: i,
                              currentIndex: _currentIndex,
                            ),
                          );
                        })
                        .values
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loadScreen({required Widget story, bool animateToPage = true}) {
    _animationController.stop();
    _animationController.reset();
    _animationController.duration =
        const Duration(seconds: 5); // time of transition
    _animationController.forward();
    if (animateToPage) {
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  void _onTapDown(TapDownDetails details, Widget story, Function nextPage) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;
    if (dx < screenWidth / 3) {
      setState(() {
        if (_currentIndex - 1 >= 0) {
          _currentIndex -= 1;
          _loadScreen(story: widget.screens[_currentIndex]);
        }
      });
    } else if (dx > 2 * screenWidth / 3) {
      setState(() {
        if (_currentIndex + 1 < widget.screens.length) {
          _currentIndex += 1;
          _loadScreen(story: widget.screens[_currentIndex]);
        } else {
          nextPage();
        }
      });
    }
  }
}
