import 'package:flutter/material.dart';
import 'package:moviez_streaming/second_page.dart';
import 'package:moviez_streaming/theme.dart';
import 'package:moviez_streaming/widget/featured.dart';
import 'package:moviez_streaming/widget/list_film.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moviez',
                  style: titleTextStyle.copyWith(
                      fontSize: 28, fontWeight: bold, color: bgColor1),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Watch much easier',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: regular, color: greyColor),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/search_button.png',
                width: 22,
                color: bgColor1,
              ),
            ),
          ],
        ),
      );
    }

    Widget featured() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ListFilm(
              'Action, Crime',
              'assets/cover1.png',
              'John Wick 4',
            ),
            ListFilm(
              'Music, Drama',
              'assets/cover1.png',
              'Bohemian Rhapsody',
            ),
          ],
        ),
      );
    }

    Widget titleFrom() {
      return Container(
        padding: const EdgeInsets.only(top: 30, left: 24),
        child: Text(
          'From Disney',
          style: titleTextStyle.copyWith(
              fontWeight: FontWeight.bold, fontSize: 28, color: bgColor1),
        ),
      );
    }

    Widget featuredFrom() {
      return SingleChildScrollView(
        child: Column(
          children: [
            FeaturedFromDisney(
              'History, war',
              'assets/cover3.png',
              'Mulan Session',
            ),
            FeaturedFromDisney(
              'Sci-Fic',
              'assets/cover4.png',
              'Beauty and The Beast',
            ),
            FeaturedFromDisney(
              'Sci-Fic',
              'assets/cover4.png',
              'Beauty and The Beast',
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              featured(),
              titleFrom(),
              featuredFrom(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
