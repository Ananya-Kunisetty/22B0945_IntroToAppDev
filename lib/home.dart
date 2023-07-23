import 'package:flutter/material.dart';
import 'package:budget_tracker/total_list.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int total=48700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[100],
          title:const Text(
            'Budget Tracker',
            style:  TextStyle(
              color: Colors.deepPurple,
              fontSize: 30,
            ),
          ),
            centerTitle: true,
          elevation: 0.0,
        ),
        backgroundColor: Colors.deepPurpleAccent[100],
        body:  Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Icon(
                Icons.account_circle,
                size: 80,
                color: Colors.black, // Set the color to black
              ),
                SizedBox(height: 30,),
                Text("Welcome",
                style: TextStyle(
                  fontSize: 50,
                ),
                ),
                Text("Back!",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                    ),
              SizedBox(height: 50,),
              Container(

                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: Colors.purple[50],
                  child:Row(
                    children:[Text(
                      'Total:',
                      style: TextStyle(fontSize: 40.0,),
                    ),
                      SizedBox(width: 80,),
                      Text("$total",
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      )),
                      // DropdownButton(
                      //   icon: const Icon(Icons.keyboard_arrow_down), items: [], onChanged: (Object? value) {  },
                      // ),
                      // IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () { Navigator.pushNamed(context,'/total_list'); },)
                      IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => TotalList()),);},)
                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add,
          color: Colors.deepPurpleAccent[100],
          ),
          backgroundColor: Colors.white,
        ),
      );

  }
}
