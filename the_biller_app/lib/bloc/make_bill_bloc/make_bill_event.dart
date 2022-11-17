part of 'make_bill_bloc.dart';

@immutable
abstract class MakeBillEvent {}

class CreateBillEvent extends MakeBillEvent {
  final Bill bill;
  CreateBillEvent({required this.bill});
}
