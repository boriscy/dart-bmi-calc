import 'package:flutter/material.dart';
import '../reusable_card.dart';
import '../calculate_button.dart';
import '../constants.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = Get.arguments;
    print(args);

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(22),
              child: Text('Your results', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(args['result'], style: kResultTextStyle),
                    Text(args['bmi'], style: kBmiTextStyle),
                    Text(args['interpretation'], style: kBodyStyle),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/');
                      },
                      child: CalculateButton(text: 'RE CALCULATE'),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
