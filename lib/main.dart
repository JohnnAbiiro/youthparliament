import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'pages/meters.dart';
import 'pages/transactions.dart';
import 'pages/wallet.dart';
import 'pages/logout.dart';
import 'pages/service.dart';
import 'pages/Signup.dart';
import 'pages/constants.dart';
import 'pages/header.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

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
  static  List<Widget> _screenOptions = <Widget>[
    HomeWidget(),
    const Meter(),
    const Transactions(),
    const Wallet()
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
        title:  Text(
            Constants.title,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Service())
                  );
                },
              ),
              const Divider(height: 1.0, thickness: 1.0),
              ListTile(
                leading: const Icon(Icons.live_help_sharp, color: Colors.white),
                title: const Text('Logout', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>Logout()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.live_help_sharp, color: Colors.white),
                title: const Text('Sign up', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const Signup()),
                  );
                  // Navigate to App Info
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
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
              child: _screenOptions.elementAt(_selectedIndex)),
        )),
      ),
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
  final List<String> _items = [Constants.quickAccess];
  final List<String> _items2 = [Constants.recentTransactions];
  String? _selectedItem;
  String? _selectedItem2;
  bool _showContainers = false;
  bool _showContainers2 = false;

  @override
  Widget build(BuildContext context) {
    double sized = MediaQuery.of(context).size.width;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerMenu(screenWidth, screenHeight,"Home","Service \n Request", context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
               color: Constants.postpaidBillBackgroundColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: Image.asset(Constants.postpaidBillImage),
                        ),
                        const SizedBox(width: 2.0),
                        const Column(
                          children: [
                            SizedBox(height: 20.0),
                            Text(Constants.postpaidBillTitle, style: TextStyle(fontSize: 10.0, color: Colors.white)),
                            Text(Constants.postpaidBillSubtitle, style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
              return [
                Container(
                    padding: const EdgeInsets.all(2.0),
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(Constants.title),
                          subtitle: Text(
                            DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
                          ),
                          leading: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: Image.asset(Constants.youthImage),
                          ),
                        ),
                        const Center(child: Text(Constants.happyFoundersDay,style: TextStyle(fontSize: 12.0),)),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              width: constraints.maxWidth,  // Match width to the ListTile
                              color: Colors.transparent,
                              child: Image.asset(
                                Constants.appsImage,
                                fit: BoxFit.cover, // Optional: Control how the image scales
                              ),
                            );
                          },
                        ),
                        const Text(
                          Constants.readMore,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 5.0,),
                Container(
                  padding: const EdgeInsets.all(2.0),
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(Constants.title),
                        subtitle: Text(
                          DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
                        ),
                        leading: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: Image.asset(Constants.youthImage),
                        ),
                      ),
                      const Center(child: Text(Constants.happyFoundersDay,style: TextStyle(fontSize: 12.0),)),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            width: constraints.maxWidth,  // Match width to the ListTile
                            color: Colors.transparent,
                            child: Image.asset(
                              Constants.appsImage,
                              fit: BoxFit.cover, // Optional: Control how the image scales
                            ),
                          );
                        },
                      ),
                      const Text(
                        Constants.readMore,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0,),
                Container(
                  padding: const EdgeInsets.all(2.0),
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(Constants.title),
                        subtitle: Text(
                          DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
                        ),
                        leading: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: Image.asset(Constants.youthImage),
                        ),
                      ),
                      const Center(child: Text(Constants.happyFoundersDay,style: TextStyle(fontSize: 12.0),)),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            width: constraints.maxWidth,  // Match width to the ListTile
                            color: Colors.transparent,
                            child: Image.asset(
                              Constants.appsImage,
                              fit: BoxFit.cover, // Optional: Control how the image scales
                            ),
                          );
                        },
                      ),
                      const Text(
                        Constants.readMore,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5.0,),
                Container(
                  padding: const EdgeInsets.all(2.0),
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(Constants.title),
                        subtitle: Text(
                          DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
                        ),
                        leading: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: Image.asset(Constants.youthImage),
                        ),
                      ),
                      const Center(child: Text(Constants.happyFoundersDay,style: TextStyle(fontSize: 12.0),)),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            width: constraints.maxWidth,  // Match width to the ListTile
                            color: Colors.transparent,
                            child: Image.asset(
                              Constants.appsImage,
                              fit: BoxFit.cover, // Optional: Control how the image scales
                            ),
                          );
                        },
                      ),
                      const Text(
                        Constants.readMore,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                ][index];
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text(Constants.whatToDo, style: TextStyle(fontSize: 12.0))),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Constants.dropdownColor,
              child: const Center(
                child: Text(
                  Constants.myCustomerAccounts,
                  style: TextStyle(color: Constants.homeTitleColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Constants.dropdownColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: const Column(
                  children: [
                     SizedBox(height: 25.0),
                     CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Constants.addAccountIconBackgroundColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                     Text(Constants.addWaterAccount, textAlign: TextAlign.center),
                    SizedBox(height: 8.0,),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: Constants.waterBillButtonColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(Constants.payWaterBill, style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Constants.dropdownColor,
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
                          dropdownColor: Constants.dropdownColor,
                          iconEnabledColor: Constants.iconColor,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Constants.containerBackgroundColor,
                                ),
                                child: const Column(
                                  children: [
                                    InkWell(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20.0),
                                          Icon(Icons.account_circle_outlined, size: 30.0),
                                          Text(Constants.myAccount,style: TextStyle(fontSize: 12.0),),
                                          Text(Constants.editPersonalDetails,
                                           style: TextStyle(fontSize: 10.0),
                                          ),
                                          SizedBox(height: 20.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                         const SizedBox(width: 8.0),
                          Expanded(
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Constants.containerBackgroundColor,
                                ),
                                child: const Column(
                                  children: [
                                    InkWell(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20.0),
                                          Icon(Icons.list_alt_outlined, size: 30.0),
                                          Text(Constants.eBill,style: TextStyle(fontSize: 12.0),),
                                          Text(
                                            Constants.yourElectronicBill,
                                            style: TextStyle(fontSize: 10.0),
                                          ),
                                          SizedBox(height: 20.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                   const  SizedBox(height:8.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Constants.containerBackgroundColor,
                                ),
                                child: const Column(
                                  children: [
                                    InkWell(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20.0),
                                          Icon(Icons.payments_outlined, size: 30.0),
                                          Text(Constants.payments,style: TextStyle(fontSize: 12.0),),
                                          Text(
                                            Constants.checkYourPayments,
                                            style: TextStyle(fontSize: 10.0),
                                          ),
                                          SizedBox(height: 20.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Constants.containerBackgroundColor,
                                ),
                                child: const Column(
                                  children: [
                                    InkWell(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20.0),
                                          Icon(Icons.headset_mic_outlined, size: 30.0),
                                          Text(Constants.helpSupport,style: TextStyle(fontSize: 12.0),),
                                          Text(
                                            Constants.WeAreHereToHelp,
                                            style: TextStyle(fontSize: 10.0),
                                          ),
                                          SizedBox(height: 20.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                   width:double.infinity,
                    decoration: BoxDecoration(
                      color: Constants.dropdownColor,
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
                        dropdownColor: Constants.dropdownColor,
                        iconEnabledColor: Constants.iconColor,
                        icon: _showContainers2
                            ? const Icon(Icons.arrow_drop_up)
                            : const Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                 const SizedBox(height:8.0),
                  if (_showContainers2) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Constants.containerBackgroundColor,
                                ),
                                child: const Column(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20.0),
                                        Icon(Icons.add_shopping_cart_outlined, size: 30.0),
                                        Text(Constants.shop),
                                        Text(
                                          Constants.viewandmanagepurchases,
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                        SizedBox(height: 20.0),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                         const SizedBox(width: 8.0),
                          Expanded(
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Constants.containerBackgroundColor,
                                ),
                                child: const Column(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 20.0),
                                        Icon(Icons.recent_actors_outlined, size: 30.0),
                                        Text(Constants.recentActivity,
                                          style: TextStyle(fontSize: 12.0),),
                                        Text(
                                          Constants.viewRecentTransactions,
                                          style: TextStyle(fontSize: 10.0),
                                        ),
                                        SizedBox(height: 20.0),
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
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



