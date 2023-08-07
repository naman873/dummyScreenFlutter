import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsClass {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  void appOpen() async {
    await analytics.logEvent(
      name: 'app_open',
    );
  }

  void onLoginScreen() async {
    await analytics.logEvent(
      name: 'login_signin_screen_show',
    );
  }

  void submitLoginScreen(String? method) async {
    await analytics.logEvent(
        name: 'login_signin_details_submitted',
        parameters: {"country_type": "", "login_method": "$method"});
    //login_method: mobile/email
  }

  void loginSuccessFull(String? method) async {
    await analytics.logEvent(
        name: 'login_signin_successful',
        parameters: {"country_type": "", "login_method": "$method"});
    //login_method: mobile/email
  }

  void videoStart(
      String? showName, String? episodeNumber, String? episodeName) async {
    await analytics.logEvent(name: 'video_start', parameters: {
      "show_name": "$showName",
      "episode_no": "$episodeNumber",
      "episode_name": "$episodeName"
    });
  }

  void videoExit(
      String? showName, String? episodeNumber, String? episodeName) async {
    await analytics.logEvent(name: 'video_exit', parameters: {
      "show_name": "$showName",
      "episode_no": "$episodeNumber",
      "episode_name": "$episodeName"
    });
  }

  void loginOtpSuccessFull() async {
    await analytics.logEvent(
      name: 'login_otp_verification_successful',
    );
  }

  void subscriptionOptionClicked() async {
    await analytics.logEvent(
      name: 'subscription_option_clicked',
    );
  }

  void subscriptionPlanClicked(String? planType, String? planPrice) async {
    await analytics.logEvent(
        name: 'subscription_plan_clicked',
        parameters: {"plan_type": "$planType", "plan_price": "$planPrice"});
  }

  void subscriptionPlanProceedToPay(
      String? paymentMethod, String? planType, String? planPrice) async {
    await analytics
        .logEvent(name: 'subscription_plan_proceed_to_pay', parameters: {
      "payment_method": "$paymentMethod",
      "plan_type": "$planType",
      "plan_price": "$planPrice"
    });
  }

  void subscriptionPlanSuccessFull(
      String? paymentMethod, String? planType, String? planPrice) async {
    await analytics
        .logEvent(name: 'subscription_payment_successful', parameters: {
      "payment_method": "$paymentMethod",
      "plan_type": "$planType",
      "plan_price": "$planPrice"
    });
  }

  void subscriptionPlalFail(String? paymentMethod, String? planType,
      String? planPrice, String? reason) async {
    await analytics.logEvent(name: 'subscription_payment_failed', parameters: {
      "payment_method": "$paymentMethod",
      "plan_type": "$planType",
      "plan_price": "$planPrice",
      "failure_reason": "$reason"
    });
  }
}
