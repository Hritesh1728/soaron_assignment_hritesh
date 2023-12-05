import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hritesh_s_application1/presentation/iphone_14_pro_max_269_screen/models/iphone_14_pro_max_269_model.dart';
part 'iphone_14_pro_max_269_event.dart';
part 'iphone_14_pro_max_269_state.dart';

/// A bloc that manages the state of a Iphone14ProMax269 according to the event that is dispatched to it.
class Iphone14ProMax269Bloc
    extends Bloc<Iphone14ProMax269Event, Iphone14ProMax269State> {
  Iphone14ProMax269Bloc(Iphone14ProMax269State initialState)
      : super(initialState) {
    on<Iphone14ProMax269InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProMax269InitialEvent event,
    Emitter<Iphone14ProMax269State> emit,
  ) async {}
}
