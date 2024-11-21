import '../search_page/widgets/searchpage_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'models/searchpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(SearchState(
        searchModelObj: SearchModel(),
      ))
        ..add(SearchInitialEvent()),
      child: SearchPage(),
    );
  }
}

class SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
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
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildSeventyTwo(context),
                    SizedBox(height: 22.v),
                    _buildSearchPage(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommended(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 2.v,
        bottom: 3.v,
      ),
      child: Text(
        "msg_recommended_586_379".tr,
        style: theme.textTheme.titleMedium,
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildRecommended(context),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgMenuPrimary,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVideoCamera,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(left: 12.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchPage(BuildContext context) {
    return BlocSelector<SearchBloc, SearchState, SearchModel?>(
      selector: (state) => state.searchModelObj,
      builder: (context, searchModelObj) {
        return ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: searchModelObj?.searchpageItemList.length ?? 0,
          itemBuilder: (context, index) {
            SearchpageItemModel model =
                searchModelObj?.searchpageItemList[index] ??
                    SearchpageItemModel();
            return SearchpageItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
