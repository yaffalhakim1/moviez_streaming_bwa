import 'package:flutter/material.dart';
import 'package:moviez_streaming/theme.dart';
import 'package:moviez_streaming/widget/featured.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget searchBar() {
      return Center(
        child: Container(
          width: 327,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.search,
                  color: bgColor1,
                ),
              ),
              hintText: 'search here',
              hintStyle: titleTextStyle.copyWith(
                  fontSize: 16, fontWeight: regular, color: bgColor1),
            ),
          ),
        ),
      );
    }

    Widget featuredFrom() {
      return SingleChildScrollView(
        child: Column(
          children: [
            FeaturedFromDisney(
              'Horror',
              'assets/cover5.png',
              'The Dark II',
            ),
            FeaturedFromDisney(
              'Heroes',
              'assets/cover6.png',
              'The Dark Knight',
            ),
            FeaturedFromDisney(
              'Action',
              'assets/cover7.png',
              'The Dark Tower',
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        width: 220,
        height: 50,
        margin: const EdgeInsets.only(top: 70),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: bgColor1,
        ),
        child: Center(
          child: Text('Suggest Movie',
              style: titleTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white)),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFBFBFD),
        body: SingleChildScrollView(
          child: Column(
            children: [
              searchBar(),
              featuredFrom(),
              button(),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
