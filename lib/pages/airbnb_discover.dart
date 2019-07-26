import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

class AirbnbDiscover extends StatefulWidget {
  AirbnbDiscover({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _AirbnbDiscoverState createState() => _AirbnbDiscoverState();
}

class _AirbnbDiscoverState extends State<AirbnbDiscover> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          //title: Text(widget.title),
          ),
      body: buildListView(),
    );
  }

  ListView buildListView() {
    return ListView(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            child: Image.network('https://img-cdn.guide.travel.co.jp/article/208/33783/A0DBEE03A1004A579A38CCD2115A8ECC_LL.jpg'),
          ),
          Positioned.fill(child: Container(color: Colors.grey.withOpacity(0.2))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("San Juan",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                  )
              ),

              SizedBox(height: 20),
              Text("This weekend",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  )
              )
            ],
          ),
        ]),
        Container(
          child: Image.network('https://img-cdn.guide.travel.co.jp/article/208/33783/A0DBEE03A1004A579A38CCD2115A8ECC_LL.jpg'),
        ),
      ],

    );
  }
}
