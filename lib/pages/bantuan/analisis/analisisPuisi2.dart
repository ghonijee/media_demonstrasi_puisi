import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class RambuAnalisisPuisi2 extends StatelessWidget {
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
          "Puisi Ke-2",
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
                "Keranda-Joko Pinurbo",
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
                    dataRowHeight: 600,
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
          "Keranda",
          style: bodyContent.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        MakePuisi(0,
            "Ranjang meminta kembali tubuh \nyang pernah dilahirkan dan diasuhnya \ndengan sepenuh cinta."),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "“Semoga anakku yang pemberani, \nyang jauh merantau ke negeri-negeri igauan, \nmenemukan jalan untuk pulang;  \npun jika aku sudah lapuk dan karatan.”"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Tapi tubuh sudah begitu jauh mengembara. \nKalau pun sesekali datang, ia datang  \nhanya untuk menabung luka. \nDan ketika akhirnya pulang,  \nia sudah mayat tinggal rangka."),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Bagai si buta yang renta dan terbata-bata \nia mengetuk-ngetuk pintu: “Ibu!”"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Ranjang yang demikian tegar lagi penyabar \nmemeluknya erat: “Aku rela jadi keranda \nuntukmu.”"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(40, " (Joko Pinurbo, 1996)"),
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
          "Aku liris bercerita tentang seorang ibu yang \nmengharapkan anak yang dilahirkan dan diasuhnya \ndengan penuh cinta kembali pulang",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Ibu itu berharap anaknya yang mengembara jauh \nkembali pulang walaupun dirinya sudah tua renta.",
          style: bodyContent,
        ),
        SizedBox(
          height: 70,
        ),
        Text(
          "Tapi, perjalanan anaknya sudah sangat jauh. \nKalau pun sesekali pulang, anaknya pulang \nDalam keadaan yang menyedihkan \nDan ketika akhirnya pulang, \nIa pulang meninggal dunia.",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Ia seperti sedang memanggil-manggil ibunya: \n“Ibu!”",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Ibu yang sangat tegar dan sabar \nMenerimanya kematian anaknya dengan penuh keikhlasan.",
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
          "Makna keseluruhan: \nKeihklasan seorang ibu dalam \nmenyayangi anaknya dan menerima \ndengan sepenuh hati kepulangan anaknya \nbagaimana pun keadaannya. ",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Tema: keikhlasan seorang ibu dalam \nmenyertai perjalanan hidup anaknya.",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Suasana: Haru",
          style: bodyContent,
        ),
      ],
    );
  }
}
