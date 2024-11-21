import '../booking_ongoing_page/widgets/bookingongoing_item_widget.dart';import 'bloc/booking_ongoing_bloc.dart';import 'models/booking_ongoing_model.dart';import 'models/bookingongoing_item_model.dart';import 'package:flutter/material.dart';import 'package:hotelapp/core/app_export.dart';class BookingOngoingPage extends StatefulWidget {const BookingOngoingPage({Key? key}) : super(key: key);

@override BookingOngoingPageState createState() =>  BookingOngoingPageState();

static Widget builder(BuildContext context) { return BlocProvider<BookingOngoingBloc>(create: (context) => BookingOngoingBloc(BookingOngoingState(bookingOngoingModelObj: BookingOngoingModel()))..add(BookingOngoingInitialEvent()), child: BookingOngoingPage()); } 
 }
class BookingOngoingPageState extends State<BookingOngoingPage> with  AutomaticKeepAliveClientMixin<BookingOngoingPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimary, child: Column(children: [SizedBox(height: 30.v), _buildBookingOngoing(context)])))); } 
/// Section Widget
Widget _buildBookingOngoing(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<BookingOngoingBloc, BookingOngoingState, BookingOngoingModel?>(selector: (state) => state.bookingOngoingModelObj, builder: (context, bookingOngoingModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: bookingOngoingModelObj?.bookingongoingItemList.length ?? 0, itemBuilder: (context, index) {BookingongoingItemModel model = bookingOngoingModelObj?.bookingongoingItemList[index] ?? BookingongoingItemModel(); return BookingongoingItemWidget(model, onTapCancelBooking: () {onTapCancelBooking(context);}, onTapViewTicket: () {onTapViewTicket(context);});});}))); } 

onTapCancelBooking(BuildContext context) { // TODO: implement Actions
 } 
/// Navigates to the viewTicketScreen when the action is triggered.
onTapViewTicket(BuildContext context) { NavigatorService.pushNamed(AppRoutes.viewTicketScreen, ); } 
 }
