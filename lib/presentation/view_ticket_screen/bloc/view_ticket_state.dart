// ignore_for_file: must_be_immutable

part of 'view_ticket_bloc.dart';

/// Represents the state of ViewTicket in the application.
class ViewTicketState extends Equatable {
  ViewTicketState({this.viewTicketModelObj});

  ViewTicketModel? viewTicketModelObj;

  @override
  List<Object?> get props => [
        viewTicketModelObj,
      ];
  ViewTicketState copyWith({ViewTicketModel? viewTicketModelObj}) {
    return ViewTicketState(
      viewTicketModelObj: viewTicketModelObj ?? this.viewTicketModelObj,
    );
  }
}
