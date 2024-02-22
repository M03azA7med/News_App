import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text('Frist App'),
        actions: [
          IconButton(
            onPressed: () {
              print('Not IS Pressed');
            },
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
              onPressed: () {
                print('Clicked');
              },
              icon: Icon(
                Icons.notification_important_sharp,
              )),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(image:
                  NetworkImage('https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    color: Colors.black.withOpacity(0.5),
                    width: 200.0,
                    child: Text('Flower',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,

                    ),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
