import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    /// yaha pe state wo hain jo current value hain, upr itne define hain to ye int hain, agr kuch aur hota toh wo hota
    emit(state + 1);
  }

  void decrement() {
    if(state == 0){
      return;
    }
    emit(state - 1);
  }
}
