import 'package:flutter/material.dart';
import 'bmi.dart';
class GetStarted extends StatelessWidget {
        @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blue,
                centerTitle: true,
                leading: Icon(
                  Icons.local_library,
                  color: Colors.white,
                ),
                title: Text('BMI Checker'),
                actions: [
                ],
              ),
              body: Container(
                color: Color(0xFFF2F2F2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: MediaQuery.of(context).size.height / 2.4,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              
              child: RaisedButton(
                onPressed: () {
                
                Navigator.push(
                  context,
                        MaterialPageRoute(builder: (context) => InputBMI()));
                },
                  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                padding: const EdgeInsets.all(0.0),
                //
                child: Container(
                  decoration: const BoxDecoration(

                      color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(80.0),
                    ),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 150.0,
                    minHeight: 36.0,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}