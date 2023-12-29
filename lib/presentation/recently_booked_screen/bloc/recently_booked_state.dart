// ignore_for_file: must_be_immutable

part of 'recently_booked_bloc.dart';

/// Represents the state of RecentlyBooked in the application.
class RecentlyBookedState extends Equatable {
  RecentlyBookedState({this.recentlyBookedModelObj});

  RecentlyBookedModel? recentlyBookedModelObj;

  @override
  List<Object?> get props => [
        recentlyBookedModelObj,
      ];
  RecentlyBookedState copyWith({RecentlyBookedModel? recentlyBookedModelObj}) {
    return RecentlyBookedState(
      recentlyBookedModelObj:
          recentlyBookedModelObj ?? this.recentlyBookedModelObj,
    );
  }
}
