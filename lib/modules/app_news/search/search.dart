import 'package:app_news_api/layout/NewsApp/cubit/cubit.dart';
import 'package:app_news_api/layout/NewsApp/cubit/states.dart';
import 'package:app_news_api/shared/components/components.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class searchScreen extends StatelessWidget {

  var searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NewsCubit,NewsStates>(
      listener: (BuildContext context, NewsStates state) {  },
      builder: (BuildContext context, NewsStates state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Search Screen'),
          ),
          body: Column(
              children:
              [
              Padding(
              padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            controller: searchController,
            onChanged: (value){
              NewsCubit.get(context).getSearch(value);

            },

            validator:(valu) {
              if (valu!.isEmpty) {
                return 'Search  is reqiuerd ';
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              labelText: 'Search',
              // errorText: _validate ? 'Don\'t Have Account' : null,
            ),
          ),
        ),

        ConditionalBuilder(
        condition: NewsCubit.get(context).search.length>0,
        builder: (context) =>
        ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder:(context, index) => ArticleItem(NewsCubit.get(context).search[index],context),
        separatorBuilder: (BuildContext context, int index) =>myDivider(),
        itemCount: 10,),
        fallback: (context) => Center(child: CircularProgressIndicator()),)
        ],
        ),
        );
      },

    );
  }
}
