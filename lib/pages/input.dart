import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import '../reusable_card.dart';
import '../icon_card.dart';
import '../constants.dart';
import '../plus_minus_card.dart';
import '../calculate_button.dart';
import 'package:get/get.dart';

enum Gender { male, female }
Gender selectedGender;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

double _currentHeight = 165;
double _weight = 40;
double _age = 15;

class _InputPageState extends State<InputPage> {
  setGender(Gender gen) {
    setState(() {
      selectedGender = gen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setGender(Gender.male);
                    },
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: IconCard(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setGender(Gender.female);
                    },
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: IconCard(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Expanded(
                child: Column(
                  children: [
                    Text('HEIGHT', style: kLabelStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(_currentHeight.round().toString(),
                            style: kBigNumberStyle),
                        Text('cm', style: kLabelStyle),
                      ],
                    ),
                    Slider(
                        value: _currentHeight,
                        activeColor: Color(0xff6b117f),
                        inactiveColor: Color(0x996b117f),
                        max: 250,
                        min: 100,
                        onChanged: (double value) {
                          setState(() {
                            _currentHeight = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          // Weight and Age
          Expanded(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              //textBaseline: TextBaseline.alphabetic,
              children: [
                Expanded(
                    // Weight
                    child: ReusableCard(
                  color: kInactiveCardColor,
                  child: PlusMinusCard(
                    text: 'WEIGHT',
                    value: _weight,
                    minValue: 10,
                    maxValue: 500,
                    onPlus: (double val) {
                      setState(() {
                        _weight = val;
                      });
                    },
                    onMinus: (double val) {
                      setState(() {
                        _weight = val;
                      });
                    },
                  ),
                )),
                // Age
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColor,
                    child: PlusMinusCard(
                      text: 'AGE',
                      value: _age,
                      maxValue: 200,
                      onMinus: (double val) {
                        setState(() {
                          _age = val;
                        });
                      },
                      onPlus: (double val) {
                        setState(() {
                          _age = val;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: _currentHeight, weight: _weight);

                Get.toNamed('/result', arguments: {
                  'bmi': calc.calculateBMI(),
                  'result': calc.getResult(),
                  'interpretation': calc.getInterpretation()
                });
              },
              child: CalculateButton(text: 'CALCULATE'))
        ],
      ),
    );
  }
}
