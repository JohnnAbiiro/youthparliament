import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:ecg/constants/routes.dart';
import 'package:ecg/pages/buttondetails.dart';
import 'package:ecg/pages/buttonpoll.dart';
import 'package:ecg/pages/cso.dart';
import 'package:ecg/pages/ghanagovernment.dart';
import 'package:ecg/pages/upcomingevent.dart';
import 'package:ecg/provider/controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'pages/card.dart';
import 'pages/wallet.dart';
import 'pages/logout.dart';
import 'pages/signup.dart';
import 'pages/constants.dart';
import 'pages/home.dart';
import 'pages/poll.dart';
import 'pages/politicalparties.dart';
import 'pages/onlinelibray.dart';
import 'pages/onlinetraining.dart';
import 'pages/parliament.dart';
import 'pages/dues.dart';
import 'constants/containerconstants.dart';
import 'constants/imageconstants.dart';
import 'constants/textconstants.dart';
import 'constants/iconconstants.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // String input = "Hello, Flutter!";
  // // SHA-1 hash
  // var bytes = utf8.encode(input); // convert the input to bytes
  // var sha1Hash = sha1.convert(bytes);
  // print("SHA-1: $sha1Hash");
  //
  // // SHA-256 hash
  // var sha256Hash = sha256.convert(bytes);
  // print("SHA-256: $sha256Hash");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: pages,
      debugShowCheckedModeBanner: false,
      title: Constants.appname,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(create: (BuildContext context)=>AppProvider(),
      child: Signup()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  static final List<Widget> _screenOptions = [
     HomeWidget(),
    const CardDetail(),
    const Dues(),
    const Wallet(),
    const Poll(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double wp800 = 800 / screenWidth;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.title,
          style: const TextStyle(color: ConstantsTextColor.logintext, fontSize: 14.0),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: ConstantsIcon.iconWhite,
        ),
        backgroundColor: ContainerConstants.appBarColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: ConstantsIcon.iconWhite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Logout()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: ContainerConstants.appBarColor,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: ContainerConstants.appBarColor,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(Icons.close, color: ConstantsIcon.iconWhite),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home, color: ConstantsIcon.iconWhite),
                      title: const Text('Home',
                          style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.how_to_vote, color: ConstantsIcon.iconWhite),
                title: const Text('Political Parties',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const Politicalparty()
                  ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart, color: ConstantsIcon.iconWhite),
                title: const Text('Organizations',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Detailbutton()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart, color: ConstantsIcon.iconWhite),
                title: const Text('Youth Opinion Polls',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Poll()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.groups, color: ConstantsIcon.iconWhite),
                title: const Text("CSO's and Stakeholders",
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> CivicSociety()
                   ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.library_books, color: ConstantsIcon.iconWhite),
                title: const Text('Online Library',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>OnlineLibrary(),
                   ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.school, color: ConstantsIcon.iconWhite),
                title: const Text('Online Training Centre',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>OnlineTraining()
                  ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.event, color: ConstantsIcon.iconWhite),
                title: const Text('Upcoming Events',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>UpcomingEvent()
                   ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.public, color: ConstantsIcon.iconWhite),
                title: const Text('Ghana Government',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const GovernmentOfGhana()
                   ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_balance, color: ConstantsIcon.iconWhite),
                title: const Text(
                  'Parliament of Ghana',
                  style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParliamentOfGhana()),
                  );
                },
              ),
              const Divider(height: 1.0, thickness: 1.0),
              ListTile(
                leading: const Icon(Icons.logout, color: ConstantsIcon.iconWhite),
                title: const Text('Logout',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Logout()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_add, color: ConstantsIcon.iconWhite),
                title: const Text('Sign up',
                    style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints:  BoxConstraints(maxWidth: screenWidth * wp800),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: ConstantsIcon.iconWhite),
              child: _screenOptions.elementAt(_selectedIndex),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments),
            label: 'Dues',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet), // Changed to wallet icon
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.poll),
            label: 'Poll',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ContainerConstants.bottomNavSelected,
        onTap: _onItemTapped,
      ),
    );
  }
}
