import 'package:bloc/bloc.dart';

abstract class MyDataState {}

class MyDataInitial extends MyDataState {}

class MyDataLoaded extends MyDataState {
  final List<String> data;

  MyDataLoaded(this.data);
}

class GetAllDataCubit extends Cubit<MyDataState> {
  final List<String> _data = ['Item1', 'Item2', 'Item3 '];

  GetAllDataCubit() : super(MyDataInitial());

  List<String> emitData() {
    emit(MyDataLoaded(_data));
    return _data;
  }
}
