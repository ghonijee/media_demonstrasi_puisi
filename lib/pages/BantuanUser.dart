import 'package:flutter/material.dart';
import 'package:media_puisi/pages/bantuan/putunjuk.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:url_launcher/url_launcher.dart';

class BantuanUser extends StatefulWidget {
  @override
  _BantuanUserState createState() => _BantuanUserState();
}

class _BantuanUserState extends State<BantuanUser> {
  TextEditingController cariController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Petunjuk Pengguna",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              heroTag: 'home',
              backgroundColor: PrimaryColor,
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Icon(
                Icons.home,
                color: secondWhite,
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => PetunjukPenggunaan()));
              },
              leading: Icon(
                Icons.supervised_user_circle,
                size: 45,
                color: PrimaryColor,
              ),
              title: Text(
                "Petunjuk Siswa",
                style: listMenuBantuan,
              ),
              dense: true,
            ),
            Divider(),
            ListTile(
              dense: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              onTap: () {
                _petunjukGuru();
              },
              leading: Icon(
                Icons.account_circle,
                size: 45,
                color: PrimaryColor,
              ),
              title: Text(
                "Petunjuk Guru",
                softWrap: true,
                style: listMenuBantuan,
              ),
            ),
            Divider(),
          ],
        ),
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
