import 'package:flutter/material.dart';

import '../../models/users/user_model.dart';


class Users extends StatelessWidget {
   List<UserModel> users = [
   UserModel(id: 1, Name: 'Ahmed ', Phone: 0100000),
   UserModel(id: 2, Name: 'Said ', Phone: 0100000),
   UserModel(id: 3, Name: 'Nor ', Phone: 0100000),
   UserModel(id: 4, Name: 'Santa ', Phone: 0100000),
   UserModel(id: 5, Name: 'Nada ', Phone: 0100000),
   UserModel(id: 6, Name: 'abbas ', Phone: 0100000),
   UserModel(id: 7, Name: 'moaz ', Phone: 0100000),
     UserModel(id: 7, Name: 'moaz ', Phone: 0100000),
     UserModel(id: 7, Name: 'moaz ', Phone: 0100000),
     UserModel(id: 7, Name: 'moaz ', Phone: 0100000),
     
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Users',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => buildUser(users[index]),
            separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[200],
                ),
            itemCount: users.length));
  }
}

Widget buildUser(UserModel users) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            child: Text(
              '${users.id}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${users.Name}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '${users.Phone}',
                style: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
