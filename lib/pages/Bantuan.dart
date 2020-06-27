import 'package:flutter/material.dart';
import 'package:media_puisi/pages/bantuan/putunjuk.dart';
import 'package:media_puisi/pages/bantuan/rambuAnalisis.dart';
import 'package:media_puisi/pages/bantuan/tips.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:url_launcher/url_launcher.dart';

import 'BantuanSiswa.dart';

class Bantuan extends StatefulWidget {
  @override
  _BantuanState createState() => _BantuanState();
}

class _BantuanState extends State<Bantuan> {
  TextEditingController cariController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: height * 0.22,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            decoration: BoxDecoration(
              color: PrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bantuan",
                      style: headingBantuan,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Temukan solusi kamu!",
                      style: subHeadingBantuan,
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/icon-ask.png",
                  fit: BoxFit.fill,
                  width: 65,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => BantuanSiswa()));
            },
            child: Container(
              height: 75,
              width: 350,
              color: secondWhite,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.supervised_user_circle,
                    size: 35,
                    color: PrimaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Petunjuk Siswa",
                    style: listMenuBantuan,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              _petunjukGuru();
            },
            child: Container(
              height: 85,
              width: 350,
              color: secondWhite,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 35,
                    color: PrimaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Petunjuk Guru",
                    softWrap: true,
                    style: listMenuBantuan,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _petunjukGuru() async {
    const url =
        "https://drive.google.com/file/d/1_Zo-wTeYWDdqRwamdZx19oscdtqiR0Lp/view?usp=drivesdk";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Tidak bisa membuka petunjuk guru";
    }
  }
}
