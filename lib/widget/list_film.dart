import 'package:flutter/material.dart';

import '../theme.dart';

// ignore: must_be_immutable
class ListFilm extends StatelessWidget {
  String title;
  String imageUrl;
  String genre;

  ListFilm(this.genre, this.imageUrl, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 24),
      width: 300,
      height: 300,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: Image.asset(
              imageUrl,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: titleTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                        color: bgColor1,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      genre,
                      style: subtitleTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular, color: greyColor),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/rating.png',
                width: 98,
              )
            ],
          )
        ],
      ),
    );
  }
}
