import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_solution/firebase_options.dart';
import 'package:google_solution/models/callerData.dart';
import 'package:google_solution/screens/call_information_screen.dart';
import 'package:google_solution/screens/contact_details_screen.dart';
import 'package:google_solution/screens/settings_screen.dart';
import 'package:google_solution/utilities/constants.dart';
import 'package:provider/provider.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/contact_options_screen.dart';
import 'screens/start_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/emergency_call.dart';
import 'contact_options/mom_screen.dart';
import 'contact_options/dad_screen.dart';
import 'contact_options/bestie_screen.dart';
import 'contact_options/lover_screen.dart';
import 'screens/phone_call_screen.dart';
import 'screens/incoming_call_screen.dart';

void main() async {
  //initialize firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(GoogleSolution());
}

class GoogleSolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<callerData>(create: (context) => callerData())
      ],
      child: MaterialApp(
        home: StartScreen(),
        theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: Colors.purpleAccent,
            ),
          ),
        ),
        routes: {
          StartScreen.id: (BuildContext context) => StartScreen(),
          SignUpScreen.id: (BuildContext context) => SignUpScreen(),
          SignInScreen.id: (BuildContext context) => SignInScreen(),
          ProfileScreen.id: (BuildContext context) => ProfileScreen(),
          ContactOptionsScreen.id: (BuildContext context) => ContactOptionsScreen(),
          ContactDetailsScreen.id: (BuildContext context) => ContactDetailsScreen(),
          CallScreen.id: (BuildContext context) => CallScreen(),
          IncomingScreen.id: (BuildContext context) => IncomingScreen(),
          CallInfo.id: (BuildContext context) => CallInfo(),
        },
      ),
    );
  }
}
