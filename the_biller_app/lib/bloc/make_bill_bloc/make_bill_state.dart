part of 'make_bill_bloc.dart';

@immutable
abstract class MakeBillState {}

class MakeBillInitialState extends MakeBillState {}

class MadeBillState extends MakeBillState {}

class FailedToCreateBillState extends MakeBillState {
  final Error error;
  FailedToCreateBillState({required this.error});
}
