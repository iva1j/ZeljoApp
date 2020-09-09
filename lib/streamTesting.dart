import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StreamTester extends StatefulWidget {
  final TextEditingController controller = TextEditingController();
  @override
  _StreamTesterState createState() => _StreamTesterState();
}

class _StreamTesterState extends State<StreamTester> {
  inputOnButtonPressed() async {
    await FirebaseFirestore.instance
        .collection('fahreZeID')
        .doc('testID')
        .update({"inputField": widget.controller.text});
  }

  @override
  Widget build(BuildContext context) {
    print("PRINT");
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Container(
            child: TextFormField(
              controller: widget.controller,
            ),
            width: 300,
          ),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            onPressed: inputOnButtonPressed,
            child: Text("Input"),
          ),
          SizedBox(
            height: 50,
          ),
          StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("fahreZeID")
                  .doc('testID')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text(
                    'No Data...',
                  );
                } else {
                  final DocumentSnapshot item = snapshot.data;

                  return Text(item.data()['listenField'].toString());
                }
              }),
        ],
      )),
    );
  }
}
