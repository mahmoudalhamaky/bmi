import 'package:bmi/bmi.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  Results({required String this.BmiResult, required String this.Interpretation,
    required String this.ResultText,})

  {

  }

  final String BmiResult ;
  final String Interpretation ;
  final String ResultText ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 2,
          children: [

            ReusableCard(colour: my1Color, onTap: (){},CardChild: Text(
              'Results',
              style: KresultStyle,
            ),),
            Expanded(
              child: Container(
                color:my1Color ,
                child: Row(
                  spacing: 50,
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Your Score',
                      // textAlign: TextAlign.start,
                      style: KlabelStyle,
                    ),
                    Text(
                      '$BmiResult',
                      style: KresultStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: my1Color,
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You are',
                      style: KlabelStyle,
                    ),
                    Text(
                      '$ResultText',
                      style: KresultStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: my1Color,
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Recommend',
                      style: KlabelStyle,
                    ),
                    Text(
                      '$Interpretation',
                      style: KlabelStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                 Navigator.pop(context);
                },
                child: Container(
                  child: Center(
                      child: Text(
                        'ReCalculate',
                        style: KresultStyle,
                      )),
                  margin: EdgeInsets.only(top: 40),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 8,
                  color: Color(0xffeb1555),
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}
