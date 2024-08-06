import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'pages/meters.dart';
import 'pages/transactions.dart';
import 'pages/wallet.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E C G App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
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
  static  List<Widget> _screenOptions = <Widget>[
    HomeWidget(),
    HelpWidget(),
    SettingsWidget(),
    Signup(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    double sized = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "YOUTH PARLIAMENT APP",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff08328f),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
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
                      title: const Text('Home', style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.live_help_sharp, color: Colors.white),
                title: const Text('Help', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Help
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text('Setting', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Settings
                },
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Add Account', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Pay Bill', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Transaction History', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Statement Reports', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('My Complaints', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Notifications', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(height: 1.0, thickness: 1.0),
              ListTile(
                leading: const Icon(Icons.live_help_sharp, color: Colors.white),
                title: const Text('App Info', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to App Info
                },
              ),
              ListTile(
                leading: const Icon(Icons.live_help_sharp, color: Colors.white),
                title: const Text('try', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>Signup()),
                  );
                  // Navigate to App Info
                },
              ),
            ],
          ),
        ),
      ),
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'meters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Wallets',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final List<String> _items = ['QUICK ACCESS', ];
  final List<String> _items2 = ['RECENT TRANSACTIONS', ];
  String? _selectedItem;
  String? _selectedItem2;
  bool _showContainers = false;
  bool _showContainers2 = false;
  @override
  Widget build(BuildContext context) {
    double sized = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        direction: Axis.vertical,
        children: [
          Container(
            color: Colors.transparent,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                  child: Container(
                   width: sized * 0.1,
                   color: Colors.transparent,
                   child: Image.asset("images/youth.jpeg")),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                  child: Text("Home"),
                ),
                 SizedBox(width: sized * 0.17),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: sized * 0.35,
                      decoration:  BoxDecoration(
                        color: const Color(0xffe8f1fc),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: const  Wrap(
                        spacing: 10.0,
                        direction: Axis.horizontal,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.add_card_rounded, color: Colors.green, size: 30.0),
                          ),
                          Column(
                           children: [
                             Text("Service"),
                             Text("Request"),
                           ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Container(
              width: sized *0.92,
              height: 120.0,
              decoration:  BoxDecoration(
                color:  const Color(0xff2e388f),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child:   Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 100,
                          child:  Image.asset('images/12.png'),
                        ),
                        SizedBox(width: 2.0,),
                         Column(
                          children: [

                            Text('Got problems with your Postpaid Bill?',style: TextStyle(fontSize: 10.0,color: Colors.white),),
                            Text('Fix The Bill, Pay The Bill.',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),



          Padding(
            padding: EdgeInsets.symmetric(horizontal: sized * 0.3),
            child: const Text("What will you like to do?", style: TextStyle(fontSize: 12.0)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
            child: Container(
              height: 40.0,
              width: sized * 0.9,
              color: const Color(0xffe2ecff),
              child: const Center(
                child: Text(
                  "MY CUSTOMER ACCOUNTS",
                  style: TextStyle(color: Color(0xff08328b)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 140.0,
                width: sized * 0.9,
                decoration: const BoxDecoration(
                  color: Color(0xffe2ecff),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0), // Adjust the radius as needed
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 25.0),
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Color(0xff043085),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                    const Text("Add your water company account", textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
            child: Container(
              width: sized * 0.9,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: const Color(0xff0a318e),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Pay Water Bill", style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
                  child: Container(
                    width: sized * 0.9,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2ECFF),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedItem,
                        items: _items.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(item),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            if (_selectedItem == newValue) {
                              _showContainers = !_showContainers;
                            } else {
                              _selectedItem = newValue!;
                              _showContainers = true;
                            }
                          });
                        },
                        dropdownColor: const Color(0xFFE2ECFF),
                        iconEnabledColor: const Color(0xffd4996a),
                        icon: _showContainers
                            ? const Icon(Icons.arrow_drop_up)
                            : const Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: sized * 0.02),
                if (_showContainers) ...[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
                    child: Row(
                      children: [
                        Container(
                          width: (sized * 0.88) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffe4e6f2),
                          ),
                          child: const Column(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(height: 20.0),
                                    Text("Add Account"),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: sized * 0.02),
                        Container(
                          width: (sized * 0.88) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffe4e6f2),
                          ),
                          child: const Column(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(height: 20.0),
                                    Text("Add Account"),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: sized * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
                    child: Row(
                      children: [
                        Container(
                          width: (sized * 0.88) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffe4e6f2),
                          ),
                          child: const Column(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(height: 20.0),
                                    Text("Add Account"),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: sized * 0.02),
                        Container(
                          width: (sized * 0.88) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffe4e6f2),
                          ),
                          child: const Column(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(height: 20.0),
                                    Text("Add Account"),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
                  child: Container(
                    width: sized * 0.9,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2ECFF),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedItem2,
                        items: _items2.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(item),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            if (_selectedItem2 == newValue) {
                              _showContainers2 = !_showContainers2;
                            } else {
                              _selectedItem2 = newValue!;
                              _showContainers2 = true;
                            }
                          });
                        },
                        dropdownColor: const Color(0xFFE2ECFF),
                        iconEnabledColor: const Color(0xffd4996a),
                        icon: _showContainers2
                            ? const Icon(Icons.arrow_drop_up)
                            : const Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: sized * 0.02),
                if (_showContainers2) ...[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
                    child: Row(
                      children: [
                        Container(
                          width: (sized * 0.88) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffe4e6f2),
                          ),
                          child: const Column(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(height: 20.0),
                                    Text("Add Account"),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: sized * 0.02),
                        Container(
                          width: (sized * 0.88) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffe4e6f2),
                          ),
                          child: const Column(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(height: 20.0),
                                    Text("Add Account"),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: sized * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sized * 0.05),
                    child: Row(
                      children: [
                        Container(
                          width: (sized * 0.88) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffe4e6f2),
                          ),
                          child: const Column(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(height: 20.0),
                                    Text("Add Account"),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: sized * 0.02),
                        Container(
                          width: (sized * 0.88) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffe4e6f2),
                          ),
                          child: const Column(
                            children: [
                              InkWell(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Icon(Icons.account_circle_outlined),
                                    SizedBox(height: 20.0),
                                    Text("Add Account"),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}



