import 'package:flutter/material.dart';
import 'constants.dart';


class EmergencyContactContainer extends StatelessWidget {
  const EmergencyContactContainer({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      color: Colors.white60,
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(kButtonRoundness)),
        elevation: 1.0,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone),
              iconSize: kBottomIconSize,
              color: kCirclesColor,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
            const Text(
              'ADD EMERGENCY CONTACTS',
              style: kEmergencyContactTextStyle,
            ),
            IconButton(
              onPressed: (){
                print('Add Emergency Contacts');
              },
              icon: const Icon(Icons.arrow_forward_ios_sharp),
              iconSize: kBottomIconSize,
              color: kCirclesColor,
              highlightColor: kButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}