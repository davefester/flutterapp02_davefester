import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  bool _enabled = false;
  String _msg1 = '';
  String _resetBtnText = '';
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    Object onPressed1() {
      if (_enabled) {
        
        return () {
          _count += 1;

          setState(() {            
            _msg1 = 'Clicked ' + _count.toString();
          });
        };
      } else {
        print('onPressed1 returning NULL');
        return null;
      }
    }

    Object resetCount(){
      if  (_enabled) {

        return (){
          setState(() {
            _count = 0;
            _msg1 = 'Click Me';  
          });
        };
      } else {
        return null;
      }
      
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Button Functionality Demo'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('enable functionality'),
                Switch(
                    value: _enabled,
                    onChanged: (bool onChangedValue) {
                      print('onChangedValue is $onChangedValue');
                      setState(() {
                        _enabled = onChangedValue;
                        if (_enabled) {
                          _msg1 = 'Click Me';
                          _resetBtnText = 'Reset';
                          print('_enabled is true');
                        } else {
                          _msg1 = '';
                          _resetBtnText = '';
                          print('_enabled is false');
                        }
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 8,
                    textColor: Colors.red.shade100,
                    color: Colors.redAccent,
                    highlightColor: Colors.blue,
                    splashColor: Colors.green.shade300,
                    padding: EdgeInsets.all(20.0),
                    onPressed: onPressed1(),
                    child: Text(_msg1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 8,
                    textColor: Colors.blue.shade100,
                    color: Colors.blueAccent,
                    highlightColor: Colors.red,
                    splashColor: Colors.green.shade300,
                    padding: EdgeInsets.all(20.0),
                    onPressed: resetCount(),
                    child: Text(_resetBtnText),
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
