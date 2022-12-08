import 'package:flutter/material.dart';
import './favouriteWidget.dart';

class titleSection extends StatelessWidget {
  final String firstName;
  final String areaName;
  const titleSection({required this.firstName, required this.areaName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/medium.jpg'),
              radius: 25,
            ),
          ),
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    "$firstName",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "$areaName",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/

          FavouriteWidget(),
        ],
      ),
    );
  }
}
