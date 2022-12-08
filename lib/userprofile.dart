import 'package:flutter/material.dart';
import './constants.dart';
import './titleSection.dart';

class UserProfileWidget extends StatelessWidget {
  final String firstName;
  final String areaName;
  const UserProfileWidget({
    required this.firstName,
    required this.areaName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(11),
        ),
        elevation: 20,
        color: Colors.white,
        child: Column(
          children: [
            titleSection(
              firstName: '$firstName',
              areaName: '$areaName',
            ),
            ButtonSection,
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
