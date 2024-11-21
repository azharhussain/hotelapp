import 'bloc/search_page_tab_container_bloc.dart';
import 'models/search_page_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';
import 'package:hotelapp/presentation/search_type_page/search_type_page.dart';
import 'package:hotelapp/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchPageTabContainerPage extends StatefulWidget {
  const SearchPageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageTabContainerPageState createState() =>
      SearchPageTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchPageTabContainerBloc>(
      create: (context) =>
          SearchPageTabContainerBloc(SearchPageTabContainerState(
        searchPageTabContainerModelObj: SearchPageTabContainerModel(),
      ))
            ..add(SearchPageTabContainerInitialEvent()),
      child: SearchPageTabContainerPage(),
    );
  }
}

class SearchPageTabContainerPageState extends State<SearchPageTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: BlocSelector<SearchPageTabContainerBloc,
                    SearchPageTabContainerState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 24.v),
              _buildSearchRecomendations(context),
              SizedBox(
                height: 650.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SearchTypePage.builder(context),
                    SearchTypePage.builder(context),
                    SearchTypePage.builder(context),
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
  Widget _buildSearchRecomendations(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 38.v,
              width: 372.h,
              child: TabBar(
                controller: tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.whiteA700,
                labelStyle: TextStyle(
                  fontSize: 16.fSize,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: theme.colorScheme.primary,
                unselectedLabelStyle: TextStyle(
                  fontSize: 16.fSize,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                ),
                indicator: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    19.h,
                  ),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      "lbl_all_hotel".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_recommended".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_popular".tr,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 105.h,
              margin: EdgeInsets.only(left: 12.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlinePrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Text(
                "lbl_trending".tr,
                style: CustomTextStyles.titleMediumPrimary,
              ),
            ),
            Container(
              width: 94.h,
              margin: EdgeInsets.only(left: 12.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlinePrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Text(
                "lbl_nearby".tr,
                style: CustomTextStyles.titleMediumPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
