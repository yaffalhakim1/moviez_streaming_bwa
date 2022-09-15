import 'package:flutter/material.dart';

import '../theme.dart';

// ignore: must_be_immutable
class FeaturedFromDisney extends StatefulWidget {
  String title;
  String imageUrl;
  String genre;

  FeaturedFromDisney(this.genre, this.imageUrl, this.title, {Key? key})
      : super(key: key);

  @override
  State<FeaturedFromDisney> createState() => _FeaturedFromDisneyState();
}

class _FeaturedFromDisneyState extends State<FeaturedFromDisney> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, top: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.imageUrl,
              width: 100,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: titleTextStyle.copyWith(
                      fontSize: 20, fontWeight: bold, color: bgColor1),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.genre,
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, color: greyColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/rating.png',
                  width: 98,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
