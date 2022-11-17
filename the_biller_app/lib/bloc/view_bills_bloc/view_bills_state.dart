part of 'view_bills_bloc.dart';

@immutable
abstract class ViewBillsState {}

class LoadingBillsState extends ViewBillsState {}

class LoadedBillsState extends ViewBillsState {
  final List<Bill> bills;
  LoadedBillsState({required this.bills});
}

class FailedToLoadBillsState extends ViewBillsState {
  final Error error;
  FailedToLoadBillsState({required this.error});
}
