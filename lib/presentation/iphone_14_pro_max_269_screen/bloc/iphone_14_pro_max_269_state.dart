// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_max_269_bloc.dart';

/// Represents the state of Iphone14ProMax269 in the application.
class Iphone14ProMax269State extends Equatable {
  Iphone14ProMax269State({this.iphone14ProMax269ModelObj});

  Iphone14ProMax269Model? iphone14ProMax269ModelObj;

  @override
  List<Object?> get props => [
        iphone14ProMax269ModelObj,
      ];
  Iphone14ProMax269State copyWith(
      {Iphone14ProMax269Model? iphone14ProMax269ModelObj}) {
    return Iphone14ProMax269State(
      iphone14ProMax269ModelObj:
          iphone14ProMax269ModelObj ?? this.iphone14ProMax269ModelObj,
    );
  }
}
