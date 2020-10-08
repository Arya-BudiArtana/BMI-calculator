import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'about.dart';
import 'package:intl/intl.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  int tanggal;
  int bulan;
  int tahun;
  String nama;
  String _valGender;
  List _listGender = ["Perempuan", "Laki-Laki"];
  int year = 0;
  getDateToday() {
    var now = new DateTime.now();
    var format = new DateFormat('yyyy');
    String dateFormat = format.format(now);
    var parse = int.parse(dateFormat);
    setState(() {
      year = parse;
    });
  }

  @override
  Widget build(BuildContext context) {
    getDateToday();
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: Icon(
          Icons.local_library,
          color: Colors.white,
        ),
        title: Text('BMI Checker'),
        actions: [
        IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutRoute()),
              );
            },
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/bmi1.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.orange,
                                primaryColorDark: Colors.orange),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  nama = txt;
                                });
                              },
                              keyboardType: TextInputType.text,
                              maxLength: 100,
                          decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.person,
                            color: Colors.blue[800],
                          ),

                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                          ),
                          labelText: "Nama: ",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.orange,
                                primaryColorDark: Colors.orange),
                            child: new DropdownButtonFormField(
                              items: _listGender.map((value) {
                                return DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _valGender = value;
                                });
                              },
                          decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.wc,
                            color: Colors.blue[800],
                          ),

                          focusedBorder: UnderlineInputBorder(

                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                          ),
                          labelText: "Jenis Kelamin: ",

                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                          Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.orange,
                                primaryColorDark: Colors.orange),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  bulan = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 2,
                            decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.date_range,
                            color: Colors.blue[800],
                          ),
  
                          focusedBorder: UnderlineInputBorder(

                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                          ),
                          labelText: "Tanggal: ",

                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.orange,
                                primaryColorDark: Colors.orange),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  bulan = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 2,

                          decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.date_range,
                            color: Colors.blue[800],
                          ),

                          focusedBorder: UnderlineInputBorder(

                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                          ),
                          labelText: "Bulan ",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.orange,
                                primaryColorDark: Colors.orange),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tahun = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 4,
                              decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.date_range,
                            color: Colors.blue[800],
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                          ),
                          labelText: "Tahun ",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.orange),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tinggi = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.blueAccent)),

                                  labelText: 'Tinggi',
                                  prefixIcon: const Icon(
                                    Icons.border_color,
                                    color: Colors.blueAccent,
                                  ),
                                  prefixText: ' ',
                                  suffixText: 'Cm',
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.orange),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  berat = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.blueAccent)),

                                  labelText: 'Berat',
                                  prefixIcon: const Icon(
                                    Icons.border_color,
                                    color: Colors.blue,
                                  ),
                                  prefixText: ' ',
                                  suffixText: 'Kg',
                                  suffixStyle:
                                      const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            
              Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
              onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMIResult(
                                tinggi_badan: tinggi,
                                berat_badan: berat,
                                nama_user: nama,
                                jenis_kelamin: _valGender,
                                tanggal: tanggal,
                                bulan: bulan,
                                tahun: tahun,
                                year_now: year)),
                      );
                    },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0),
              ),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF13E3D2),
                      Color(0xFF5D74E2)
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(80.0),
                  ),
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 350,
                    minHeight: 56.0,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'HITUNG',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
