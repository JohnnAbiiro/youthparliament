import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';
class CardDetail extends StatefulWidget {
  const CardDetail({super.key});

  @override
  _CardDetailState createState() => _CardDetailState();
}

class _CardDetailState extends State<CardDetail> {
  List<Map<String, dynamic>> savedCards = [];
  String cardholderName = "John Abiiro ";
  String cardNumber = "1234 5678 9012 3456";
  String expiryDate = "08/24";
  String selectedCardType = "Standard";
  File? _youthImage;

  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _youthImage = File(pickedFile.path);
      });
    }
  }

  void _showDuplicateDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Duplicate Card"),
          content: const Text("A card with this number already exists."),
            actions: [
               TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showEditForm() {
    final nameController = TextEditingController(text: cardholderName);
    final numberController = TextEditingController(text: cardNumber);
    final expiryController = TextEditingController(text: expiryDate);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:  const Text("Add Card Information",style: TextStyle(fontSize: 12.0),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Cardholder Name"),
              ),
              TextFormField(
                controller: numberController,
                decoration: const InputDecoration(labelText: "Card Number"),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: expiryController,
                decoration: const InputDecoration(labelText: "Expiry Date"),
              ),
              DropdownButton<String>(
                value: selectedCardType,
                items: <String>['Standard', 'Gold', 'Premium']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCardType = newValue!;
                  });
                },
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _pickImage,
                    child: const Text("upload photo",style: TextStyle(fontSize: 12.0),),
                  ),
                  const SizedBox(width: 10),
                  if (_youthImage != null)
                    CircleAvatar(
                      backgroundImage: FileImage(_youthImage!),
                      radius: 30,
                    ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                bool duplicateFound = savedCards.any(
                (card) => card['cardNumber'] == numberController.text,
                );
                if (duplicateFound) {
                  Navigator.of(context).pop();
                  _showDuplicateDialog();
                } else {
                  setState(() {
                    savedCards.add({
                      "cardholderName": nameController.text,
                      "cardNumber": numberController.text,
                      "expiryDate": expiryController.text,
                      "cardType": selectedCardType,
                      "image": _youthImage,
                    });
                  });
                  Navigator.of(context).pop(); // Close the form dialog after saving
                }
              },
              child: const Text("Save",style: TextStyle(fontSize: 12.0),),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Cancel",style: TextStyle(fontSize: 12.0),),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add  Credit Card",style: TextStyle(fontSize: 12.0),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: savedCards.length,
              itemBuilder: (context, index) {
                final card = savedCards[index];
                return GestureDetector(
                  onTap: _showEditForm,
                  child: CardWidget(
                    cardholderName: card['cardholderName'],
                    cardNumber: card['cardNumber'],
                    expiryDate: card['expiryDate'],
                    cardType: card['cardType'],
                    image: card['image'],
                  ),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: _showEditForm,
            child: Container(
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: ContainerConstants.appBarColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 50,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Request new card",
                  style: TextStyle(
                    color: ConstantsIcon.iconWhite,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String cardholderName;
  final String cardNumber;
  final String expiryDate;
  final String cardType;
  final File? image;

  const CardWidget({
    required this.cardholderName,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardType,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define card type gradients
    LinearGradient gradient;
    switch (cardType) {
      case 'Gold':
        gradient = const LinearGradient(
          colors: [Colors.yellow, Colors.orange],
          stops: [0.0, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
        break;
      case 'Premium':
        gradient = const LinearGradient(
          colors: [Colors.purple, Colors.blue],
          stops: [0.0, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
        break;
      default:
        gradient = const LinearGradient(
          colors: [Color(0xFFB2B6F6), Color(0xFFDBA0E8), Color(0xFFF7A7B0)],
          stops: [0.20, 0.50, 0.75],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
         );
      }

    return Container(
      width: 400,
      height: 215,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(ConstantsImage.earth1),
          fit: BoxFit.cover,
          colorFilter: ContainerConstants.colorFilter1,
        ),
        borderRadius: BorderRadius.circular(12),
        gradient: gradient,
        ),
       child: Stack(
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal:60.0 ),
                child: Text("CREDIT CARD",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20.0),),
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if(image != null)
                 const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                      child: Image(
                        image: AssetImage(ConstantsImage.johnny,),
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                 const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 50.0),
                    child: Image(
                      image: AssetImage(ConstantsImage.greenImage,),
                      width: 70.0,
                      height: 60.0,
                    ),
                  ),
                  Transform.rotate(
                    angle: 3.14 / 2,
                    child: const Icon(Icons.wifi, size: 30.0, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 5.0),
              Text(
                cardNumber,
                style: const TextStyle(
                  color: ConstantsTextColor.logintext,
                  fontSize: 18,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                expiryDate,
                style: const TextStyle(
                  color: ConstantsTextColor.logintext,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    cardholderName,
                    style: const TextStyle(
                      color: ConstantsTextColor.logintext,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    cardType,
                    style: const TextStyle(
                      color: ConstantsTextColor.logintext,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
               ),
             ],
            ),
         ],
       ),
    );
  }
}
