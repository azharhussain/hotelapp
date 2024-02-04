// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:hotelapp/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [fill_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FillProfileModel extends Equatable {FillProfileModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

FillProfileModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return FillProfileModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
