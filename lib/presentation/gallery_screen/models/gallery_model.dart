// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'gallery_item_model.dart';/// This class defines the variables used in the [gallery_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GalleryModel extends Equatable {GalleryModel({this.galleryItemList = const []}) {  }

List<GalleryItemModel> galleryItemList;

GalleryModel copyWith({List<GalleryItemModel>? galleryItemList}) { return GalleryModel(
galleryItemList : galleryItemList ?? this.galleryItemList,
); } 
@override List<Object?> get props => [galleryItemList];
 }
