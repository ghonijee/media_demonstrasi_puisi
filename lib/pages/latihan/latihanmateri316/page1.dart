import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_puisi/bloc/latihan316.dart';
import 'package:media_puisi/pages/latihan/latihanmateri316/page2.dart';
import 'package:media_puisi/styles/constanta.dart';

class Latihan316Page1 extends StatefulWidget {
  @override
  _Latihan316Page1State createState() => _Latihan316Page1State();
}

class _Latihan316Page1State extends State<Latihan316Page1> {
  List temp = [];
  LatihanBloc _bloc;
  String nomer1;

  @override
  void initState() {
    _bloc = LatihanBloc();
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
                        builder: (_) => Latihan316Page2(
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
          "Bacalah teks puisi berikut ini dengan cermat untuk menjawab pertanyaan nomor 1-3!",
          style: headingContent,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Puisi 1",
          style: bodyContent,
        ),
        Text(
          "Aku Ingin",
          style: bodyContent.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Aku ingin mencintaimu dengan sederhana: \nDengan kata yang tak sempat diucapkan \nKayu kepada api yang menjadikannya abu \n\nAku ingin mencintaimu dengan sederhana: \nDengan isyarat yang tak sempat disampaikan \nAwan kepada hujan yang menjadikannya tiada \n\n(Sapardi Djoko Damono, 1989)",
          style: bodyContent,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Puisi 2",
          style: bodyContent,
        ),
        Text(
          "Do'a",
          style: bodyContent.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 100,
            ),
            Text(
              "kepada pemeluk teguh",
              style: bodyContent,
            ),
          ],
        ),
        Text(
          "\nTuhanku \nDalam termangu \nAku masih menyebut namaMu \n\nBiar susah sungguh \nMengingat Kau penuh seluruh \n\ncayaMu panas suci \ntinggal kerdip lilin di kelam sunyi \n\nTuhanku \nAku hilang bentuk \nremuk \nTuhanku \nAku mengembara di negeri asing \n\nTuhanku \ndi pintuMu aku mengetuk \nAku tidak bisa berpaling \n\n(Chairil Anwar, 1943)",
          style: bodyContent,
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
    nomerSoal: 1,
    select: "",
    soal: "Suasana yang terdapat dalam puisi kedua adalah....",
    answer: [
      Answer(value: "A", jawaban: "Memelas"),
      Answer(value: "B", jawaban: "Haru"),
      Answer(value: "C", jawaban: "Sedih"),
      Answer(value: "D", jawaban: "Bahagia"),
      Answer(value: "E", jawaban: "Pasrah"),
    ],
  ),
  Question(
    nomerSoal: 2,
    select: "",
    soal: "Di bawah ini pasangan tema kedua puisi yang tepat adalah....",
    answer: [
      Answer(value: "A", jawaban: "Puisi 1: percintaan; puisi 2: taubat"),
      Answer(value: "B", jawaban: "Puisi 1: kerinduan; puisi 2: keagamaan"),
      Answer(value: "C", jawaban: "Puisi 1: kasih sayang; puisi 2: ketuhanan"),
      Answer(
          value: "D",
          jawaban: "Puisi 1: kesederhanaan cinta; puisi 2: keagamaan"),
      Answer(
          value: "E", jawaban: "Puisi 1: ketulusan cinta ; puisi 2: ketuhanan"),
    ],
  ),
  Question(
    nomerSoal: 3,
    select: "",
    soal: "Puisi pertama memiliki makna....",
    answer: [
      Answer(
          value: "A", jawaban: "Kesederhanaan cinta seseorang pada kekasihnya"),
      Answer(
          value: "B",
          jawaban:
              "Ketulusan cinta seseorang pada kekasihnya (mencintai apa adanya)"),
      Answer(value: "C", jawaban: "Kasih sayang seseorang pada kekasihnya"),
      Answer(value: "D", jawaban: "Keromantisan seseorang pada kekasihnya"),
      Answer(value: "E", jawaban: "Kerinduan seseorang pada kekasihnya"),
    ],
  ),
];

List kunciJawaban = ["A", "E", "B"];
