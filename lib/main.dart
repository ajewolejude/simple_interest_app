import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(

    title: "App Example",
    home: FavoriteCity(),
  )
  );
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteCity();
  }
}

class _FavoriteCity extends State<FavoriteCity> {

  String cityName = "";
  var _currencies = ['USD', 'NGA', 'PND', 'YEN', 'RUP', 'OTHER'];
  var _currentItemSelected = 'RUP';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget Example"),
      ),
      body: Container(

        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){
                setState(() {
                  cityName = userInput;
                });
              },
            ),
            DropdownButton<String>(

              items: _currencies.map((String dropDownStringItem){
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                );


              }).toList(),

              onChanged: (String newValueSelected){
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });
              },

              value: _currentItemSelected,



            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text("Your best city is $cityName",style: TextStyle(fontSize: 20.0),),


            )



          ],
        ),
      ),
    );
  }

}