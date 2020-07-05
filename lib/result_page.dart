import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

enum BodyType { Overweight, Normal, Underweight }

class ResultPage extends StatelessWidget {
  final BodyType result;
  final double bmi;
  final String feedback;
  ResultPage({this.bmi, this.result, this.feedback});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  'Your Results',
                  style: kHeightNumber,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: kActiveCardColor,
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        result.toString().substring(9),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        bmi.toString(),
                        style: kHeightNumber,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          feedback,
                          style: kLargeButtonText,
                        ),
                      ),
                    ),
                  )
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
                width: double.infinity,
                height: 80,
                color: Color(0xFFEA1556),
                child: Center(
                    child: Text(
                  'RECALCULATE',
                  style: kLargeButtonText,
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
