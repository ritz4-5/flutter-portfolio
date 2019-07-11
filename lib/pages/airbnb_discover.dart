import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

class TestPage extends StatefulWidget {
  TestPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
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
    );
  }

  ListView buildListView() {
    final List<Widget> list = <Widget>[TestPage()];

    return ListView.separated(
      padding: const EdgeInsets.all(8.0),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          child: ListTile(
            leading: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => list[index]),
                );
              },
              child: Container(
                width: 48,
                height: 48,
                padding: EdgeInsets.symmetric(vertical: 4.0),
                alignment: Alignment.center,
                child: CircleAvatar(),
              ),
            ),
            title: Text(list[index].toString()),
            dense: false,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
