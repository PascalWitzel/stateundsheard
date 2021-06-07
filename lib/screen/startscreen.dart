import 'package:flutter/material.dart';
import 'package:stateundsheard/model/datamodel.dart';

class StartScreen extends StatefulWidget {

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datenmanagement"),
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                DataModel.add("Rebecca");

              },
              child: Text("noch ein name"),
            ),

          ),
          Container(
            child: ElevatedButton(
              onPressed: () async {
                DataModel.laden();
              },
            child: Text("Daten laden"),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () async {
                setState(() {
                  DataModel.speichern();
                });
              },
              child: Text("Daten speichern"),
            ),
          ),
          ListView.builder(
              itemCount: DataModel.namen.length,
              itemBuilder: (context, index){
                return Text(DataModel.namen[index]);
          }),
        ],
      ),
    );
  }
}
