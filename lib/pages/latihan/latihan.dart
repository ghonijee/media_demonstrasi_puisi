import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_puisi/bloc/latihan316.dart';
import 'package:media_puisi/pages/latihan/kelompok/daftarPuisi.dart';
import 'package:media_puisi/pages/latihan/latihanmateri316/page1.dart';
import 'package:media_puisi/pages/latihan/latihanmateri416/page1.dart';
import 'package:media_puisi/pages/latihan/model/nilaiLatihan.dart';
import 'package:media_puisi/styles/constanta.dart';

class Latihan extends StatefulWidget {
  @override
  _LatihanState createState() => _LatihanState();
}

class _LatihanState extends State<Latihan> {
  NilaiLatihan _getNilaiLatihan = NilaiLatihan();
  int nilaiLatihan3;
  int nilaiLatihan4;

  @override
  void initState() {
    super.initState();
    checkNilai();
  }

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
          "Latihan Materi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
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
      body: BlocProvider<LatihanBloc>(
        create: (context) => LatihanBloc(),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                "Latihan KD 3.16",
                style: headingContent,
              ),
              SizedBox(
                height: 5,
              ),
              MakeListText("Latihan Mandiri", Latihan316Page1()),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text(
                      "Nilai : $nilaiLatihan3",
                      style: bodyContent.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Latihan KD 4.16",
                style: headingContent,
              ),
              SizedBox(
                height: 5,
              ),
              MakeListText("Latihan Mandiri", Latihan416Page1()),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text(
                      "Nilai : $nilaiLatihan4",
                      style: bodyContent.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              MakeListText("Latihan Kelompok", DaftarPuisisKelompok()),
            ],
          ),
        ),
      ),
    );
  }

  Future checkNilai() async {
    nilaiLatihan3 = await _getNilaiLatihan.getNilai("latihan3");
    nilaiLatihan4 = await _getNilaiLatihan.getNilai("latihan4");
    setState(() {});
  }
}

class MakeListText extends StatelessWidget {
  final String text;
  final Widget nextPage;

  const MakeListText(this.text, this.nextPage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: ListTile(
            title: Text(
              text,
              style: bodyContent,
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Route url = MaterialPageRoute(builder: (_) => nextPage);
              Navigator.pushReplacement(context, url);
            },
          ),
        ),
        // Divider(),
      ],
    );
  }
}
