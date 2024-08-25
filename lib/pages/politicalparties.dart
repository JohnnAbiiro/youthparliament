import 'package:flutter/material.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';
class Politicalparty extends StatefulWidget {
  const Politicalparty({super.key});

  @override
  State<Politicalparty> createState() => _PoliticalpartyState();
}

class _PoliticalpartyState extends State<Politicalparty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.politicalparties),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800.0,
          ),
          child: ListView(
            children: [
              _buildPartyCard(
                context,
                'New Patriotic Party (NPP)',
                Colors.blue,
                ConstantsImage.npplogo,
              ),
              _buildPartyCard(
                context,
                'National Democratic Congress (NDC)',
                Colors.green,
                ConstantsImage.ndclogo,
              ),
              _buildPartyCard(
                context,
                'Convention People\'s Party (CPP)',
                Colors.yellow,
                ConstantsImage.cpplogo,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build each party card
  Widget _buildPartyCard(
      BuildContext context,
      String partyName,
      Color color,
      String imagePath,
      ) {
    return InkWell(
      onTap: () {
        // Navigate to Party Details Page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PartyDetailsPage(partyName: partyName),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 200,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              partyName,
              style: const TextStyle(
                color: ConstantsTextColor.logintext,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                imagePath,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PartyDetailsPage extends StatelessWidget {
  final String partyName;
  const PartyDetailsPage({super.key, required this.partyName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(partyName),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  partyName,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Information about $partyName.',
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
