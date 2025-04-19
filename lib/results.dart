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
              'The Results',
              style: KresultStyle,
            ),),
            Row(
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
            Row(
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
            Row(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Recommend',
                  style: KlabelStyle,
                ),
                Text(
                  '$Interpretation',
                  style: KresultStyle,
                ),
              ],
            ),

          ],
        ),
      )
    );
  }
}
