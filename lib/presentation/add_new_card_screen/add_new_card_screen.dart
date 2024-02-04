import 'bloc/add_new_card_bloc.dart';import 'models/add_new_card_model.dart';import 'package:flutter/material.dart';import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/widgets/app_bar/appbar_leading_image.dart';import 'package:hotelapp/widgets/app_bar/appbar_title.dart';import 'package:hotelapp/widgets/app_bar/custom_app_bar.dart';import 'package:hotelapp/widgets/custom_elevated_button.dart';import 'package:hotelapp/widgets/custom_text_form_field.dart';class AddNewCardScreen extends StatelessWidget {const AddNewCardScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AddNewCardBloc>(create: (context) => AddNewCardBloc(AddNewCardState(addNewCardModelObj: AddNewCardModel()))..add(AddNewCardInitialEvent()), child: AddNewCardScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgCard1, height: 240.v, width: 380.h), SizedBox(height: 28.v), _buildName(context), SizedBox(height: 28.v), _buildNumber(context), SizedBox(height: 28.v), _buildExpiryAndCvvNumber(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAddNewCard(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_add_new_card".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildName(BuildContext context) { return BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(selector: (state) => state.nameController, builder: (context, nameController) {return CustomTextFormField(controller: nameController, hintText: "lbl_daniel_austin".tr);}); } 
/// Section Widget
Widget _buildNumber(BuildContext context) { return BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(selector: (state) => state.numberController, builder: (context, numberController) {return CustomTextFormField(controller: numberController, hintText: "msg_6373_2728_4797_4679".tr);}); } 
/// Section Widget
Widget _buildExpiryDate(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 8.h), child: BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(selector: (state) => state.expiryDateController, builder: (context, expiryDateController) {return CustomTextFormField(controller: expiryDateController, hintText: "lbl_02_30".tr);}))); } 
/// Section Widget
Widget _buildCvv(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h), child: BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(selector: (state) => state.cvvController, builder: (context, cvvController) {return CustomTextFormField(controller: cvvController, hintText: "lbl_190".tr, textInputAction: TextInputAction.done);}))); } 
/// Section Widget
Widget _buildExpiryAndCvvNumber(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildExpiryDate(context), _buildCvv(context)]); } 
/// Section Widget
Widget _buildAddNewCard(BuildContext context) { return CustomElevatedButton(text: "lbl_add_new_card".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
