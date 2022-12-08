import 'package:flutter/material.dart';

class FavouriteWidget extends StatefulWidget {
  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  bool isFavourite = true;
  var favoriteCount = 4;

  void toggleFavourite() {
    setState(() {
      if (isFavourite) {
        favoriteCount -= 1;
        isFavourite = false;
      } else {
        favoriteCount += 1;
        isFavourite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (isFavourite
                ? const Icon(
                    Icons.star,
                  )
                : const Icon(
                    Icons.star_border,
                  )),
            color: Color.fromARGB(212, 184, 134, 100),
            onPressed: () => toggleFavourite(),
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$favoriteCount'),
          ),
        ),
      ],
    );
  }
}
