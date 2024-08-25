import 'package:flutter/material.dart';
import '../constants/routes.dart';
import 'constants.dart';

class Leadership extends StatefulWidget {
  const Leadership({super.key});

  @override
  _LeadershipState createState() => _LeadershipState();
}

class _LeadershipState extends State<Leadership> {
  int? selectedCardIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(Constants.registration,style: TextStyle(color: Colors.white,fontSize: 20),),
        backgroundColor: Constants.appBarColor,
      ),
      body: Center(
        child: Container(
          width: 800.0,
          height: 700.0,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            color: Color(0xDBF7F8F9),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children: [
              Image.asset(Constants.ylplogos,height: 40,),
              // const CircleAvatar(
              //   radius: 50,
              //   backgroundImage: AssetImage(Constants.ylplogos),
              // ),
              const SizedBox(height: 16.0),
              const Text(
               Constants.parliamentCategory,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              _buildLeadershipCard(
                  index: 0,
                  title: 'Youth Leadership Parliament ',
                  description: 'Represent the youth in national matters.',
                  icon: Icons.group),
              const SizedBox(height: 16.0),
              _buildLeadershipCard(
                  index: 1,
                  title: 'Junior Leadership Parliament',
                  description:
                  'Speak for vulnerable and women and ensure gender equality in laws.',
                  icon: Icons.female),
              const SizedBox(height: 16.0),

              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeadershipCard(
      {required int index,
        required String title,
        required String description,
        required IconData icon}) {
      return InkWell(

      onTap: () {

        setState(() {
          selectedCardIndex = index;
        });
      },
      child: Container(
        width: 400.0,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: selectedCardIndex == index
              ? Colors.blueAccent.withOpacity(0.2)
              : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: selectedCardIndex == index
                ? Constants.appBarColor
                : Colors.grey.withOpacity(0.3),
            width: 2.0,
          ),
        ),
        child: Row(
          children: [
            Radio<int>(
              value: index,
              groupValue: selectedCardIndex,
              onChanged: (int? value) {
                setState(() {
                  selectedCardIndex = value;
                });
              },
            ),
            const SizedBox(width: 16.0),
            Icon(
              icon,
              size: 40.0,
              color: selectedCardIndex == index
                  ? Colors.blueAccent
                  : Constants.appBarColor,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: selectedCardIndex == index
                          ? Colors.blueAccent
                          : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 10.0,
                      color: selectedCardIndex == index
                          ? Colors.blueAccent
                          : Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildSubmitButton() {
    return InkWell(
      onTap: () {
        if (selectedCardIndex != null) {
          Navigator.pushReplacementNamed(context, Routes.dashboard);
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(builder: (context) =>  MyHomePage()),
          // );
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text('You have selected category #$selectedCardIndex'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        } else {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              content: Text('Please select a leadership category.'),
              actions: [
                TextButton(
                  onPressed: null,
                  child: Text('OK'),
                ),
              ],
            ),
          );
        }
      },
      child: Container(
        width: 400.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Constants.appBarColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: const Center(
          child: Text(
            'Submit',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),
    );
  }
}
