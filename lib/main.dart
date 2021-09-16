import 'package:flutter/material.dart';
import'package:math_expressions/math_expressions.dart';

main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Calculator', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String equation = '0';
  String result = '0';
  String expression = '0';

buttonPressed(buttonText){
  print(buttonText);
}

  Widget keyPadButton(buttonText, buttonColor) {
    return TextButton(
      // Text
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(15),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),//RoundedRectangleBorder
      ),
      onPressed: () {
        buttonPressed(buttonText);
      },
      child: Text(
        buttonText, 
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  Widget operatorButton(buttonText) {
    return TextButton(
      // Text
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(15),
        backgroundColor: Colors.blue,
        shape: CircleBorder()),
      onPressed: () {

      },
      child: Text(
        buttonText, 
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 38, 52, 1),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[ 
                Text(
                  result,
                  style: TextStyle(color: Colors.grey, fontSize: 32),
                ),
                SizedBox(height: 15), //Test
                Spacer(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        keyPadButton('7', Color.fromRGBO(40, 51, 73, 1)),
                        keyPadButton('8', Color.fromRGBO(40, 51, 73, 1)),
                        keyPadButton('9', Color.fromRGBO(40, 51, 73, 1)),
                        operatorButton('+'),
                      ],
                    ), // Row
                    SizedBox(
                      
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        keyPadButton('4', Color.fromRGBO(40, 51, 73, 1)),
                        keyPadButton('5', Color.fromRGBO(40, 51, 73, 1)),
                        keyPadButton('6', Color.fromRGBO(40, 51, 73, 1)),
                        operatorButton('+'),

                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         keyPadButton('3', Color.fromRGBO(40, 51, 73, 1)),
                        keyPadButton('2', Color.fromRGBO(40, 51, 73, 1)),
                        keyPadButton('1', Color.fromRGBO(40, 51, 73, 1)),
                       operatorButton('+'),
                                              
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
