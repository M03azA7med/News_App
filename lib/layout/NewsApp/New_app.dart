import 'package:app_news_api/layout/NewsApp/cubit/states.dart';
import 'package:app_news_api/modules/app_news/search/search.dart';
import 'package:app_news_api/shared/components/components.dart';
import 'package:app_news_api/shared/cubit/cubit.dart';
import 'package:app_news_api/shared/network/remote/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'cubit/cubit.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (BuildContext context, NewsStates state) { },
      builder: (BuildContext context, NewsStates state) {
        return Scaffold(
          appBar: AppBar(

            title: Text('News_App'),
            actions: [
              IconButton(onPressed: (){
                navigateTo(context, searchScreen());

              },
                  icon: Icon(Icons.search)),
              IconButton(onPressed: (){
                AppCubit.get(context).changeAppMode();
              },
                  icon: Icon(Icons.dark_mode_outlined))
            ],
          ),
          bottomNavigationBar:BottomNavigationBar(
            items: NewsCubit.get(context).bottomItem ,
            currentIndex: NewsCubit.get(context).crruntindex,
            onTap: (index)
            {
            NewsCubit.get(context).bottomNav(index);
            },
          ),
          body: NewsCubit.get(context).screens[NewsCubit.get(context).crruntindex],
        );
      },

    );

  }
}