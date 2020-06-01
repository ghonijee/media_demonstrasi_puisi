import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class PetunjukPenggunaan extends StatelessWidget {
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
          "Petunjuk",
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
        padding: EdgeInsets.fromLTRB(30, 10, 30, 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Petunjuk Penggunaan Media",
              style: headingContent,
            ),
            SizedBox(
              height: 10,
            ),
            MakeListText(
                "Media pembelajaran ini mencakup materi dan latihan soal pilihan ganda."),
            MakeListText("Baca dan ikuti setiap petunjuk/perintah yang ada."),
            MakeListText(
                "Pahami seluruh materi yang disajikan untuk menyelesaikan latihan soal di akhir materi."),
            MakeListText(
                "Kerjakan latihan soal dengan jumlah 10 butir di setiap KD."),
            MakeListText(
                "Pilihlah jawaban yang tepat karena jawaban kamu akan direkam dan dievaluasi pada akhir pembelajaran."),
            MakeListText(
                "Nilai yang ditargetkan pada media pembelajaran ini adalah 75,00 ke atas. Jika nilai yang kamu dapatkan kurang dari rata-rata maka kamu harus mengulangi."),
            MakeListText(
                "Tanyakan pada gurumu apabila menemukan kesulitan dalam menggunakan media pembelajaran ini."),
          ],
        ),
      ),
    );
  }
}

class MakeListText extends StatelessWidget {
  final String text;

  const MakeListText(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Transform.translate(
            offset: Offset(-10, 10),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black87),
            ),
          ),
          title: Transform.translate(
            offset: Offset(-25, 0),
            child: Text(
              text,
              style: bodyContent,
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
