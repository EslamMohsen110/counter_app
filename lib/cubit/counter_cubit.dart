import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int incrementAPoint = 0;
  int incrementBPoint = 0;
void incrementTeam(String nameTeam,int buttonIncrement){
  if(nameTeam == 'A'){
    incrementAPoint+=buttonIncrement;
    emit(CounterAIncrementState());
  }else{
    incrementBPoint+=buttonIncrement;
    emit(CounterBIncrementState());
  }
}
void zeroTeam(){
  incrementAPoint=0;
  incrementBPoint=0;
}
  // void incrementATeam(int buttonAIncrement) {
  //
  //   incrementAPoint += buttonAIncrement;
  //   emit(CounterAIncrementState());
  // }
  // void incrementBTeam(int buttonBIncrement) {
  //   incrementBPoint += buttonBIncrement;
  //   emit(CounterBIncrementState());
  // }
}
