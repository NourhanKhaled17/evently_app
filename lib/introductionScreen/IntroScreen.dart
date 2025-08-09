
import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app/introductionScreen/row_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Introscreen extends StatelessWidget {
  static const String routeName = "introscreen";
  const Introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/app_bar_logo.png"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 28,),
            Image.asset("assets/images/intro_screen.png", width: double.infinity, fit: BoxFit.cover,),
            SizedBox(height: 28,),
            Text("personalize_your_experience".tr(), style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 28,),
            Text("intro_desc".tr(), style: Theme.of(context).textTheme.titleSmall,),
            SizedBox(height: 28,),
            RowWidget(text1: "language".tr(), text2: "En", text3: "ع"),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("language".tr(), style: Theme.of(context).textTheme.titleMedium,),
            //     ToggleSwitch(
            //       minWidth: 73.0,
            //       minHeight: 30.0,
            //       initialLabelIndex: context.locale.toString()=='en'?0:1,
            //       cornerRadius: 20.0,
            //       activeFgColor: Colors.white,
            //       inactiveBgColor: Colors.grey,
            //       inactiveFgColor: Colors.white,
            //       totalSwitches: 2,
            //       labels: ["En", "ع"],
            //       activeBgColors: [[Theme.of(context).primaryColor],[Theme.of(context).primaryColor]],
            //       onToggle: (index) {
            //         if(index == 0){
            //           context.setLocale(Locale('en'));
            //         }else{
            //           context.setLocale(Locale('ar'));
            //         }
            //       },
            //     ),
            //   ],
            // ),
            SizedBox(height: 16,),
            RowWidget(text1: "theme".tr(), icon1:FontAwesomeIcons.solidSun, icon2:FontAwesomeIcons.moon),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("theme".tr(), style: Theme.of(context).textTheme.titleMedium,),
            //     ToggleSwitch(
            //       minWidth: 73.0,
            //       minHeight: 30.0,
            //       initialLabelIndex: 1,
            //       cornerRadius: 20.0,
            //       activeFgColor: Colors.white,
            //       inactiveBgColor: Colors.grey,
            //       inactiveFgColor: Colors.white,
            //       totalSwitches: 2,
            //       icons: [FontAwesomeIcons.solidSun, FontAwesomeIcons.moon],
            //       activeBgColors: [[Theme.of(context).primaryColor],[Theme.of(context).primaryColor]],
            //       onToggle: (index) {
            //       },
            //     ),
            //   ],
            // ),
            SizedBox(height: 28,),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                )
              ),
                child:Text("lets_start".tr(), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}