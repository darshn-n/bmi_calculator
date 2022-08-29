import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.bmiResult,  required this.bmiResultMessage, required this.interpretation}) : super(key: key);

  final String bmiResult;
  final String bmiResultMessage;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 10.0,
          ),
          const Expanded(
            child: Text(
              'Your Result',
              style: kYourResultStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResultMessage.toUpperCase(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kResultMessageTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          bottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
