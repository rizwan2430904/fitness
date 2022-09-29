import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/screens/forget_password/forget_password.dart';
import 'package:fitness_app/screens/plan_screen/planks_spinner_screen.dart';
import 'package:fitness_app/screens/register_screen/register_screen.dart';
import 'package:fitness_app/widgets/color_remover.dart';
import 'package:fitness_app/widgets/cus_bottom_bar.dart';
import 'package:fitness_app/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vertical_picker/vertical_picker.dart';

import '../../constants.dart';

class PushUpsSpinnerScreen extends StatefulWidget {
  const PushUpsSpinnerScreen({Key? key}) : super(key: key);

  @override
  State<PushUpsSpinnerScreen> createState() => _PushUpsSpinnerScreenState();
}

class _PushUpsSpinnerScreenState extends State<PushUpsSpinnerScreen> {
  List<String> pushUpsRanges = ['0-5', '5-10', '10-20', 'Over 20'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ColorRemover(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.9,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/5.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xff1c1b20),
                          Colors.transparent,
                        ],
                      ),
                    ),
                    height: MediaQuery.of(context).size.height*0.9,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Column(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const SizedBox(
                                height: 30,
                                //width: 35,
                                child: Icon(
                                  Icons.arrow_back,
                                  //size: 35,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "HOW MANY PUSH UPS CAN YOU DO AT A TIME?",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "To personalize your plan",
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.all(12),
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.5,
                              alignment: Alignment.bottomLeft,
                              padding: const EdgeInsets.only(
                                  bottom: 12.0, left: 12.0),
                              child: VerticalPicker(
                                // give height for eacch item
                                itemHeight:
                                    MediaQuery.of(context).size.height / 10,

                                // margin for border
                                leftMargin: 70,
                                rightMargin: 70,

                                // create list of text for items
                                items: List.generate(
                                    pushUpsRanges.length,
                                    (index) => Center(
                                          child: Text(
                                            pushUpsRanges[index],
                                            style: const TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        )),

                                // empty void for item selected
                                onSelectedChanged: (indexSelected) {},

                                // give color to border
                                borderColor: kColorPrimary,

                                // thickness of border
                                borderThickness: 3,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  // image: DecorationImage(
                                  //   image: AssetImage(
                                  //       "assets/images/${constants.standard[index].image}"),
                                  //   fit: BoxFit.cover,
                                  // ),
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 25),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const PlanksSpinnerScreen()));
                            },
                            child: Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.6,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        // color: Colors.white,
                                        // width: 2.0,
                                        ),
                                    borderRadius: BorderRadius.circular(100),
                                    color: kColorPrimary,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
                                      )
                                    ]),
                                child: const Center(
                                    child: Text(
                                  'NEXT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ))),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
