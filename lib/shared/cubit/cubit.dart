import 'package:app_news_api/shared/network/local/cach_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
// to ge instace

  static AppCubit get(context)=>BlocProvider.of(context);

  bool isDark = false;

  void changeAppMode()
  {
    isDark = !isDark;
    CachHelper.putData(key: 'isDark', value: isDark).then((value) {
      emit(AppChangeModeState());

    });

  }
}