
import 'package:ecg/main.dart';
import 'package:ecg/pages/Signup.dart';
import 'package:ecg/pages/createaccount.dart';
import 'package:ecg/pages/membership.dart';

class Routes{
  static String login="login";
  static String membership="membership";
  static String dashboard="dashboard";
  static String createaccount="createaccount";

}

final pages={
  Routes.login:(context)=>const Signup(),
  Routes.membership:(context)=>const Leadership(),
  Routes.dashboard:(context)=>const MyHomePage(),
  Routes.createaccount:(context)=>const CreateAccount()
};