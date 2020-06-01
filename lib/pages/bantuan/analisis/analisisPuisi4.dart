import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class RambuAnalisisPuisi4 extends StatelessWidget {
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
          "Puisi Ke-4",
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
                "Diponegoro - Chairil Anwar",
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
                    dataRowHeight: 800,
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
          "Diponegoro",
          style: bodyContent.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        MakePuisi(0, "Di masa pembangunan ini \nTuan hidup kembali"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0, "Dan bara kagum menjadi api"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Di depan sekali Tuan menanti \nTak gentar, Lawan banyaknya seratus \nkali \nPedang di kanan, keris di kiri \nBerselempang semangat yang tak bisa mati"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "MAJU \nIni barisan tak bergenderang-berpalu \nKepercayaan tanda menyerbu \nSekali berarti \nSudah itu mati"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "MAJU \nBagimu negeri \nMenyediakan api \nPunah di atas menghamba \nBinasa di atas ditinda"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0,
            "Sungguh pun dalam ajal baru tercapai \nJika hidup harus merasai"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(0, "Maju \nSerbu \nSerang \nTerjang"),
        SizedBox(
          height: 20.0,
        ),
        MakePuisi(40, "(Chairil Anwar, 1943)"),
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
          "Di masa perjuangan ini \nSemangat juang sebagaimana semangat \nDiponegoro menguat kembali",
          style: bodyContent,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Tuan memimpin pasukan di barisan depan \nBerani walau jumlah lawan seratus kali \nlebih banyak Dengan senjata seadanya \nDan hanya berbekal semangat yang tinggi.",
          style: bodyContent,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "MAJU! \nIni pasukan berperang dengan semangat \nKepercayaan berjuang sampai mati \nHidup hanya sekali jadikan berarti \nSetelah itu mati",
          style: bodyContent,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "MAJU! \nMereka maju perang dengan semangat \nkemerdekaan tidak peduli siapa yang menikmati \nkemerdekaan itu Semangat itulah yang \ndiharapkan aku liris kembali \nmuncul pada generasi penerus",
          style: bodyContent,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "tetap bersemangat untuk membangun negeri",
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
          "Makna keseluruhan: \nAku liris berharap generasi penerus \nmemiliki semangat yang sama \ndengan Tuan Diponegoro",
          style: bodyContent,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Tema: semangat perjuangan",
          style: bodyContent,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Suasana: Kagum",
          style: bodyContent,
        ),
      ],
    );
  }
}
