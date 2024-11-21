// ignore_for_file: must_be_immutable

part of 'hotel_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HotelDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HotelDetailsEvent extends Equatable {}

/// Event that is dispatched when the HotelDetails widget is first created.
class HotelDetailsInitialEvent extends HotelDetailsEvent {
  @override
  List<Object?> get props => [];
}
