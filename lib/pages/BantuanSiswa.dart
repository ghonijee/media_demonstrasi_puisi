import 'package:flutter/material.dart';
import 'package:media_puisi/pages/bantuan/putunjuk.dart';
import 'package:media_puisi/pages/bantuan/rambuAnalisis.dart';
import 'package:media_puisi/pages/bantuan/tips.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:url_launcher/url_launcher.dart';

class BantuanSiswa extends StatefulWidget {
  @override
  _BantuanSiswaState createState() => _BantuanSiswaState();
}

class _BantuanSiswaState extends State<BantuanSiswa> {
  TextEditingController cariController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: cariController,
              autofocus: false,
              textInputAction: TextInputAction.search,
              onEditingComplete: _searchGoogle,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                suffix: IconButton(
                  onPressed: _searchGoogle,
                  icon: Icon(Icons.search),
                ),
                hintText: "Cari di sini...",
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => PetunjukPenggunaan()));
            },
            child: Container(
              height: 75,
              width: 350,
              color: secondWhite,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.format_list_numbered,
                    size: 35,
                    color: PrimaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Petunjuk Penggunaan",
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => TipsDeklamasiMusikalisasi()));
            },
            child: Container(
              height: 85,
              width: 350,
              color: secondWhite,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.queue_music,
                    size: 35,
                    color: PrimaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Tips Deklamasi & \nMusikalisasi Puisi",
                    softWrap: true,
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => RambuAnalisisPuisiKelompok()));
            },
            child: Container(
              height: 85,
              width: 350,
              color: secondWhite,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.warning,
                    size: 35,
                    color: PrimaryColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Rambu Analisis Puisi",
                    softWrap: true,
                    style: listMenuBantuan,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  _searchGoogle() async {
    const url = "https://google.com/search?q=";
    String search = url + cariController.text;
    if (await canLaunch(search)) {
      await launch(search);
    } else {
      throw "Tidak bisa melakukan pencarian";
    }
  }
}
