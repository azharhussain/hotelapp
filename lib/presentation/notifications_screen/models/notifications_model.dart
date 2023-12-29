// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'sectionlist_item_model.dart';/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel extends Equatable {NotificationsModel({this.sectionlistItemList = const []}) {  }

List<SectionlistItemModel> sectionlistItemList;

NotificationsModel copyWith({List<SectionlistItemModel>? sectionlistItemList}) { return NotificationsModel(
sectionlistItemList : sectionlistItemList ?? this.sectionlistItemList,
); } 
@override List<Object?> get props => [sectionlistItemList];
 }
