import 'package:flutter/material.dart';
import 'package:budget_tracker/home.dart';
import 'package:budget_tracker/Items.dart';
import 'package:budget_tracker/items_card.dart';

Widget _popUp(BuildContext context){
  return new AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    backgroundColor: Colors.deepPurple,
  title: Center(child: const Text('New Entry',style: TextStyle(color: Colors.white,),)),
    content: const SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text('Category:',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          )),
          SizedBox(height:20,),
          Text('Price:',
            style: TextStyle(
            fontSize: 20,color: Colors.white,),)
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.check,color: Colors.white,),
      ),
    ],
  );
}

class TotalList extends StatefulWidget {


  @override
  State<TotalList> createState() => _TotalListState();
}

class _TotalListState extends State<TotalList> {


  List<Item> items=[
   Item(name:"Groceries" ,amount:"-300"),
    Item(name:"Bills" ,amount:"-1000"),
    Item(name:"Salary" ,amount:"+50000"),

  ];
  int total = 48700;

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

      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Column(
              children: [
                Center(
                  child: Container(

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
                           IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {  },)
                          // IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => TotalList()),);},)
                        ],
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 50.0,),
                Column(
                  children: items.map((item) => ItemCard(
                      item: item,
                      delete: (){
                        setState(() {
                          items.remove(item);
                        });
                      }
                  )).toList(),
                ),

              ],
            ),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context) => _popUp(context));
        },
        child: Icon(Icons.add,
          color: Colors.deepPurpleAccent[100],
        ),
        backgroundColor: Colors.white,
      ),
        );

  }
}

