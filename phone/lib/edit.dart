import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './main.dart';

class EditData extends StatefulWidget {
  final List list;
  final int index;

  EditData({this.list, this.index});

  @override
  _EditDataState createState() => new _EditDataState();
}

class _EditDataState extends State<EditData> {
  TextEditingController controllerName;
  TextEditingController controllerPrice;
 
  void editData() {
    var url = "http://10.0.2.2/xphone/edit_phone.php";
    http.post(url, body: {
      "id": widget.list[widget.index]['id'],
      "phone_name": controllerName.text,
      "price": controllerPrice.text,
    });
  }

  @override
  void initState() {
    controllerName = new TextEditingController(
        text: widget.list[widget.index]['phone_name']);
    controllerPrice =
        new TextEditingController(text: widget.list[widget.index]['price']);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDIT DATA"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerName,
                  decoration: new InputDecoration(
                      hintText: "Merek HP", labelText: "Merek Hp"),
                ),
               
                new TextField(
                  controller: controllerPrice,
                  decoration: new InputDecoration(
                      hintText: "Harga", labelText: "Harga"),
                      keyboardType: TextInputType.number,
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("EDIT DATA"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    editData();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Home()));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
