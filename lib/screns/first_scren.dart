import 'package:calculter/widget/custom_button.dart';
import 'package:flutter/material.dart';

import 'constans/constans.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String exp = '';
  String history = '';
  double num1 = 0;
  double num2 = 0;
  String op = '';

  void numClick(String btntxt) {
    if (btntxt == 'Ac') {
      setState(() {
        exp = '';
        history = '';
      });
      num1 = 0;
      num2 = 0;
    } else if (btntxt == 'C') {
      exp = '';
    } else if (btntxt == '+' ||
        btntxt == '/' ||
        btntxt == '%' ||
        btntxt == '-' ||
        btntxt == 'x') {
      op = btntxt;
      num1 = double.parse(exp);
      exp = '';
      history = num1.toString();
      history += btntxt;
    } else if (btntxt == '.') {
      if (exp.contains('.')) {
      } else {
        setState(() {
          exp += btntxt;
        });
      }
    } else if (btntxt == '=') {
      num2 = double.parse(exp);
      history += exp;
      switch (op) {
        case '+':
          {
            exp = (num1 + num2).toString();
          }
          break;
        case 'x':
          {
            exp = (num1 * num2).toString();
          }
          break;
        case '-':
          {
            exp = (num1 - num2).toString();
          }
          break;
        case '/':
          {
            num2 == 0
                ? exp = 'Invaild Operaton '
                : exp = (num1 / num2).toString();
          }
          break;
        case '%':
          {
            exp = (num1 % num2).toString();
          }
          break;
        default:
          break;
      }
      setState(() {
        exp;
      });
    } else {
      exp += btntxt;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculater'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              margin: Constants.txtmargin,
              alignment: Constants.txtAliment,
              child: Text(history, style: Constants.style1)),
          const Divider(
            color: Colors.grey,
            thickness: 5,
          ),
          Container(
              margin: Constants.txtmargin,
              alignment: Constants.txtAliment,
              child: Text(exp, style: Constants.style1)),
          Row(
            children: [
              Custum_Button(
                btncolor: Colors.white,
                btntxt: 'Ac',
                callBack: numClick,
                //flex: 2,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: 'C',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '%',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '/',
                callBack: numClick,
              )
            ],
          ),
          Row(
            children: [
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '7',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Colors.white,
                btntxt: '8',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '9',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: 'x',
                callBack: numClick,
              )
            ],
          ),
          Row(
            children: [
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '4',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '5',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Colors.white,
                btntxt: '6',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '-',
                callBack: numClick,
              )
            ],
          ),
          Row(
            children: [
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '1',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '2',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '3',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Colors.white,
                btntxt: '+',
                callBack: numClick,
              )
            ],
          ),
          Row(
            children: [
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '0',
                callBack: numClick,
                flex: 3,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '.',
                callBack: numClick,
              ),
              Custum_Button(
                btncolor: Color.fromARGB(255, 118, 214, 204),
                btntxt: '=',
                callBack: numClick,
              ),
            ],
          )
        ],
      ),
    );
  }
}
