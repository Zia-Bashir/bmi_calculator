import 'package:bmi_calculator/src/utils/dimensions.dart';
import 'package:bmi_calculator/src/widgets/my_text_widget.dart';
import 'package:bmi_calculator/src/widgets/textfiled_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double resultBMI = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController weightController = TextEditingController();
    TextEditingController heightController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xff0A0E21),
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: dimensions(35, context)),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1A1F38),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTextWidget(
                  text: "Weight".toUpperCase(),
                  size: 24,
                  weight: FontWeight.w700,
                ),
                SizedBox(
                  height: dimensions(20, context),
                ),
                TextFieldWidget(
                  controller: weightController,
                  hintText: "Enter Your Weight in KG",
                ),
                MyTextWidget(
                  text: "Height".toUpperCase(),
                  size: 24,
                  weight: FontWeight.w700,
                ),
                SizedBox(
                  height: dimensions(20, context),
                ),
                TextFieldWidget(
                  controller: heightController,
                  hintText: "Enter Your Height in Meters",
                ),
                SizedBox(
                  height: dimensions(30, context),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: dimensions(20, context)),
                child: const MyTextWidget(
                  text: "Your Result:",
                  size: 35,
                  weight: FontWeight.w700,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                height: dimensions(220, context),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff1A1F38),
                    borderRadius:
                        BorderRadius.circular(dimensions(25, context))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextWidget(
                      text: "Normal".toUpperCase(),
                      size: 35,
                      color: Colors.green,
                      weight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyTextWidget(
                          text: '$resultBMI'.substring(0, 4),
                          size: 80,
                          color: Colors.white,
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    var weight = double.parse(weightController.text);
                    var height = double.parse(heightController.text);
                    double height2 = height * height;
                    var result = (weight / height2).toDouble();
                    resultBMI = result;

                    // print(weight);
                    // print(height);
                    // print(height2);

                    // print(resultBMI);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 60),
                  height: 84,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: Center(
                    child: MyTextWidget(
                      text: "Calculate".toUpperCase(),
                      size: 24,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
