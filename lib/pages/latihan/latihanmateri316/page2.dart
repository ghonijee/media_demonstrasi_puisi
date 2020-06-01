import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_puisi/bloc/latihan316.dart';
import 'package:media_puisi/pages/latihan/latihanmateri316/page3.dart';
import 'package:media_puisi/styles/constanta.dart';

class Latihan316Page2 extends StatefulWidget {
  final LatihanBloc bloc;

  const Latihan316Page2({Key key, this.bloc}) : super(key: key);

  @override
  _Latihan316Page2State createState() => _Latihan316Page2State();
}

class _Latihan316Page2State extends State<Latihan316Page2> {
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
                        builder: (_) => Latihan316Page3(
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
          "Bacalah teks puisi berikut ini dengan cermat untuk menjawab pertanyaan nomor 4-6!",
          style: headingContent,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Pahlawan Tak Dikenal",
          style: bodyContent.copyWith(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Sepuluh tahun yang lalu ia terbaring \nTetapi bukan tidur, sayang \nSebuah lubang peluru bundar di dadanya \nSenyum bekunya mau berkata, kita sedang perang \nDia tidak ingat bilamana dia datang \nKedua lengannya memeluk senapan \nDia tidak tahu untuk siapa dia datang \nKemudian dia terbaring, tapi bukan tidur sayang \n\nWajah sunyi setengah tengadah \nMenangkap sepi padang senja \nDunia tambah beku di tengah derap dan suara menderu \nDia masih sangat muda \n\nHari itu 10 November, hujan pun mulai turun \nOrang-orang kembali ingin memandangnya \nSambil merangkai karangan bunga \nTapi yang nampak, wajah-wajahnya sendiri yang tak dikenalnya \n\nSepuluh tahun yang lalu dia terbaring \nTetapi bukan tidur, sayang \nSebuah lubang peluru bundar di dadanya \nSenyum bekunya mau berkata: aku sangat muda \n\n(Tono Sudarto Bachtiar)",
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
    nomerSoal: 4,
    select: "",
    soal: "Suasana yang terdapat dalam bait terakhir adalah....",
    answer: [
      Answer(value: "A", jawaban: "Sedih"),
      Answer(value: "B", jawaban: "Haru"),
      Answer(value: "C", jawaban: "Iba"),
      Answer(value: "D", jawaban: "Mencekam"),
      Answer(value: "E", jawaban: "Memelas"),
    ],
  ),
  Question(
    nomerSoal: 5,
    select: "",
    soal: "Tema yang terdapat dalam puisi di atas adalah.....",
    answer: [
      Answer(value: "A", jawaban: "Perjuangan"),
      Answer(value: "B", jawaban: "Kepahlawanan"),
      Answer(value: "C", jawaban: "Penjajahan"),
      Answer(value: "D", jawaban: "Peperangan"),
      Answer(value: "E", jawaban: "Perlawanan"),
    ],
  ),
  Question(
    nomerSoal: 6,
    select: "",
    soal: "Makna yang terkandung dalam puisi di atas adalah....",
    answer: [
      Answer(value: "A", jawaban: "Pahlawan yang tertembak penjajah"),
      Answer(value: "B", jawaban: "Hari pahlawan"),
      Answer(value: "C", jawaban: "Gugurnya pahlawan di medan perang"),
      Answer(value: "D", jawaban: "Perjuangan pahlawan mengusir penjajah"),
      Answer(value: "E", jawaban: "Kekejaman penjajah"),
    ],
  ),
];

List kunciJawaban = ["C", "B", "C"];
