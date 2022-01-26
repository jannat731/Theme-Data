import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _switch=false;
  ThemeData _dark= ThemeData(brightness: Brightness.dark);
  ThemeData _light= ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark: _light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark/Light Theme'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lightbulb,size: 90,color: Colors.amberAccent,),
              SizedBox(height: 30,),
              Text('Change Theme',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.cyan,letterSpacing:2),
              ),
              Switch(value: _switch, onChanged:(_newvalue){
                setState(() {
                  _switch= _newvalue;
                });
              }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

