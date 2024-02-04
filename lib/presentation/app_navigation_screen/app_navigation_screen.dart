import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Welcome Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.welcomeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Let\\'s You In".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.letSYouInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign Up (Blank)".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpBlankScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign In ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Fill Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fillProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password - Type OTP".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordTypeOtpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password - Filled Type".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordFilledTypeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create New Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Screen - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeScreenContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Recently Booked".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.recentlyBookedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notifications".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Bookmarks".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myBookmarksScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Hotel Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.hotelDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Gallery".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.galleryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Location".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.locationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Select date & Guest".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.selectDateGuestScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Booking Name - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.bookingNameTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Choose Payment Method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.choosePaymentMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add New Card".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addNewCardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Card Added".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cardAddedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Confirm Payment".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.confirmPaymentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "View Ticket".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.viewTicketScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Refund Method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.refundMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notification Settings".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Security".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.securityScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
