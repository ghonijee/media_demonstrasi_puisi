import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class Tentang extends StatelessWidget {
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
                    Text("Tentang", style: homeHeader),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Pengembang",
                      style: headingBantuan,
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/um.png",
                  fit: BoxFit.fill,
                  width: 65,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 36),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            decoration: BoxDecoration(
              color: secondWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/tina.png"),
                Text(
                  "Tina Atusholekah merupakan Mahasiswi Jurusan Sastra Indonesia Universitas Negeri Malang. Ketertarikannya pada puisi menjadi dasar pengembangan ini. Dengan tujuan untuk menghasilkan produk aplikasi media pembelajaran demonstrasi puisi yang dapat menunjang pembelajaran peserta didik. Pengembang berharap, produk aplikasi media pembelajaran yang dikembangkan dapat bermanfaat dalam pembelajaran dengan berbagai penyempurnaan di masa mendatang.",
                  textAlign: TextAlign.center,
                  style: aboutDes,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
