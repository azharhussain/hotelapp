import 'bloc/booking_name_tab_container_bloc.dart';import 'models/booking_name_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/booking_name_page/booking_name_page.dart';import 'package:hotelapp/widgets/app_bar/appbar_leading_image.dart';import 'package:hotelapp/widgets/app_bar/appbar_title.dart';import 'package:hotelapp/widgets/app_bar/custom_app_bar.dart';class BookingNameTabContainerScreen extends StatefulWidget {const BookingNameTabContainerScreen({Key? key}) : super(key: key);

@override BookingNameTabContainerScreenState createState() =>  BookingNameTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<BookingNameTabContainerBloc>(create: (context) => BookingNameTabContainerBloc(BookingNameTabContainerState(bookingNameTabContainerModelObj: BookingNameTabContainerModel()))..add(BookingNameTabContainerInitialEvent()), child: BookingNameTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class BookingNameTabContainerScreenState extends State<BookingNameTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<BookingNameTabContainerBloc, BookingNameTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 28.v), _buildTabview(context), SizedBox(height: 764.v, child: TabBarView(controller: tabviewController, children: [BookingNamePage.builder(context), BookingNamePage.builder(context), BookingNamePage.builder(context)]))]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "msg_name_of_reservation".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 38.v, width: 380.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.whiteA700, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: theme.colorScheme.primary, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicator: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(19.h)), tabs: [Tab(child: Text("lbl_mr".tr)), Tab(child: Text("lbl_mrs".tr)), Tab(child: Text("lbl_ms".tr))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
