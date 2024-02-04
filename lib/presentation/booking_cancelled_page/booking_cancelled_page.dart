import '../booking_cancelled_page/widgets/bookingcancelled_item_widget.dart';
import 'bloc/booking_cancelled_bloc.dart';
import 'models/booking_cancelled_model.dart';
import 'models/bookingcancelled_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BookingCancelledPage extends StatefulWidget {
  const BookingCancelledPage({Key? key})
      : super(
          key: key,
        );

  @override
  BookingCancelledPageState createState() => BookingCancelledPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BookingCancelledBloc>(
      create: (context) => BookingCancelledBloc(BookingCancelledState(
        bookingCancelledModelObj: BookingCancelledModel(),
      ))
        ..add(BookingCancelledInitialEvent()),
      child: BookingCancelledPage(),
    );
  }
}

class BookingCancelledPageState extends State<BookingCancelledPage>
    with AutomaticKeepAliveClientMixin<BookingCancelledPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildBookingCancelled(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingCancelled(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: BlocSelector<BookingCancelledBloc, BookingCancelledState,
            BookingCancelledModel?>(
          selector: (state) => state.bookingCancelledModelObj,
          builder: (context, bookingCancelledModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 20.v,
                );
              },
              itemCount:
                  bookingCancelledModelObj?.bookingcancelledItemList.length ??
                      0,
              itemBuilder: (context, index) {
                BookingcancelledItemModel model =
                    bookingCancelledModelObj?.bookingcancelledItemList[index] ??
                        BookingcancelledItemModel();
                return BookingcancelledItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
