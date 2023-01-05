import 'package:flutter_bloc/flutter_bloc.dart';


class TextMakerCubit extends Cubit<String>{
  TextMakerCubit(String initialState) : super(initialState);
  upparCase(String a){

    emit(a.toUpperCase());
  }
}