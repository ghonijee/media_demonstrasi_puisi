import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class RambuAnalisisPuisi3 extends StatelessWidget {
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
          "Puisi Ke-3",
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
                "Peringatan - Wiji Tukul",
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
          "Peringatan",
          style: bodyContent.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        MakePuisi(0,
            "Jika rakyat pergi \nKetika penguasa pidato \nKita harus hati-hati \nBarangkali penguasa putus asa"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Kalau rakyat bersembunyi  \nDan berbisik-bisik \nKetika membicarakan masalahnya sendiri \nPenguasa harus waspada dan belajar mendengar"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Bila rakyat tidak berani mengeluh \nItu berarti sudah gawat \nDan bila omongan penguasa \nTidak boleh dibantah \nKebenaran pasti terancam"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Apabila usul ditolak tanpa ditimbang \nBicara dibungkam kritik dibuang tanpa alasan \nDituduh subversif dan mengganggu keamanan \nMaka hanya ada satu kata \nLAWAN!"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(40, "(Wiji Thukul, 1986)"),
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
          "Aku liris berpendapat bahwa rakyat harus hati-hati \napabila rakyat pergi saat penguasa pidato \nMungkin penguasa akan putus asa",
          style: bodyContent,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "penguasa harus waspada apabila rakyat \nmembicarakan masalahnya sendiri dengan \nsembunyi-sembunyi dan menyelesaikan \nmasalahnya sendiri",
          style: bodyContent,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "keadaan sudah gawat apabila rakyat diam dan \npenguasa bersikap otoriter \nRakyat pasti merasa terancam dan rakyat akan \nmelakukan perlawanan",
          style: bodyContent,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "apabila aspirasi rakyat ditolak tanpa \ndipertimbangkan, bicara dibungkam, kritik \ndiabaikan tanpa alasan, dituduh menjatuhkan \nkekuasaan dan mengganggu keamanan penguasa \nharus siap-siap rakyat akan melakukan \nperlawanan.",
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
          "Makna keseluruhan: \npenguasa harus siap-siap menghadapi \nperlawanan rakyat apabila penguasa \nbertindak otoriter ",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Tema: kritik terhadap kepemimpinan \npemerintah.",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Suasana: Tegang",
          style: bodyContent,
        ),
      ],
    );
  }
}
