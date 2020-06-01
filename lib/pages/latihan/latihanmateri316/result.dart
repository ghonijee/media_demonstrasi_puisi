import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_puisi/bloc/latihan316.dart';
import 'package:media_puisi/pages/latihan/latihan.dart';
import 'package:media_puisi/pages/latihan/latihanmateri316/page1.dart';
import 'package:media_puisi/pages/latihan/model/nilaiLatihan.dart';
import 'package:media_puisi/styles/constanta.dart';

class ResultLatihanMandiri extends StatelessWidget {
  final NilaiLatihan _getNilaiLatihan = NilaiLatihan();

  final LatihanBloc bloc;

  ResultLatihanMandiri({Key key, this.bloc}) : super(key: key);

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
      body: BlocBuilder(
          bloc: bloc,
          builder: (context, state) {
            _getNilaiLatihan.setNilai("latihan3", state);
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    "assets/images/result.png",
                    width: 180,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Nilai latihan \nmandiri:",
                    style: headingContent.copyWith(fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "$state",
                    style: headingContent.copyWith(fontSize: 36),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: PrimaryColor,
                      onPressed: () {
                        Route url =
                            MaterialPageRoute(builder: (_) => Latihan());
                        Navigator.pushReplacement(context, url);
                      },
                      child: Text(
                        "Kembali ke Latihan",
                        style: btnTextPrimary,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: RaisedButton(
                      elevation: 0,
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: secondWhite,
                      onPressed: () {
                        Route url = MaterialPageRoute(
                            builder: (_) => Latihan316Page1());
                        Navigator.pushReplacement(context, url);
                      },
                      child: Text(
                        "Ulangi Latihan 3.16",
                        style: btnTextPrimary.copyWith(
                            color: PrimaryColor, fontFamily: "OpenSans"),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
