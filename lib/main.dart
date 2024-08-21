import 'package:ecg/pages/buttondetails.dart';
import 'package:ecg/pages/buttonpoll.dart';
import 'package:ecg/pages/cso.dart';
import 'package:ecg/pages/ghanagovernment.dart';
import 'package:ecg/pages/upcomingevent.dart';
import 'package:flutter/material.dart';
import 'pages/meters.dart';
import 'pages/transactions.dart';
import 'pages/wallet.dart';
import 'pages/logout.dart';
//import 'pages/service.dart';
import 'pages/signup.dart';
import 'pages/constants.dart';
import 'pages/home.dart';
import 'pages/poll.dart';
import 'pages/politicalparties.dart';
import 'pages/onlinelibray.dart';
import 'pages/onlinetraining.dart';
import 'pages/parliament.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appname,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
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
    const Meter(),
    const Transactions(),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.title,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff08328f),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
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
          color: const Color(0xff052364),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xff052364),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home, color: Colors.white),
                      title: const Text('Home',
                          style: TextStyle(color: Colors.white, fontSize: 12.0)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.how_to_vote, color: Colors.white),
                title: const Text('Political Parties',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const Politicalparty()
                  ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart, color: Colors.white),
                title: const Text('Organizations',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Detailbutton()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart, color: Colors.white),
                title: const Text('Youth Opinion Polls',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Poll()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.groups, color: Colors.white),
                title: const Text("CSO's and Stakeholders",
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> CivicSociety()
                   ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.library_books, color: Colors.white),
                title: const Text('Online Library',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>OnlineLibrary(),
                   ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.school, color: Colors.white),
                title: const Text('Online Training Centre',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>OnlineTraining()
                  ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.event, color: Colors.white),
                title: const Text('Upcoming Events',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>UpcomingEvent()
                   ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.public, color: Colors.white),
                title: const Text('Ghana Government',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const GovernmentOfGhana()
                   ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_balance, color: Colors.white),
                title: const Text(
                  'Parliament of Ghana',
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
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
                leading: const Icon(Icons.logout, color: Colors.white),
                title: const Text('Logout',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Logout()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_add, color: Colors.white),
                title: const Text('Sign up',
                    style: TextStyle(color: Colors.white, fontSize: 12.0)),
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
          constraints: const BoxConstraints(maxWidth: 800),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
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
            icon: Icon(Icons.help), // Consider using a more relevant icon
            label: 'Meters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), // Consider a more suitable icon
            label: 'Transactions',
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
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
