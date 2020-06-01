import 'package:flutter/material.dart';
import 'package:media_puisi/pages/latihan/latihan.dart';
import 'package:media_puisi/pages/materi3/tujuanPembelajaran.dart';
import 'package:media_puisi/pages/materi4/tujuanPembelajaran.dart';
import 'package:media_puisi/styles/constanta.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        child: Stack(
          children: <Widget>[
            Container(
              height: height * 0.3,
              width: width,
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            Positioned(
              left: width * 0.07,
              top: height * 0.05,
              child: Image.asset(
                "assets/images/homeHeader.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: width * 0.07,
              top: height * 0.08,
              child: Text(
                "Media Pembelajaran \nDemonstrasi Puisi \nuntuk Siswa Kelas X",
                style: homeHeader,
                textAlign: TextAlign.right,
              ),
            ),
            Positioned(
              top: height * 0.275,
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Route url = MaterialPageRoute(
                          builder: (_) => TujuanPembelajaran316());
                      Navigator.push(context, url);
                    },
                    child: Container(
                      width: width * 0.86,
                      height: height * 0.17,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.07),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: width * 0.06),
                      decoration: BoxDecoration(
                        color: secondWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Materi 3.16",
                            style: titleHomeMenu,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Menganalisis",
                            style: bodyHomeMenu,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => TujuanPembelajaran416()));
                    },
                    child: Container(
                      width: width * 0.86,
                      height: height * 0.17,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.07),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: width * 0.06),
                      decoration: BoxDecoration(
                        color: secondWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Materi 4.16",
                            style: titleHomeMenu,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mendemonstrasikan",
                            style: bodyHomeMenu,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Latihan()));
                    },
                    child: Container(
                      width: width * 0.86,
                      height: height * 0.17,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.07),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.08, vertical: width * 0.06),
                      decoration: BoxDecoration(
                        color: secondWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Latihan",
                            style: titleHomeMenu,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mandiri & Kelompok",
                            style: bodyHomeMenu,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
