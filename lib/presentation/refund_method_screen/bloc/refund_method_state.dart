// ignore_for_file: must_be_immutable

part of 'refund_method_bloc.dart';

/// Represents the state of RefundMethod in the application.
class RefundMethodState extends Equatable {
  RefundMethodState({
    this.radioGroup = "",
    this.refundMethodModelObj,
  });

  RefundMethodModel? refundMethodModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        refundMethodModelObj,
      ];
  RefundMethodState copyWith({
    String? radioGroup,
    RefundMethodModel? refundMethodModelObj,
  }) {
    return RefundMethodState(
      radioGroup: radioGroup ?? this.radioGroup,
      refundMethodModelObj: refundMethodModelObj ?? this.refundMethodModelObj,
    );
  }
}
