import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => new _TestState();
}

class _TestState extends State<Test> {

  PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        controller: _pc,
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        body: _body(),
      ),
    );
  }

  Widget _body(){
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Open"),
            onPressed: () => _pc.open(),
          ),
          RaisedButton(
            child: Text("Close"),
            onPressed: () => _pc.close(),
          ),
          RaisedButton(
            child: Text("Show"),
            onPressed: () => _pc.show(),
          ),
          RaisedButton(
            child: Text("Hide"),
            onPressed: () => _pc.isPanelAnimating(),
          ),
        ],
      ),
    );
  }



}
