import 'package:bloc/bloc.dart';
import 'package:the_biller_app/data/bill_model.dart';
import 'package:meta/meta.dart';

import 'package:the_biller_app/services/firestore_crud.dart';

part 'make_bill_event.dart';
part 'make_bill_state.dart';

class MakeBillBloc extends Bloc<MakeBillEvent, MakeBillState> {
  late final FireStore _fireobj;

  MakeBillBloc() : super(MakeBillInitialState()) {
    on<CreateBillEvent>((event, emit) async {
      emit(MakeBillInitialState());
      try {
        // async function call to firebase
        await _fireobj.createBillInFireStore(event.bill);
      } on Error catch (e) {
        emit(FailedToCreateBillState(error: e));
      }
    });
  }
}
