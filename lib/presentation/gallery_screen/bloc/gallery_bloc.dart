import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/gallery_item_model.dart';import 'package:hotelapp/presentation/gallery_screen/models/gallery_model.dart';part 'gallery_event.dart';part 'gallery_state.dart';/// A bloc that manages the state of a Gallery according to the event that is dispatched to it.
class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {GalleryBloc(GalleryState initialState) : super(initialState) { on<GalleryInitialEvent>(_onInitialize); }

_onInitialize(GalleryInitialEvent event, Emitter<GalleryState> emit, ) async  { emit(state.copyWith(galleryModelObj: state.galleryModelObj?.copyWith(galleryItemList: fillGalleryItemList()))); } 
List<GalleryItemModel> fillGalleryItemList() { return [GalleryItemModel(rectangle: ImageConstant.imgRectangle10), GalleryItemModel(rectangle: ImageConstant.imgRectangle11140x182), GalleryItemModel(rectangle: ImageConstant.imgRectangle12140x182), GalleryItemModel(rectangle: ImageConstant.imgRectangle13), GalleryItemModel(rectangle: ImageConstant.imgRectangle14), GalleryItemModel(rectangle: ImageConstant.imgRectangle15), GalleryItemModel(rectangle: ImageConstant.imgRectangle16), GalleryItemModel(rectangle: ImageConstant.imgRectangle10), GalleryItemModel(rectangle: ImageConstant.imgRectangle18), GalleryItemModel(rectangle: ImageConstant.imgRectangle19)]; } 
 }
