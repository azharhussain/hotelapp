import 'bloc/booking_name_bloc.dart';import 'models/booking_name_model.dart';import 'package:flutter/material.dart';import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/core/utils/validation_functions.dart';import 'package:hotelapp/widgets/custom_elevated_button.dart';import 'package:hotelapp/widgets/custom_text_form_field.dart';class BookingNamePage extends StatefulWidget {const BookingNamePage({Key? key}) : super(key: key);

@override BookingNamePageState createState() =>  BookingNamePageState();

static Widget builder(BuildContext context) { return BlocProvider<BookingNameBloc>(create: (context) => BookingNameBloc(BookingNameState(bookingNameModelObj: BookingNameModel()))..add(BookingNameInitialEvent()), child: BookingNamePage()); } 
 }

// ignore_for_file: must_be_immutable
class BookingNamePageState extends State<BookingNamePage> with  AutomaticKeepAliveClientMixin<BookingNamePage> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimary, child: Column(children: [SizedBox(height: 30.v), Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildLabel(context), SizedBox(height: 24.v), _buildLabel1(context), SizedBox(height: 24.v), _buildDate(context), SizedBox(height: 24.v), _buildEmail(context), SizedBox(height: 24.v), _buildPhone(context), Spacer(), _buildContinue(context)])))]))))); } 
/// Section Widget
Widget _buildLabel(BuildContext context) { return BlocSelector<BookingNameBloc, BookingNameState, TextEditingController?>(selector: (state) => state.labelController, builder: (context, labelController) {return CustomTextFormField(controller: labelController, hintText: "lbl_daniel_austin".tr);}); } 
/// Section Widget
Widget _buildLabel1(BuildContext context) { return BlocSelector<BookingNameBloc, BookingNameState, TextEditingController?>(selector: (state) => state.labelController1, builder: (context, labelController1) {return CustomTextFormField(controller: labelController1, hintText: "lbl_daniel".tr);}); } 
/// Section Widget
Widget _buildDate(BuildContext context) { return BlocSelector<BookingNameBloc, BookingNameState, TextEditingController?>(selector: (state) => state.dateController, builder: (context, dateController) {return CustomTextFormField(controller: dateController, hintText: "lbl_12_27_1995".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 22.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 16.v, width: 15.h)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v));}); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return BlocSelector<BookingNameBloc, BookingNameState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "lbl_user_domain_com".tr, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgClockPrimary15x15, height: 15.adaptSize, width: 15.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v));}); } 
/// Section Widget
Widget _buildPhone(BuildContext context) { return BlocSelector<BookingNameBloc, BookingNameState, TextEditingController?>(selector: (state) => state.phoneController, builder: (context, phoneController) {return CustomTextFormField(controller: phoneController, hintText: "msg_1_123_456_789_000".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 19.v, 12.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgTelevision, height: 18.v, width: 48.h)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v));}); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, onPressed: () {onTapContinue(context);}); } 
/// Navigates to the choosePaymentMethodScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.choosePaymentMethodScreen, ); } 
 }
