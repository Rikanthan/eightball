import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home:cover(),
));


class cover extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      home: Scaffold
        (
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title:Text('Ask me anything'),
          backgroundColor: Colors.blue,
        ),
        body: page(),
      ),

    );
  }

}

class page extends StatefulWidget
{
  @override
  _ballpage createState() => _ballpage();


}
class _ballpage extends State<page>
{
  @override
  Widget build(BuildContext context)
  {
    int c=Random().nextInt(5);

    return Center(
      child: Row
        (
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$c.png'),
            onPressed: ()
              {
                setState(() {
                  c=Random().nextInt(5);

                });
              },
            ),
          )
        ],
      ),
    );



  }
}



