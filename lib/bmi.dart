import 'package:flutter/material.dart';

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
              spacing: 50,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xff1D1E33),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: EdgeInsets.all(15),
            
                ),
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xff1D1E33),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: EdgeInsets.all(15),
            
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,

              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xff1D1E33),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: EdgeInsets.all(15),
            
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              spacing: 50,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xff1D1E33),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: EdgeInsets.all(15),
            
                ),
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xff1D1E33),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: EdgeInsets.all(15),
            
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
