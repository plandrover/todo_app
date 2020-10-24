import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/data.dart';

class AddTaskScreen extends StatefulWidget {


  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
    String entry;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 30, left: 50, right: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)
          ),
              color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              onChanged: (value){
                entry = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'test',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                    width: 4.0
                  )
                )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              padding: EdgeInsets.all(8),
              child: Text(
                'Add task',
              ),
              onPressed: (){
                Provider.of<Data>(context, listen:false).addTask(entry);
                
                Navigator.pop(context);

              },

            )
          ],
        ),
        
      ),
    );
  }
}
