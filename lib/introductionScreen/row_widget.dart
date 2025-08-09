
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class RowWidget extends StatelessWidget {
  final String text1;
  final String? text2;
  final String? text3;
  final IconData? icon1;
  final IconData? icon2;


  const RowWidget({super.key, required this.text1, this.text2, this.text3, this.icon1, this.icon2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1, style: Theme.of(context).textTheme.titleMedium,),
        ToggleSwitch(
          minWidth: 73.0,
          minHeight: 30.0,
          initialLabelIndex: context.locale.toString()=='en'?0:1,
          cornerRadius: 20.0,
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.grey,
          inactiveFgColor: Colors.white,
          totalSwitches: 2,
          labels: [text2 ?? '', text3 ?? ''],
          icons: [icon1, icon2],
          activeBgColors: [[Theme.of(context).primaryColor],[Theme.of(context).primaryColor]],
          onToggle: (index) {
            if(index == 0){
              context.setLocale(Locale('en'));
            }else{
              context.setLocale(Locale('ar'));
            }
          },
        ),
      ],
    );
  }
}
