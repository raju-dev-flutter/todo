import 'package:flutter/material.dart';
import 'package:todo/presentation/splash_screen/splash_screen.dart';
import 'package:todo/presentation/login_with_email_id_screen/login_with_email_id_screen.dart';
import 'package:todo/presentation/register_screen/register_screen.dart';
import 'package:todo/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:todo/presentation/explore_screen/explore_screen.dart';
import 'package:todo/presentation/fruits_screen/fruits_screen.dart';
import 'package:todo/presentation/details_screen/details_screen.dart';
import 'package:todo/presentation/my_subscription_screen/my_subscription_screen.dart';
import 'package:todo/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:todo/presentation/payment_screen/payment_screen.dart';
import 'package:todo/presentation/user_screen/user_screen.dart';
import 'package:todo/presentation/my_addresses_screen/my_addresses_screen.dart';
import 'package:todo/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:todo/presentation/my_orders_screen/my_orders_screen.dart';
import 'package:todo/presentation/faq_screen/faq_screen.dart';
import 'package:todo/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:todo/presentation/about_us_screen/about_us_screen.dart';
import 'package:todo/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:todo/presentation/terms_of_services_screen/terms_of_services_screen.dart';
import 'package:todo/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:todo/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginWithEmailIdScreen = '/login_with_email_id_screen';

  static const String registerScreen = '/register_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String exploreScreen = '/explore_screen';

  static const String fruitsScreen = '/fruits_screen';

  static const String detailsScreen = '/details_screen';

  static const String mySubscriptionScreen = '/my_subscription_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String paymentScreen = '/payment_screen';

  static const String userScreen = '/user_screen';

  static const String myAddressesScreen = '/my_addresses_screen';

  static const String myWalletScreen = '/my_wallet_screen';

  static const String myOrdersScreen = '/my_orders_screen';

  static const String faqScreen = '/faq_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String termsOfServicesScreen = '/terms_of_services_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginWithEmailIdScreen: (context) => LoginWithEmailIdScreen(),
    registerScreen: (context) => RegisterScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    exploreScreen: (context) => ExploreScreen(),
    fruitsScreen: (context) => FruitsScreen(),
    detailsScreen: (context) => DetailsScreen(),
    mySubscriptionScreen: (context) => MySubscriptionScreen(),
    myCartScreen: (context) => MyCartScreen(),
    paymentScreen: (context) => PaymentScreen(),
    userScreen: (context) => UserScreen(),
    myAddressesScreen: (context) => MyAddressesScreen(),
    myWalletScreen: (context) => MyWalletScreen(),
    myOrdersScreen: (context) => MyOrdersScreen(),
    faqScreen: (context) => FaqScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    termsOfServicesScreen: (context) => TermsOfServicesScreen(),
    addNewAddressScreen: (context) => AddNewAddressScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
