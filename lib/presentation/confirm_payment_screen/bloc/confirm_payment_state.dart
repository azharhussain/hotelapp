// ignore_for_file: must_be_immutable

part of 'confirm_payment_bloc.dart';

/// Represents the state of ConfirmPayment in the application.
class ConfirmPaymentState extends Equatable {
  ConfirmPaymentState({this.confirmPaymentModelObj});

  ConfirmPaymentModel? confirmPaymentModelObj;

  @override
  List<Object?> get props => [
        confirmPaymentModelObj,
      ];
  ConfirmPaymentState copyWith({ConfirmPaymentModel? confirmPaymentModelObj}) {
    return ConfirmPaymentState(
      confirmPaymentModelObj:
          confirmPaymentModelObj ?? this.confirmPaymentModelObj,
    );
  }
}
