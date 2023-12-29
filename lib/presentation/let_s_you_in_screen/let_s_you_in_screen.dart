import 'bloc/let_s_you_in_bloc.dart';import 'models/let_s_you_in_model.dart';import 'package:flutter/material.dart';import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/widgets/app_bar/appbar_leading_image.dart';import 'package:hotelapp/widgets/app_bar/custom_app_bar.dart';import 'package:hotelapp/widgets/custom_elevated_button.dart';import 'package:hotelapp/domain/facebookauth/facebook_auth_helper.dart';import 'package:hotelapp/domain/googleauth/google_auth_helper.dart';class LetSYouInScreen extends StatelessWidget {const LetSYouInScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<LetSYouInBloc>(create: (context) => LetSYouInBloc(LetSYouInState(letSYouInModelObj: LetSYouInModel()))..add(LetSYouInInitialEvent()), child: LetSYouInScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<LetSYouInBloc, LetSYouInState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 47.v), child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 76.v), Text("lbl_let_s_you_in".tr, style: theme.textTheme.displayMedium), SizedBox(height: 90.v), _buildSocial(context), SizedBox(height: 58.v), CustomImageView(imagePath: ImageConstant.imgGroup16, height: 9.v, width: 360.h), SizedBox(height: 57.v), CustomElevatedButton(text: "msg_sign_in_with_password".tr, onPressed: () {onTapSignInWithPassword(context);}), Spacer(), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: CustomTextStyles.bodyMediumGray50_1)), GestureDetector(onTap: () {onTapTxtSignUp(context);}, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_sign_up".tr, style: theme.textTheme.titleSmall)))])]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 50.v, leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildSocial(BuildContext context) { return Column(children: [CustomElevatedButton(height: 60.v, text: "msg_continue_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgLogosfacebook, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold, onPressed: () {onTapContinueWithFacebook(context);}), SizedBox(height: 16.v), CustomElevatedButton(height: 60.v, text: "msg_continue_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 11.h), child: CustomImageView(imagePath: ImageConstant.imgFrame, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold, onPressed: () {onTapContinueWithGoogle(context);}), SizedBox(height: 16.v), CustomElevatedButton(height: 60.v, text: "msg_continue_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold)]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
onTapContinueWithFacebook(BuildContext context) async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
            });
             } 
onTapContinueWithGoogle(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
/// Navigates to the signInScreen when the action is triggered.
onTapSignInWithPassword(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signInScreen, ); } 
/// Navigates to the signUpBlankScreen when the action is triggered.
onTapTxtSignUp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpBlankScreen, ); } 
 }
