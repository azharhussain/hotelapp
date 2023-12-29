import 'package:flutter/material.dart';
import 'package:hotelapp/presentation/welcome_screen/welcome_screen.dart';
import 'package:hotelapp/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:hotelapp/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:hotelapp/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:hotelapp/presentation/let_s_you_in_screen/let_s_you_in_screen.dart';
import 'package:hotelapp/presentation/sign_up_blank_screen/sign_up_blank_screen.dart';
import 'package:hotelapp/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:hotelapp/presentation/fill_profile_screen/fill_profile_screen.dart';
import 'package:hotelapp/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:hotelapp/presentation/forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import 'package:hotelapp/presentation/forgot_password_filled_type_screen/forgot_password_filled_type_screen.dart';
import 'package:hotelapp/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:hotelapp/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:hotelapp/presentation/recently_booked_screen/recently_booked_screen.dart';
import 'package:hotelapp/presentation/notifications_screen/notifications_screen.dart';
import 'package:hotelapp/presentation/my_bookmarks_screen/my_bookmarks_screen.dart';
import 'package:hotelapp/presentation/hotel_details_screen/hotel_details_screen.dart';
import 'package:hotelapp/presentation/gallery_screen/gallery_screen.dart';
import 'package:hotelapp/presentation/location_screen/location_screen.dart';
import 'package:hotelapp/presentation/select_date_guest_screen/select_date_guest_screen.dart';
import 'package:hotelapp/presentation/booking_name_tab_container_screen/booking_name_tab_container_screen.dart';
import 'package:hotelapp/presentation/choose_payment_method_screen/choose_payment_method_screen.dart';
import 'package:hotelapp/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:hotelapp/presentation/card_added_screen/card_added_screen.dart';
import 'package:hotelapp/presentation/confirm_payment_screen/confirm_payment_screen.dart';
import 'package:hotelapp/presentation/view_ticket_screen/view_ticket_screen.dart';
import 'package:hotelapp/presentation/refund_method_screen/refund_method_screen.dart';
import 'package:hotelapp/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:hotelapp/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:hotelapp/presentation/security_screen/security_screen.dart';
import 'package:hotelapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String letSYouInScreen = '/let_s_you_in_screen';

  static const String signUpBlankScreen = '/sign_up_blank_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String fillProfileScreen = '/fill_profile_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordTypeOtpScreen =
      '/forgot_password_type_otp_screen';

  static const String forgotPasswordFilledTypeScreen =
      '/forgot_password_filled_type_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenTabContainerPage =
      '/home_screen_tab_container_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String recentlyBookedScreen = '/recently_booked_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String myBookmarksScreen = '/my_bookmarks_screen';

  static const String searchPage = '/search_page';

  static const String searchPageTabContainerPage =
      '/search_page_tab_container_page';

  static const String searchTypePage = '/search_type_page';

  static const String filterResultPage = '/filter_result_page';

  static const String hotelDetailsScreen = '/hotel_details_screen';

  static const String galleryScreen = '/gallery_screen';

  static const String locationScreen = '/location_screen';

  static const String selectDateGuestScreen = '/select_date_guest_screen';

  static const String bookingNamePage = '/booking_name_page';

  static const String bookingNameTabContainerScreen =
      '/booking_name_tab_container_screen';

  static const String choosePaymentMethodScreen =
      '/choose_payment_method_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String cardAddedScreen = '/card_added_screen';

  static const String confirmPaymentScreen = '/confirm_payment_screen';

  static const String viewTicketScreen = '/view_ticket_screen';

  static const String bookingOngoingPage = '/booking_ongoing_page';

  static const String bookingOngoingTabContainerPage =
      '/booking_ongoing_tab_container_page';

  static const String bookingCompletedPage = '/booking_completed_page';

  static const String bookingCancelledPage = '/booking_cancelled_page';

  static const String refundMethodScreen = '/refund_method_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String securityScreen = '/security_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        welcomeScreen: WelcomeScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        letSYouInScreen: LetSYouInScreen.builder,
        signUpBlankScreen: SignUpBlankScreen.builder,
        signInScreen: SignInScreen.builder,
        fillProfileScreen: FillProfileScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        forgotPasswordTypeOtpScreen: ForgotPasswordTypeOtpScreen.builder,
        forgotPasswordFilledTypeScreen: ForgotPasswordFilledTypeScreen.builder,
        createNewPasswordScreen: CreateNewPasswordScreen.builder,
        homeScreenContainerScreen: HomeScreenContainerScreen.builder,
        recentlyBookedScreen: RecentlyBookedScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        myBookmarksScreen: MyBookmarksScreen.builder,
        hotelDetailsScreen: HotelDetailsScreen.builder,
        galleryScreen: GalleryScreen.builder,
        locationScreen: LocationScreen.builder,
        selectDateGuestScreen: SelectDateGuestScreen.builder,
        bookingNameTabContainerScreen: BookingNameTabContainerScreen.builder,
        choosePaymentMethodScreen: ChoosePaymentMethodScreen.builder,
        addNewCardScreen: AddNewCardScreen.builder,
        cardAddedScreen: CardAddedScreen.builder,
        confirmPaymentScreen: ConfirmPaymentScreen.builder,
        viewTicketScreen: ViewTicketScreen.builder,
        refundMethodScreen: RefundMethodScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        notificationSettingsScreen: NotificationSettingsScreen.builder,
        securityScreen: SecurityScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomeScreen.builder
      };
}
