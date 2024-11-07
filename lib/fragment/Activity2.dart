import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity2 extends StatelessWidget{
  String msg;
  Activity2(
      this.msg,
      {super.key});
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.red,
    );
    return Scaffold(
      appBar: AppBar(title:Text(msg,style: TextStyle(color: Colors.white), ),
        backgroundColor: Colors.blue,

      ),
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("this from activity 2 to activity 1")));
      },
          child: Text("Go Activity1",style: TextStyle(color: Colors.white)),
          style:buttonStyle
      ),

    );
  }
}
class Activity1 extends StatelessWidget{
  String msg;
  Activity1(
      this.msg,
      {super.key}
      );
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.green,
    );
    return Scaffold(
      appBar: AppBar(title:Text(msg,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.amber,
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("this from activity 1 to activity 2")));
      },
          child: Text("Go Activity2",style: TextStyle(color: Colors.white)),
          style:buttonStyle
      ),
    );
  }
}