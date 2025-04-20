import 'package:bmi/calc_brain.dart';
import 'package:bmi/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'package:get/get.dart';

void updateColor() {
// statistics point of view there are two option male or female
  if (active) {
    maleColor = ActiveColor;
    femaleColor = InActiveColor;
  } else {
    maleColor = InActiveColor;
    femaleColor = ActiveColor;
  }
}

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI Calculator')),),
        body: SafeArea(
          child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
          Expanded(
            child: Row(
              spacing: 20,
              children: [
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      active = true;
                      updateColor();
                    });
                  },
                  colour: maleColor,
                  CardChild: Column(
                    spacing: 20,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 50,
                      ),
                      Text(
                        'Male',
                        style: KlabelStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      active = false;
                      updateColor();
                    });
                  },
                  colour: femaleColor,
                  CardChild: Column(
                    spacing: 20,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 50,
                      ),
                      Text(
                        'Female',
                        style: KlabelStyle,
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: ReusableCard(
                  CardChild: Column(
                    children: [
                      Text(
                        'Height',
                        style: KlabelStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '$height ',
                            style: KresultStyle,
                          ),
                          Text(
                            'CM',
                            style: KlabelStyle,
                          ),
                        ],
                      ),
                      Expanded(
                        child: SliderTheme(
                          data: SliderThemeData(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 10),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xffeb1555),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 0,
                            max: 240,
                            onChanged: (double value) {
                              setState(() {
                                height = value.toInt();
                              });
                              ;
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  onTap: () {},
                  colour: my1Color,
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              spacing: 50,
              children: [
                Expanded(
                    child: ReusableCard(
                  CardChild: Column(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style: KlabelStyle,
                      ),
                      Text(
                        '$weight',
                        style: TextStyle(fontSize: 25),
                      ),
                      Row(
                        spacing: 15,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icon(Icons.minimize),
                            ),
                          ),
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  onTap: () {},
                  colour: my1Color,
                )
                ),
                Expanded(
                    child: ReusableCard(
                  CardChild: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: KlabelStyle,
                      ),
                      Text(
                        '$age',
                        style: TextStyle(fontSize: 25),
                      ),
                      Row(
                        spacing: 15,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: IconButton(
          
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: Icon(Icons.minimize),
                            ),
                          ),
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  onTap: () {},
                  colour: my1Color,
                ))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Get.to(() => Results(
                BmiResult: calc.CalculateBMI()!.toUpperCase(),
                Interpretation:calc.GetInterpretation()!.toUpperCase() ,
                ResultText: calc.GetResult()!.toUpperCase(),
              ));
            },
            child: Container(
              child: Center(
                  child: Text(
                'Calculate',
                style: KresultStyle,
              )),
              margin: EdgeInsets.only(top: 40),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 8,
              color: Color(0xffeb1555),
            ),
          ),
                ],
              ),
        ));
  }
}
class ReusableCard extends StatelessWidget {
  ReusableCard({super.key, required this.colour, this.CardChild, required this.onTap});

  final Color colour;
  final Widget? CardChild;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: CardChild),
        height: //200,
            MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}