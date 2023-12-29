// ignore_for_file: must_be_immutable

part of 'gallery_bloc.dart';

/// Represents the state of Gallery in the application.
class GalleryState extends Equatable {
  GalleryState({this.galleryModelObj});

  GalleryModel? galleryModelObj;

  @override
  List<Object?> get props => [
        galleryModelObj,
      ];
  GalleryState copyWith({GalleryModel? galleryModelObj}) {
    return GalleryState(
      galleryModelObj: galleryModelObj ?? this.galleryModelObj,
    );
  }
}
