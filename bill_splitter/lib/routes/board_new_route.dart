import 'package:bill_splitter/utils/navigators.dart';
import 'package:flutter/material.dart';


class BoardNewRoute extends StatefulWidget {
  final String name;
  const BoardNewRoute({Key key, this.name}) : super(key: key);
  @override
  State<BoardNewRoute> createState() => _BoardNewRouteState();
}

class _BoardNewRouteState extends State<BoardNewRoute>{
  String name;

  @override
  void initState(){
    super.initState();
    name = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called,
    // for instance as done by the _incrementCounter method above.

    // Scaffold is another build in app that gives us a standard
    // mobile app layout. You'll most likely use this on every page
    // of your app
    return new Scaffold(
      // the bar accross the top of the app
      appBar: new AppBar(
        // State classes access properties on their
        // parent by calling widget.someProperty
        //  It's easier to think of StatefulWidgets and their corresponding
        // StateClasses as a single Widget.
        title: new Text('Board ' + name),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child
        // and positions it in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a List of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // mainAxisAlignment and crossAxisAlignment should feel very familiar
          // if you're used to using CSS's Flexbox or Grid.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'No bills yet',
            ),
          ],
        ),
      ),
      // Floating action buttons are special button
      floatingActionButton: new FloatingActionButton(
        onPressed: (() => navigateToMenu(context)),
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}