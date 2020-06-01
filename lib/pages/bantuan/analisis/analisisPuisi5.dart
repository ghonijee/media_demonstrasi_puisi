import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class RambuAnalisisPuisi5 extends StatelessWidget {
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
          "Puisi Ke-5",
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
                "Kangen - W.S Rendra",
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kangen",
          style: bodyContent.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        MakePuisi(0,
            "Kau tak akan mengerti \nBagaimana kesepianku menghadapi \nkemerdekaan tanpa cinta \nKau tak akan mengerti segala lukaku \nKarena cinta telah sembunyikan \npisaunya."),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Membayangkan wajahmu adalah \nsiksa \nKesepian adalah ketakutan dalam \nkelumpuhan \nEngkau telah menjadi racun bagi \ndarahku \nBila aku dalam kangen dan sepi \nItulah berarti: \n“Aku tungku tanpa api.”"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(40, "(W.S Rendra, 1961)"),
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
          "Aku liris berpendapat bahwa \nkekasihnya tidak memahami \npenderitaannya karena cinta",
          style: bodyContent,
        ),
        SizedBox(
          height: 80,
        ),
        Text(
          " Ia tersiksa dengan rasa rindu \npada kekasihnya ",
          style: bodyContent,
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "Ia merasa bahwa kekasihnya telah \nmenyatu dalam jiwanya",
          style: bodyContent,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Ia menderita (kesepian) ketika \nkangen pada kekasihnya",
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
          height: 30,
        ),
        Text(
          "Makna keseluruhan: \nPerasaan aku liris yang tersiksa \ndan menderita karena merindukan \nkekasihnya.",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Tema: kerinduan aku liris yang \namat dalam kepada kekasihnya",
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
