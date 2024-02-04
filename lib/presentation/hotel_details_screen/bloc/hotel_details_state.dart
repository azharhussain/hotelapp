// ignore_for_file: must_be_immutable

part of 'hotel_details_bloc.dart';

/// Represents the state of HotelDetails in the application.
class HotelDetailsState extends Equatable {
  HotelDetailsState({this.hotelDetailsModelObj});

  HotelDetailsModel? hotelDetailsModelObj;

  @override
  List<Object?> get props => [
        hotelDetailsModelObj,
      ];
  HotelDetailsState copyWith({HotelDetailsModel? hotelDetailsModelObj}) {
    return HotelDetailsState(
      hotelDetailsModelObj: hotelDetailsModelObj ?? this.hotelDetailsModelObj,
    );
  }
}
