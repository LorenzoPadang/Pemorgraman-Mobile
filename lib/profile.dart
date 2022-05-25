import 'package:flutter/material.dart';
import 'package:uts/register.dart';
import 'fonts.dart';
import 'main.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("               EDUCAMP", style: body),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background4.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.blueGrey,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 24, right: 24),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Profile', style: title),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 240, right: 0),
            width: 150,
            height: 240,
            padding: EdgeInsets.all(2),
            child: Image(
              image: AssetImage('assets/images/Odnan.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 70, left: 20, right: 10),
            child: Text(
              "Name: Valent's Lorenzo Padang \n\nDOB: 26 Juni 1996 \n\nReligion: Christian \n\nSex: Male",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 210, left: 20, right: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text(
                      " : Taman Permata",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(Icons.email),
                    Text(
                      " : lorenzopadang@gmail.com",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text(
                      " : 0852558093xx",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 330, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: RaisedButton(
                        color: Colors.grey,
                        onPressed: () {},
                        child: Text('Education Background', style: body),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: RaisedButton(
                        color: Colors.grey,
                        onPressed: () {},
                        child: Text('Work Experience', style: body),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
