import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:formsandvalidation/secondp.dart';

void main() {
  runApp(MaterialApp(
    title: "Form Validation",
    home: formvaliidation(),
  ));
}

class formvaliidation extends StatefulWidget {
  const formvaliidation({Key? key}) : super(key: key);

  @override
  State<formvaliidation> createState() => _formvaliidationState();
}

class _formvaliidationState extends State<formvaliidation> {
  var checkuser = GlobalKey<FormState>();
  final isLoading=false;



      TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Validation")),
      body: Form(
          key: checkuser,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Name",
                    labelText: "Name"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Plese Enter Some Text";
                  } else {
                    Fluttertoast.showToast(
                        msg: "This is Center Short Toast",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Password",
                    labelText: "Password"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Plese Enter Some Number";
                  } else {
                    Fluttertoast.showToast(
                        msg: "Enter Number Correct",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    final isValid=checkuser.currentState!.validate();
                    if(!isValid){
                      return;
                    }
                    else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return secondp();
                      },));
                    }
                  },
                  child: Text("Login"))
            ],
          )),
    );
  }
}
