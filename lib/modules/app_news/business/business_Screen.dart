import 'package:app_news_api/layout/NewsApp/cubit/cubit.dart';
import 'package:app_news_api/layout/NewsApp/cubit/states.dart';
import 'package:app_news_api/shared/components/components.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class businessScreen extends StatelessWidget {
  const businessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
        builder: (context, state) {
          var list =NewsCubit.get(context).business;

          return ConditionalBuilder(
              condition: list.length> 0,
              builder: (context) =>
                  ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder:(context, index) => ArticleItem(list[index],context),
                separatorBuilder: (BuildContext context, int index) =>myDivider(),
                itemCount: 10,),
              fallback: (context) => Center(child: CircularProgressIndicator()),);
          },
        listener: (context, state)  {},) ;
  }
}
