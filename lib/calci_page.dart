import 'package:flutter/material.dart';
import 'calci_console.dart';
import 'calci_icon_button.dart';
import 'calci_text_button.dart';
import 'constants.dart';

class CalciPage extends StatefulWidget {
  @override
  _CalciPageState createState() => _CalciPageState();
}

class _CalciPageState extends State<CalciPage> {

  String typedString = "0";
  String output = "0";
  String operator = "";
  double num1 = 0;
  double num2 = 0;
  bool shouldPerformOperation = false;

  buttonTapped({@required String buttonText}){
    if(buttonText == "c"){
      num1 = 0;
      num2 = 0;
      output = "0";
      operator = "";
      typedString = "0";
      shouldPerformOperation = false;
    }
    else if(buttonText == "."){
      if(output.contains('.')){
        return;
      }else{
        output = output + buttonText;
        typedString = typedString + buttonText;
      }
    }
    else if(buttonText == "x" || buttonText == "+" || buttonText == "-" || buttonText == "/" || buttonText == "%"){
      if(shouldPerformOperation){
        num2 = double.parse(output);
        if(operator == "x"){
          output = (num1*num2).toString();
        }
        if(operator == "+"){
          output = (num1+num2).toString();
        }
        if(operator == "-"){
          output = (num1-num2).toString();
        }
        if(operator == "/"){
          output = (num1/num2).toString();
        }
        if(operator == "%"){
          output = (num1%num2).toString();
        }
        operator = "";
        output = removeDecimalZeroFormat(double.parse(output));
        typedString = removeDecimalZeroFormat(double.parse(output));
      }
      num1 = double.parse(output);
      shouldPerformOperation = true;
      output = "0";
      operator = buttonText;
      typedString = typedString + buttonText;
    }
    else if(buttonText == "="){
      num2 = double.parse(output);
      if(operator == "x"){
        output = (num1*num2).toString();
      }
      if(operator == "+"){
        output = (num1+num2).toString();
      }
      if(operator == "-"){
        output = (num1-num2).toString();
      }
      if(operator == "/"){
        output = (num1/num2).toString();
      }
      if(operator == "%"){
        output = (num1%num2).toString();
      }
      operator = "";
      output = removeDecimalZeroFormat(double.parse(output));
      typedString = removeDecimalZeroFormat(double.parse(output));
    }
    else{
      output = output + buttonText;
      typedString = typedString + buttonText;
    }
    print(output);
    print(typedString);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('Calci'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
              child: CalciConsole(text: typedString,)
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CalciTextButton(buttonText: 'c',color: appColor,onTapped: (){buttonTapped(buttonText: 'c');}),
                      CalciIconButton(iconData: Icons.backspace,color: appColor,onTapped: (){}),
                      CalciTextButton(buttonText: '%',color: appColor,onTapped: (){buttonTapped(buttonText: '%');}),
                      CalciTextButton(buttonText: '/',color: appColor,onTapped: (){buttonTapped(buttonText: '/');}),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CalciTextButton(buttonText: '7',onTapped: (){buttonTapped(buttonText: '7');}),
                      CalciTextButton(buttonText: '8',onTapped: (){buttonTapped(buttonText: '8');}),
                      CalciTextButton(buttonText: '9',onTapped: (){buttonTapped(buttonText: '9');}),
                      CalciTextButton(buttonText: 'x',color: appColor,onTapped: (){buttonTapped(buttonText: 'x');}),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CalciTextButton(buttonText: '4',onTapped: (){buttonTapped(buttonText: '4');}),
                      CalciTextButton(buttonText: '5',onTapped: (){buttonTapped(buttonText: '5');}),
                      CalciTextButton(buttonText: '6',onTapped: (){buttonTapped(buttonText: '6');}),
                      CalciTextButton(buttonText: '-',color: appColor,onTapped: (){buttonTapped(buttonText: '-');}),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CalciTextButton(buttonText: '1',onTapped: (){buttonTapped(buttonText: '1');}),
                      CalciTextButton(buttonText: '2',onTapped: (){buttonTapped(buttonText: '2');}),
                      CalciTextButton(buttonText: '3',onTapped: (){buttonTapped(buttonText: '3');}),
                      CalciTextButton(buttonText: '+',color: appColor,onTapped: (){buttonTapped(buttonText: '+');}),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CalciIconButton(iconData: Icons.collections_bookmark,color: appColor,onTapped: (){}),
                      CalciTextButton(buttonText: '.',onTapped: (){buttonTapped(buttonText: '.');}),
                      CalciTextButton(buttonText: '0',onTapped: (){buttonTapped(buttonText: '0');}),
                      CalciTextButton(buttonText: '=',color: appColor,onTapped: (){buttonTapped(buttonText: '=');}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
