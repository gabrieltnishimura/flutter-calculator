import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const BV_BLUE = 0xff5774d0;
const WHITE = 0xff000000;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        theme: ThemeData(
          fontFamily: 'Open Sans',
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(BV_BLUE),
            bottomOpacity: 0.0,
            elevation: 0.0,
          ),
          backgroundColor: Color(BV_BLUE),
          body: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Container(
                  child: Text('Quanto você quer guardar? ',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w900)),
                ),
                Expanded(
                    child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 40, color: Colors.white30),
                      hintText: 'R\$0'),
                )),
              ],
            ),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  OutlineButton(
                    borderSide: BorderSide(color: Colors.red),
                    child: new Text(
                      '+ R\$ 50',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: null,
                  ),
                  OutlineButton(
                    child: new Text(
                      '+ R\$ 100',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: null,
                  ),
                  OutlineButton(
                    child: new Text(
                      '+ R\$ 1.697,45',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: null,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
