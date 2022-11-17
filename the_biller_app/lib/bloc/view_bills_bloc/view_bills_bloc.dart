import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:the_biller_app/data/bill_model.dart';
import 'package:the_biller_app/services/get_bills.dart';
import 'package:meta/meta.dart';

part 'view_bills_event.dart';
part 'view_bills_state.dart';

class ViewBillsBloc extends Bloc<ViewBillsEvent, ViewBillsState> {
  ViewBillsBloc() : super(LoadingBillsState()) {
    on<LoadBillsEvent>((event, emit) async {
      emit(LoadingBillsState());
      await Future.delayed(const Duration(seconds: 1));
      try {
        final billList = getBills();
        emit(LoadedBillsState(bills: billList));
      } on Error catch (e) {
        emit(FailedToLoadBillsState(error: e));
      }
    });
  }
}
