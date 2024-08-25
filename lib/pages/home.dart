import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'header.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';
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
    //double screenWidth = MediaQuery.of(context).size.width;
   // double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerMenu("Home","Service \n Request", context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: ContainerConstants.loginContainer,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 60,
                          child: Image.asset(ConstantsImage.postpaidBillImage),
                        ),
                        const SizedBox(width: 2.0),
                        const Column(
                          children: [
                            SizedBox(height: 20.0),
                            Text(Constants.postpaidBillTitle, style: TextStyle(fontSize: 10.0, color: ConstantsTextColor.loginColor)),
                            Text(Constants.postpaidBillSubtitle, style: TextStyle(color: ConstantsTextColor.loginColor)),
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
                    color: ContainerConstants.transparent1,
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
                            child: Image.asset(ConstantsImage.youthImage),
                          ),
                        ),
                        const Center(child: Text(Constants.happyFoundersDay,style: TextStyle(fontSize: 12.0),)),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              width: constraints.maxWidth,  // Match width to the ListTile
                              color: ContainerConstants.transparent1,
                              child: Image.asset(
                                ConstantsImage.appsImage,
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
                    color: ContainerConstants.transparent1,
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
                            child: Image.asset(ConstantsImage.youthImage),
                          ),
                        ),
                        const Center(child: Text(Constants.happyFoundersDay,style: TextStyle(fontSize: 12.0),)),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              width: constraints.maxWidth,
                              color: ContainerConstants.transparent1,
                              child: Image.asset(
                                ConstantsImage.appsImage,
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
                    color: ContainerConstants.transparent1,
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
                            child: Image.asset(ConstantsImage.youthImage),
                          ),
                        ),
                        const Center(child: Text(Constants.happyFoundersDay,style: TextStyle(fontSize: 12.0),)),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              width: constraints.maxWidth,  // Match width to the ListTile
                              color: ContainerConstants.transparent1,
                              child: Image.asset(
                                ConstantsImage.appsImage,
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
                            child: Image.asset(ConstantsImage.youthImage),
                          ),
                        ),
                        const Center(child: Text(Constants.happyFoundersDay,style: TextStyle(fontSize: 12.0),)),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              width: constraints.maxWidth,  // Match width to the ListTile
                              color: ContainerConstants.transparent1,
                              child: Image.asset(
                                ConstantsImage.appsImage,
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
              color: ContainerConstants.dropdownColor,
              child: const Center(
                child: Text(
                  Constants.myCustomerAccounts,
                  style: TextStyle(color: ConstantsTextColor.homeTitleColor),
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
                  color: ContainerConstants.dropdownColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 25.0),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: ContainerConstants.addAccountIconBackgroundColor,
                      child: Icon(
                        Icons.add,
                        color: ConstantsIcon.iconWhite,
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
                  color: ContainerConstants.waterBillButtonColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(Constants.payWaterBill, style: TextStyle(color: ConstantsIcon.iconWhite), textAlign: TextAlign.center),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: ContainerConstants.transparent1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ContainerConstants.dropdownColor,
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
                          dropdownColor: ContainerConstants.dropdownColor,
                          iconEnabledColor: ConstantsIcon.iconColor,
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
                                  color: ContainerConstants.containerBackgroundColor,
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
                                  color: ContainerConstants.containerBackgroundColor,
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
                                  color: ContainerConstants.containerBackgroundColor,
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
                                  color: ContainerConstants.containerBackgroundColor,
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
                      color: ContainerConstants.dropdownColor,
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
                        dropdownColor: ContainerConstants.dropdownColor,
                        iconEnabledColor: ConstantsIcon.iconColor,
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
                                  color: ContainerConstants.containerBackgroundColor,
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
                                  color: ContainerConstants.containerBackgroundColor,
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