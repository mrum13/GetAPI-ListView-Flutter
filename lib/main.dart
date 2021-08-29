import 'package:flutter/material.dart';
import 'package:flutter_get_listview_api/user_model.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "Tidak ada Data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Get Method in ListView"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(output),
              ElevatedButton(
                onPressed: () => User.getUsers("2").then((users){
                  output = "";
                  for(int i=0;i<users.length;i++){
                    output = output + "[ " + users[i].name + " ] ";
                  }
                  setState(() {
                    
                  });
                }), 
                child: Text("Get List Data"))
            ],
          ),
        ),
      ),
    );
  }
}