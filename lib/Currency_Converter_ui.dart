import 'package:flutter/material.dart';

class CurrencyConverterUI extends StatefulWidget {
  CurrencyConverterUI({super.key});

  @override
  State<CurrencyConverterUI> createState() => _CurrencyConverterUIState();
}

class _CurrencyConverterUIState extends State<CurrencyConverterUI> {
  final TextEditingController textEditingController = TextEditingController();
  double result=0;

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(child: Text("Currency Converter")),
        backgroundColor: Colors.black
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 180,left: 10,right: 10),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  prefixIcon:Icon(Icons.attach_money,color: Colors.black,),
                  hintText: "Enter Amount in USD",
                  hintStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 20
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: TextButton(onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text)*83.1;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: Size(w*0.8,h*0.07)
              ),
                child: Text("Convert in INR",
                style: TextStyle(
                  fontSize: 30
                ),)
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 30 ,),
              child: Text("₹ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10 ,),
              child: Center(
                child: Text("( 1 USD= 83.1 Rupee )",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
