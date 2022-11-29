import 'package:flutter/material.dart';


class secondp extends StatefulWidget {
  const secondp({Key? key}) : super(key: key);

  @override
  State<secondp> createState() => _secondpState();
}

class _secondpState extends State<secondp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second"),),
    );
  }
}
