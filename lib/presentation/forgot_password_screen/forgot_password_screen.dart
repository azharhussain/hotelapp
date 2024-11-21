import '../forgot_password_screen/widgets/forgotpassword_item_widget.dart';import 'bloc/forgot_password_bloc.dart';import 'models/forgot_password_model.dart';import 'models/forgotpassword_item_model.dart';import 'package:flutter/material.dart';import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/widgets/app_bar/appbar_leading_image.dart';import 'package:hotelapp/widgets/app_bar/appbar_title.dart';import 'package:hotelapp/widgets/app_bar/custom_app_bar.dart';import 'package:hotelapp/widgets/custom_elevated_button.dart';class ForgotPasswordScreen extends StatelessWidget {const ForgotPasswordScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ForgotPasswordBloc>(create: (context) => ForgotPasswordBloc(ForgotPasswordState(forgotPasswordModelObj: ForgotPasswordModel()))..add(ForgotPasswordInitialEvent()), child: ForgotPasswordScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 39.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgImage, height: 240.adaptSize, width: 240.adaptSize, alignment: Alignment.center), SizedBox(height: 41.v), Container(width: 355.h, margin: EdgeInsets.only(right: 24.h), child: Text("msg_select_which_contact".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))), SizedBox(height: 18.v), _buildForgotPassword(context)])), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildForgotPassword(BuildContext context) { return BlocSelector<ForgotPasswordBloc, ForgotPasswordState, ForgotPasswordModel?>(selector: (state) => state.forgotPasswordModelObj, builder: (context, forgotPasswordModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: forgotPasswordModelObj?.forgotpasswordItemList.length ?? 0, itemBuilder: (context, index) {ForgotpasswordItemModel model = forgotPasswordModelObj?.forgotpasswordItemList[index] ?? ForgotpasswordItemModel(); return ForgotpasswordItemWidget(model);});}); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinue(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the forgotPasswordTypeOtpScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.forgotPasswordTypeOtpScreen, ); } 
 }
