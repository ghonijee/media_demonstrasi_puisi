import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class RambuAnalisisPuisi1 extends StatelessWidget {
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
          "Puisi Ke-1",
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
                "Hujan Bulan Juni-Sapardi Djoko Damono",
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
          "Hujan Bulan Juni",
          style: bodyContent.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        MakePuisi(0, "Tak ada yang lebih tabah"),
        MakePuisi(0, "Dari hujan bulan juni"),
        MakePuisi(0, "Dirahasiakannya rintik rindunya"),
        MakePuisi(0, "Kepada pohon berbunga itu"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Tak ada yang lebih bijak \nDari hujan bulan juni \nDihapusnya jejak kakinya \nYang ragu-ragu di jalan itu"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Tak ada yang lebih arif \nDari hujan bulan juni \nDibiarkannya yang tak terucapkan \nDiserap akar pohon bunga itu"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(40, "(Sapardi Djoko Damono, 1989)"),
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
          "Aku liris merasa tidak ada yang melebihi \nsifat tabahnya sosok (hujan bulan juni) yang \nmenyembunyikan rasa rindunya",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "tidak ada yang melebihi sifat bijaknya sosok \n(hujan bulan juni) yang menghapus seluruh \nkeraguan dalam rindunya",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "tidak ada yang melebihi sifat arifnya sosok \n(hujan bulan juni) yang membiarkan \nkerinduannya tak terucap dan lenyap ditelan \nwaktu",
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
          "Makna keseluruhan: \nAku liris merasakan kerinduan \nkepada  kekasihnya namun ia \ndengan bijak menyimpan rindunya \ndalam-dalam.",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Tema: kerinduan yang tak \ntersampaikan",
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
