import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarCodeGenerator extends StatefulWidget {
  const BarCodeGenerator({Key? key}) : super(key: key);

  @override
  State<BarCodeGenerator> createState() => _BarCodeGeneratorState();
}

class _BarCodeGeneratorState extends State<BarCodeGenerator> {

  final TextEditingController textController = TextEditingController();

  Widget myTextField(BuildContext context) => TextField(
    controller: textController,

    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 20,
    ),
    onSubmitted: (_) => setState(() {}),
    decoration: InputDecoration(
        fillColor: Colors.black,
        filled: true,
        hintText: "Enter Your Data",
        suffixIcon: Icon(Icons.done, color: Colors.amber),
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.amber),
        )
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("BarCode Generator", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                elevation: 6.0,
                shadowColor: Colors.amber,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: BarcodeWidget(
                    data: textController.text,
                    barcode: Barcode.code128(),
                    width: 200,
                    height: 200,
                    drawText: false,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: myTextField(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}





