import 'package:flutter/material.dart';

const containerColor = Color(0xE97CD2D7);

var userImage = Image.asset(
  'assets/images/img.jpg',
  width: 300,
  height: 300,
);

var E_ButtonStyle = ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Color(0x9C4FB7C0),
    onPrimary: Colors.white,
  ),
  onPressed: () {},
  child: Text('Plumbing'),
);

Widget ButtonSection = Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Services',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          E_ButtonStyle,
          E_ButtonStyle,
          E_ButtonStyle,
        ],
      ),
    ],
  ),
);

var userCard = Card(
  child: Row(
    children: [
      ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image:
                    NetworkImage('https://googleflutter.com/sample_image.jpg'),
                fit: BoxFit.fill),
          ),
        ),
        title: const Text(
          'John Doe',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          'Area Name',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  ),
);
