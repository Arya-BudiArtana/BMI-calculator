import 'package:flutter/material.dart';


class AboutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Picture(),
              TextName(),
              TextWeb(),
              RowCardOne(),
              RowCardTwo(),
            ],
          ),
        ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage('images/arya.jpg'),
        ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'I Kadek Arya Budi Artana',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
      ),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class TextWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'https://medium.com/@arya.budi',
        style: TextStyle(
          color: Colors.amber,
          fontSize: 17,
        ),
      ),
    );
  }
}

class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>
      [
        Container(
        decoration: BoxDecoration(
        color: Colors.lightGreen,
      ),
          width: 170,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.green[700],
                  ),
                  Text(
                    'Dencarik',
                    style: TextStyle(color: Colors.green[700], fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
        decoration: BoxDecoration(
        color: Colors.lightBlue,
      ),
          width: 170,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Text(
                    'Undiksha',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RowCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
         decoration: BoxDecoration(
        color: Colors.pinkAccent,
      ),
          width: 170,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    size: 50,
                    color: Colors.red,
                  ),
                  Text(
                    'Game',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
           decoration: BoxDecoration(
        color: Colors.amberAccent,
      ),
          width: 170,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.movie,
                    size: 50,
                    color: Colors.amber,
                  ),
                  Text(
                    'Sci-Fi',
                    style: TextStyle(color: Colors.amber, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}