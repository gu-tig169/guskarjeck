import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text("Lägg till uppgifter"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 250.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: _textField(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120.0, top: 20),
                child: Row(
                  children: [
                    _addButton(),
                    _textAdd(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//textfält för inmatning av ny todo, lägg till funktionalitet
Widget _textField() {
  return TextField(
    decoration: InputDecoration(
      hintText: 'Lägg till uppgift...',
      border: OutlineInputBorder(),
    ),
  );
}

Widget _addButton() {
  return IconButton(
      iconSize: 40.0,
      icon: Icon(Icons.add),
      onPressed: () {
        print("You pressed add");
      });
}

Widget _textAdd() {
  return Text(
    "Add",
    style: TextStyle(
      fontSize: 18.0,
    ),
  );
}
