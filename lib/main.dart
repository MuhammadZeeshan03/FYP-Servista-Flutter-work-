import 'package:flutter/material.dart';
import './constants.dart';
import './userprofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: containerColor,
          title: const Text('S E R V I S T A'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(11),
          ),
          child: ListView(
            children: const [
              UserProfileWidget(firstName: 'John Doe', areaName: 'Area Name'),
              UserProfileWidget(firstName: 'User-2', areaName: 'Area-2'),
              UserProfileWidget(firstName: 'User-3', areaName: 'Area-3'),
              UserProfileWidget(firstName: 'User-4', areaName: 'Area-4'),
              UserProfileWidget(firstName: 'User-3', areaName: 'Area-3'),
              UserProfileWidget(firstName: 'User-4', areaName: 'Area-4'),
            ],
          ),
        ),
      ),
    );
  }
}
