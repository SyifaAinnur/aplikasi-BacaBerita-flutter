import 'dart:ui';
import 'package:apk_pertama/berita.dart';
import 'package:apk_pertama/theme.dart';
import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => new _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xfffbb448),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          Container(
            width: double.infinity,
            height: 285,
            margin: EdgeInsets.only(top: 130),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/logo1.png'))
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Selamat Datang di Berita Harian',
              style: TextStyle(
                fontSize: 24,
                color: kWhiteColor,
                fontWeight: semiBold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'baca berita ter-update setiap harinya',
              style: TextStyle(
                fontSize: 15,
                fontWeight: semiBold,
                color: Colors.white70,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 180,
              height: 55,
              margin: EdgeInsets.only(
                top: 25,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Berita()
                  ));
                },
                style: TextButton.styleFrom(
                  backgroundColor: kbottom,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius),
                  ),
                ),
                child: Text(
                  'Mulai',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}