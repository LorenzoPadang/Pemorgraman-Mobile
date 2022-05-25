import 'package:flutter/material.dart';
import 'fonts.dart';
import 'register.dart';
import 'profile.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("                          EDUCAMP", style: body),
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
            width: 180,
            height: 180,
            margin: EdgeInsets.only(top: 10, left: 90, right: 48),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/EC1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220, left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Text("Username", style: title),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    style: body,
                    decoration: InputDecoration(
                      fillColor: Colors.white54,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Email/Phone Number',
                      hintStyle: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330, left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Text("Password", style: title),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    obscureText: true,
                    style: body,
                    decoration: InputDecoration(
                      fillColor: Colors.white54,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 470, left: 35, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.grey.shade100,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Login",
                            style: body,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550, left: 35, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.grey.shade100,
                  primary: Colors.red,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => register(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Register",
                            style: body,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
