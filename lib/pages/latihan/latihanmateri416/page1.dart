import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_puisi/bloc/latihan316.dart';
import 'package:media_puisi/pages/latihan/latihanmateri416/result.dart';
import 'package:media_puisi/styles/constanta.dart';

class Latihan416Page1 extends StatefulWidget {
  @override
  _Latihan416Page1State createState() => _Latihan416Page1State();
}

class _Latihan416Page1State extends State<Latihan416Page1> {
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Jawablah pertanyaan-pertanyaan di bawah ini dengan tepat!",
                    style: headingContent.copyWith(
                        fontSize: 18, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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

  Widget makeSoal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: grupSoal.map((data) {
        String _gruopValue = data.select;

        List<Widget> _multiple = List.generate(
            data.answer.length,
            (index) => RadioListTile(
                  activeColor: PrimaryColor,
                  value: data.answer[index].value,
                  groupValue: _gruopValue,
                  onChanged: (value) {
                    data.select = value;
                    setState(() {
                      _gruopValue = value;
                    });
                  },
                  dense: true,
                  title: Text(
                    data.answer[index].jawaban,
                    style: bodyContent,
                  ),
                ));

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              data.nomerSoal.toString() + ". " + data.soal,
              style: bodyContent,
            ),
            Column(
              children: _multiple,
            ),
            // for (Answer item in data.answer)
            //   RadioListTile(
            //     activeColor: PrimaryColor,
            //     value: item.value,
            //     groupValue: _gruopValue,
            //     onChanged: (value) {
            //       data.select = value;
            //       setState(() {
            //         _gruopValue = value;
            //       });
            //     },
            //     dense: true,
            //     title: Text(
            //       item.jawaban,
            //       style: bodyContent,
            //     ),
            //   )
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
    soal:
        "Tahap menafsirkan makna puisi merupakan tahap... dalam langkah-langkah memusikalisasikan puisi....",
    answer: [
      Answer(value: "A", jawaban: "Pertama"),
      Answer(value: "B", jawaban: "Utama"),
      Answer(value: "C", jawaban: "Kedua"),
      Answer(value: "D", jawaban: "Ketiga"),
      Answer(value: "E", jawaban: "Kelima"),
    ],
  ),
  Question(
    nomerSoal: 2,
    select: "",
    soal:
        "Deklamasi puisi adalah salah satu jenis pembacaan puisi yang menuntut pembaca untuk...guna mendalami penghayatan....",
    answer: [
      Answer(value: "A", jawaban: "Memikirkan puisi"),
      Answer(value: "B", jawaban: "Menghafal puisi"),
      Answer(value: "C", jawaban: "Membaca puisi"),
      Answer(value: "D", jawaban: "Menulis puisi"),
      Answer(value: "E", jawaban: "Mengerti puisi"),
    ],
  ),
  Question(
    nomerSoal: 3,
    select: "",
    soal:
        "Musikalisasi puisi merupakan salah satu jenis pembacaan puisi yang ditampilkan dengan memadukan...untuk memberikan penghayatan yang mendalam....",
    answer: [
      Answer(value: "A", jawaban: "Instrumen dan vokal"),
      Answer(value: "B", jawaban: "Instrumen dan puisi"),
      Answer(value: "C", jawaban: "Musik dan bait"),
      Answer(value: "D", jawaban: "Musik dan puisi"),
      Answer(value: "E", jawaban: "Suara dan puisi"),
    ],
  ),
  Question(
    nomerSoal: 4,
    select: "",
    soal:
        "Untuk melatih intonasi, volume, dan keras lembutnya suara perlu dilakukan latihan....",
    answer: [
      Answer(value: "A", jawaban: "Konsentrasi"),
      Answer(value: "B", jawaban: "Ekspresi"),
      Answer(value: "C", jawaban: "Pemanasan"),
      Answer(value: "D", jawaban: "Penghayatan"),
      Answer(value: "E", jawaban: "Olah vokal"),
    ],
  ),
  Question(
    nomerSoal: 5,
    select: "",
    soal:
        "Membaca puisi disertai dengan komposisi musik pengiring baik musik instrumental maupun musik vokal disebut....",
    answer: [
      Answer(value: "A", jawaban: "Musikalisasi terapan"),
      Answer(value: "B", jawaban: "Musikalisasi gabungan"),
      Answer(value: "C", jawaban: "Musikalisasi kolaborasi"),
      Answer(value: "D", jawaban: "Musikalisasi awal"),
      Answer(value: "E", jawaban: "Musikalisasi campuran"),
    ],
  ),
  Question(
    nomerSoal: 6,
    select: "",
    soal:
        "Untuk memberi perasaan atau penjiwaan pada puisi yang dibaca, perlu dilakukan latihan....",
    answer: [
      Answer(value: "A", jawaban: "Olah napas"),
      Answer(value: "B", jawaban: "Penjiwaan puisi"),
      Answer(value: "C", jawaban: "Ekspresi"),
      Answer(value: "D", jawaban: "Pemanasan"),
      Answer(value: "E", jawaban: "Penghayatan"),
    ],
  ),
  Question(
    nomerSoal: 7,
    select: "",
    soal:
        "Musikalisasi puisi yang ditampilkan dengan menjadikan syair puisi sebagai lirik lagu disebut....",
    answer: [
      Answer(value: "A", jawaban: "Musikalisasi konversi"),
      Answer(value: "B", jawaban: "Musikalisasi terapan"),
      Answer(value: "C", jawaban: "Musikalisasi awal"),
      Answer(value: "D", jawaban: "Musikalisasi syair puisi"),
      Answer(value: "E", jawaban: "Musikalisasi campuran"),
    ],
  ),
  Question(
    nomerSoal: 8,
    select: "",
    soal:
        "Musikalisasi puisi dengan menarasikan dan melagukan puisi disebut....",
    answer: [
      Answer(value: "A", jawaban: "Musikalisasi lagu puisi"),
      Answer(value: "B", jawaban: "Musikalisasi narasi"),
      Answer(value: "C", jawaban: "Musikalisasi campuran"),
      Answer(value: "D", jawaban: "Musikalisasi terapan"),
      Answer(value: "E", jawaban: "Musikalisasi gabungan"),
    ],
  ),
  Question(
    nomerSoal: 9,
    select: "",
    soal:
        "Di bawah ini yang bukan termasuk tahap-tahap dalam latihan deklamasi puisi adalah....",
    answer: [
      Answer(value: "A", jawaban: "Konsentrasi"),
      Answer(value: "B", jawaban: "Konversi"),
      Answer(value: "C", jawaban: "Pemanasan"),
      Answer(value: "D", jawaban: "Olah vokal"),
      Answer(value: "E", jawaban: "Ekspresi"),
    ],
  ),
  Question(
    nomerSoal: 10,
    select: "",
    soal: "Untuk menambah penghayatan puisi dapat dilakukan dengan latihan....",
    answer: [
      Answer(value: "A", jawaban: "Konsentrasi"),
      Answer(value: "B", jawaban: "Penghayatan"),
      Answer(value: "C", jawaban: "Pemanasan"),
      Answer(value: "D", jawaban: "Ekspresi"),
      Answer(value: "E", jawaban: "Senam mimik"),
    ],
  ),
];

List kunciJawaban = ["A", "B", "D", "E", "D", "E", "B", "C", "B", "D"];
