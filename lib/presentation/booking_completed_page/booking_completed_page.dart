import '../booking_completed_page/widgets/bookingcompletedlist_item_widget.dart';
import 'bloc/booking_completed_bloc.dart';
import 'models/booking_completed_model.dart';
import 'models/bookingcompletedlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BookingCompletedPage extends StatefulWidget {
  const BookingCompletedPage({Key? key})
      : super(
          key: key,
        );

  @override
  BookingCompletedPageState createState() => BookingCompletedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BookingCompletedBloc>(
      create: (context) => BookingCompletedBloc(BookingCompletedState(
        bookingCompletedModelObj: BookingCompletedModel(),
      ))
        ..add(BookingCompletedInitialEvent()),
      child: BookingCompletedPage(),
    );
  }
}

class BookingCompletedPageState extends State<BookingCompletedPage>
    with AutomaticKeepAliveClientMixin<BookingCompletedPage> {
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
              _buildBookingCompletedList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingCompletedList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: BlocSelector<BookingCompletedBloc, BookingCompletedState,
            BookingCompletedModel?>(
          selector: (state) => state.bookingCompletedModelObj,
          builder: (context, bookingCompletedModelObj) {
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
              itemCount: bookingCompletedModelObj
                      ?.bookingcompletedlistItemList.length ??
                  0,
              itemBuilder: (context, index) {
                BookingcompletedlistItemModel model = bookingCompletedModelObj
                        ?.bookingcompletedlistItemList[index] ??
                    BookingcompletedlistItemModel();
                return BookingcompletedlistItemWidget(
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
