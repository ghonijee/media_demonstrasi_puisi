import 'package:flutter/material.dart';
import 'package:media_puisi/pages/latihan/latihan.dart';
import 'package:media_puisi/styles/constanta.dart';

class ContohAnalisis extends StatelessWidget {
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
          "Puisi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Text(
                "Contoh Hasil Analisis Suasana, Tema, dan Makna",
                style: headingContent,
              ),
            ),
            Divider(
              height: 20,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: DataTable(
                    dataRowHeight: 450,
                    columns: [
                      DataColumn(
                        label: Text(
                          "Teks Puisi",
                          style: headingContent.copyWith(fontSize: 18),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "Makna Larik/Bait",
                          style: headingContent.copyWith(fontSize: 18),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "Totalitas Makna",
                          style: headingContent.copyWith(fontSize: 18),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(
                          TextPuisi(),
                        ),
                        DataCell(
                          MaknaPuisi(),
                        ),
                        DataCell(
                          TotalitasMakna(),
                        ),
                      ])
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
          ],
        ),
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
          FloatingActionButton(
              heroTag: "next",
              backgroundColor: PrimaryColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Latihan())); //pergi ke soal
              },
              child: Icon(Icons.library_books, color: secondWhite)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class TextPuisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Salju",
          style: bodyContent,
        ),
        SizedBox(
          height: 10.0,
        ),
        MakePuisi(0, "Ke manakah pergi"),
        MakePuisi(20, "Mencari matahari"),
        MakePuisi(40, "Ketika salju turun"),
        MakePuisi(60, "Pohon kehilangan daun"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0, "Ke manakah jalan"),
        MakePuisi(20, "Mencari lindungan"),
        MakePuisi(40, "Ketika tubuh kuyup"),
        MakePuisi(60, "Dan pintu tertutup"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0, "Ke manakah lari"),
        MakePuisi(20, "Mencari api"),
        MakePuisi(40, "Ketika bara hati"),
        MakePuisi(60, "Padam tak berarti"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0, "Ke manakah pergi"),
        MakePuisi(20, "Selain mencuci diri"),
      ],
    );
  }
}

class MakePuisi extends StatelessWidget {
  final double indent;
  final String text;

  const MakePuisi(this.indent, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: indent),
        Text(
          text,
          style: bodyContent,
        ),
      ],
    );
  }
}

class MaknaPuisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Text(
          "Aku liris merasa bingung mencari \npetunjuk (matahari) ketika \ndiri merasa hilang arah (kegelapan)",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Aku liris merasa bingung mencari \ntempat berlindung ketika diri \npenuh salah dan dosa (tubuh kuyup) \nsementara tidak ada jalan lain",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "aku liris merasa bingung \nmencari petunjuk (api) \nketika hati putus asa",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Aku liris pada akhirnya menyadari \nbahwa tidak ada cara lain untuk \nmencari petunjuk selain bertaubat \nkepada Allah (mencuci diri).",
          style: bodyContent,
        ),
      ],
    );
  }
}

class TotalitasMakna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          "Makna keseluruhan: \nKebingungan aku liris dalam mencari \npetunjuk dan perlindungan, namun \npada akhirnya ia menyadari \nbahwa tidak ada cara selain \nbertaubat kepada Allah untuk \nmendapatkan petunjuk dan \nperlindungan.",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Tema: taubat kepada Allah",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Suasana: Sedih",
          style: bodyContent,
        ),
      ],
    );
  }
}
