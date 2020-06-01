import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_puisi/bloc/latihan316.dart';
import 'package:media_puisi/pages/latihan/latihanmateri316/result.dart';
import 'package:media_puisi/styles/constanta.dart';

class Latihan316Page3 extends StatefulWidget {
  final LatihanBloc bloc;

  const Latihan316Page3({Key key, this.bloc}) : super(key: key);

  @override
  _Latihan316Page3State createState() => _Latihan316Page3State();
}

class _Latihan316Page3State extends State<Latihan316Page3> {
  List temp = [];
  LatihanBloc _bloc;
  String nomer1;

  @override
  void initState() {
    _bloc = widget.bloc;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Latihan Mandiri",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              heroTag: 'next',
              backgroundColor: PrimaryColor,
              onPressed: () {
                grupSoal.asMap().forEach((i, val) {
                  if (grupSoal[i].select == kunciJawaban[i]) {
                    _bloc.add(LatihanEvent.BENAR);
                  }
                  grupSoal[i].select = "";
                });

                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ResultLatihanMandiri(
                              bloc: _bloc,
                            )));
              },
              child: Icon(
                Icons.arrow_forward,
                color: secondWhite,
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: BlocBuilder<LatihanBloc, int>(
          bloc: _bloc,
          builder: (context, skor) {
            return SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  makePuisi(),
                  makeSoal(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            );
          }),
    );
  }

  Widget makePuisi() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(
          "Bacalah kutipan teks puisi berikut ini dengan cermat untuk menjawab pertanyaan nomor 7-10!",
          style: headingContent,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Ibu yang Tabah",
          style: bodyContent.copyWith(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Ibu itu mengasuh anak-anaknya sendirian \nsejak suaminya dipinjam negara untuk dijadikan \nkelinci percobaan sistem keamanan. \nSampai sekarang belum dikembalikan, \npadahal suaminya itu sebenarnya cuma pemberani \nyang lugu dan kadang-kadang nekat. Toh ibu itu \ntak pernah berhenti menunggu walau menunggu \nadalah luka. Dan ia memang perkasa. Menghadapi \nanak-anaknya yang nakal dan sering menyusahkan, \nia tak pernah kehilangan kesabaran. \n\nSetiap subuh ibu itu memungut embun \ndi daun, menampungnya dalam gelas, \ndan menghidangkannya kepada anak-anaknya \nsebelum mereka berangkat sekolah. \nMalam hari diam-diam ia memetik air mata, \nmenyimpannya dalam botol, meminumkannya \nkepada anak-anaknya bila mereka sakit... \n\n(Joko Pinurbo, 2002)",
          style: bodyContent.copyWith(fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget makeSoal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: grupSoal.map((data) {
        String _gruopValue = data.select;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              data.nomerSoal.toString() + ". " + data.soal,
              style: bodyContent,
            ),
            for (Answer item in data.answer)
              RadioListTile(
                activeColor: PrimaryColor,
                value: item.value,
                groupValue: _gruopValue,
                onChanged: (value) {
                  data.select = value;
                  setState(() {
                    _gruopValue = value;
                  });
                },
                dense: true,
                title: Text(
                  item.jawaban,
                  style: bodyContent,
                ),
              )
          ],
        );
      }).toList(),
    );
  }
}

class Question {
  int nomerSoal;
  String soal;
  String select;
  List answer;

  Question({this.nomerSoal, this.soal, this.answer, this.select});
}

class Answer {
  String value;
  String jawaban;

  Answer({this.value, this.jawaban});
}

List grupSoal = [
  Question(
    nomerSoal: 7,
    select: "",
    soal: "Suasana yang terdapat dalam puisi di atas adalah....",
    answer: [
      Answer(value: "A", jawaban: "Memelas"),
      Answer(value: "B", jawaban: "Terenyuh"),
      Answer(value: "C", jawaban: "Haru"),
      Answer(value: "D", jawaban: "Iba"),
      Answer(value: "E", jawaban: "Kagum"),
    ],
  ),
  Question(
    nomerSoal: 8,
    select: "",
    soal: "Puisi diatas memiliki tema....",
    answer: [
      Answer(value: "A", jawaban: "Perjuangan seorang Ibu"),
      Answer(value: "B", jawaban: "Kasih sayang seorang Ibu"),
      Answer(value: "C", jawaban: "Kebaikan seorang Ibu"),
      Answer(value: "D", jawaban: "Ketulusan seorang Ibu"),
      Answer(value: "E", jawaban: "Kesabaran seorang Ibu"),
    ],
  ),
  Question(
    nomerSoal: 9,
    select: "",
    soal: "Makna yang terkandung dalam puisi di atas adalah...",
    answer: [
      Answer(value: "A", jawaban: "Kesabaran Ibu membesarkan anak-anaknya"),
      Answer(value: "B", jawaban: "Ketulusan Ibu mengasuh anak-anaknya"),
      Answer(value: "C", jawaban: "Perjuangan Ibu membesarkan anak-anaknya"),
      Answer(
          value: "D",
          jawaban:
              "Ketabahan Ibu yang berjuang menghidupi anak-anaknya tanpa suami"),
      Answer(
          value: "E",
          jawaban: "Kekuatan Ibu membesarkan anak-anaknya tanpa suami"),
    ],
  ),
  Question(
    nomerSoal: 10,
    select: "",
    soal: "Larik 1-4 dalam bait kedua bermakna....",
    answer: [
      Answer(
          value: "A", jawaban: "Usaha seorang Ibu untuk mendapatkan makanan"),
      Answer(
          value: "B", jawaban: "Kasih sayang seorang Ibu kepada anak-anaknya"),
      Answer(value: "C", jawaban: "Kesabaran seorang Ibu untuk mencari makan"),
      Answer(
          value: "D",
          jawaban: "Perjuangan seorang Ibu untuk menghidupi anak-anaknya"),
      Answer(
          value: "E",
          jawaban:
              "Kekuatan seorang Ibu untuk menyambung hidup bersama anak-anaknya"),
    ],
  ),
];

List kunciJawaban = ["E", "A", "D", "D"];
