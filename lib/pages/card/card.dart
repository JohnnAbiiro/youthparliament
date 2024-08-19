import 'package:flutter/material.dart';
import 'constants.dart';

class Politicalparty extends StatefulWidget {
  const Politicalparty({super.key});

  @override
  State<Politicalparty> createState() => _PoliticalpartyState();
}

class _PoliticalpartyState extends State<Politicalparty> {
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Political Parties'),
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
                Constants.npplogo,
              ),
              _buildPartyCard(
                context,
                'National Democratic Congress (NDC)',
                Colors.red,
                Constants.ndclogo,
              ),
              _buildPartyCard(
                context,
                'Convention People\'s Party (CPP)',
                Colors.yellow,
                Constants.ndclogo,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPartyCard(BuildContext context, String partyName, Color color, String imagePath) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PartyDetailsPage(partyName: partyName)),
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
                color: Colors.white,
                fontSize: 12,
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
                  'Information about $partyName .',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
