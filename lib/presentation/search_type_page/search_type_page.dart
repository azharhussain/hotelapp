import '../search_type_page/widgets/searchtype_item_widget.dart';
import 'bloc/search_type_bloc.dart';
import 'models/search_type_model.dart';
import 'models/searchtype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchTypePage extends StatefulWidget {
  const SearchTypePage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTypePageState createState() => SearchTypePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTypeBloc>(
      create: (context) => SearchTypeBloc(SearchTypeState(
        searchTypeModelObj: SearchTypeModel(),
      ))
        ..add(SearchTypeInitialEvent()),
      child: SearchTypePage(),
    );
  }
}

class SearchTypePageState extends State<SearchTypePage>
    with AutomaticKeepAliveClientMixin<SearchTypePage> {
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
              SizedBox(height: 32.v),
              _buildRecentSearches(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSearches(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recent".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 21.v),
          BlocSelector<SearchTypeBloc, SearchTypeState, SearchTypeModel?>(
            selector: (state) => state.searchTypeModelObj,
            builder: (context, searchTypeModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 10.v,
                  );
                },
                itemCount: searchTypeModelObj?.searchtypeItemList.length ?? 0,
                itemBuilder: (context, index) {
                  SearchtypeItemModel model =
                      searchTypeModelObj?.searchtypeItemList[index] ??
                          SearchtypeItemModel();
                  return SearchtypeItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
