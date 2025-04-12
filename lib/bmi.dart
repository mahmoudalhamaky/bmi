import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

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
        body: Column(
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
                      SizedBox(height: 3,),
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 50,
                        ),
                        Text('Male',style: KlabelStyle,)
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
                        SizedBox(height: 3,),
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 50,
                        ),
                        Text('Female',style: KlabelStyle,)
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
                    CardChild: Text('180',style:KresultStyle ,),
                    onTap: (){},
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
                   onTap: (){},
                colour: my1Color,
              )),
              Expanded(
                  child: ReusableCard(
                    onTap: (){},
                colour: my1Color,

              ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 8,
          color: Color(0xffeb1555),
        ),
      ],
    ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({super.key, required this.colour, this.CardChild, required this.onTap});
  final Color colour;
  final Widget? CardChild;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){} ,
      child: Container(
        child: Center(child: CardChild),
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 3,
        decoration:
            BoxDecoration(color: colour, borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
