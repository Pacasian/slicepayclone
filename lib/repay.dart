import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Repay extends StatefulWidget {
  @override
  _RepayState createState() => _RepayState();
}

class _RepayState extends State<Repay> {
  Color mainColor2 = Hexcolor('#E0E0E0');
  int currentStep = 0;
  final List<Step> repayment = [
    Step(
      title: Text('January'),
      content: Text('₹450'),
      isActive: true,
    ),
    Step(
      title: Text('February'),
      content: Text('₹450'),
      state: StepState.editing,
      isActive: true,
    ),
    Step(
      title: Text('March'),
      content: Text('₹550'),
      state: StepState.editing,
      isActive: true,
    ),
    Step(
      title: Text('April'),
      content: Text('₹550'),
      state: StepState.editing,
      isActive: true,
    ),
    Step(
      title: Text('May'),
      content: Text('₹100'),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
                color: Hexcolor('#221347'),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    'Repayment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Stepper(
                  steps: repayment,
                  currentStep: this.currentStep,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() {
                      currentStep = step;
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (currentStep > 0) {
                        currentStep = currentStep - 1;
                      } else {
                        currentStep = 0;
                      }
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (currentStep < (repayment.length - 1)) {
                        currentStep = currentStep + 1;
                      } else {
                        currentStep = 0;
                      }
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

/*
Container(
                    height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20)),
                      color: Hexcolor('#221347'),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: Text(
                          'Repayment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    child: Stepper(
                      steps: repayment,
                      currentStep: this.currentStep,
                      type: StepperType.vertical,
                      onStepTapped: (step) {
                        setState(() {
                          currentStep = step;
                        });
                      },
                      onStepCancel: () {
                        setState(() {
                          if (currentStep > 0) {
                            currentStep = currentStep - 1;
                          } else {
                            currentStep = 0;
                          }
                        });
                      },
                      onStepContinue: () {
                        setState(() {
                          if (currentStep < (repayment.length - 1)) {
                            currentStep = currentStep + 1;
                          } else {
                            currentStep = 0;
                          }
                        });
                      },
                    ),
                  )
 */
