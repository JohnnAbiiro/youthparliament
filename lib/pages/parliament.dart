import 'package:flutter/material.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';

class ParliamentOfGhana extends StatefulWidget {
  const ParliamentOfGhana({super.key});

  @override
  State<ParliamentOfGhana> createState() => _ParliamentOfGhanaState();
}

class _ParliamentOfGhanaState extends State<ParliamentOfGhana> {
  String searchQuery = '';
  bool isSearching = false;

  // List of parliament officials
  List<Map<String, String>> parliamentMembers = [
    {
      'title': 'Speaker of Parliament',
      'subtitle': 'Rt. Hon. Alban Bagbin',
      'image': ConstantsImage.speakerImage,
    },
    {
      'title': 'Majority Leader',
      'subtitle': 'Hon. Osei Kyei-Mensah-Bonsu',
      'image': ConstantsImage.majorityLeaderImage,
    },
    {
      'title': 'Minority Leader',
      'subtitle': 'Hon. Cassiel Ato Forson',
      'image': ConstantsImage.minorityLeaderImage,
    },
    {
      'title': 'Parliamentary Committees',
      'subtitle': 'Explore the various committees responsible for legislative work.',
      'image': ConstantsImage.committeeImage,
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Filter the parliament members list based on search query
    List<Map<String, String>> filteredMembers = parliamentMembers.where((member) {
      return member['title']!.toLowerCase().contains(searchQuery.toLowerCase()) ||
          member['subtitle']!.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
          autofocus: true,
          style: const TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0),
          decoration: const InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: ConstantsTextColor.logintext),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
        )
            : const Text(
          'Parliament of Ghana',
          style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0),
        ),
        centerTitle: true,
        backgroundColor: ContainerConstants.appBarColor,
        iconTheme: const IconThemeData(
          color: ConstantsTextColor.logintext,
        ),
        actions: [
          IconButton(
            icon: Icon(isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                isSearching = !isSearching;
                searchQuery = '';
              });
            },
          ),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800.0,
          ),
          child: ListView.builder(
            itemCount: filteredMembers.length,
            itemBuilder: (context, index) {
              final member = filteredMembers[index];
              return _buildParliamentCard(
                context,
                member['title']!,
                member['subtitle']!,
                member['image']!,
              );
            },
          ),
        ),
      ),
    );
  }

  // Parliament card widget
  Widget _buildParliamentCard(
      BuildContext context,
      String title,
      String subtitle,
      String imagePath,
      ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ParliamentDetailsPage(
              title: title,
              subtitle: subtitle,
              imagePath: imagePath,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 200,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ContainerConstants.loginContainer,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: ConstantsTextColor.logintext,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            Text(
              subtitle,
              style: const TextStyle(
                color: ConstantsTextColor.logintext,
                fontSize: 11,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Image.asset(
                imagePath,
                height: 80,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParliamentDetailsPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const ParliamentDetailsPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: ConstantsTextColor.logintext, fontSize: 12.0),
        ),
        centerTitle: true,
        backgroundColor: ContainerConstants.loginContainer,
        iconTheme: const IconThemeData(
          color: ConstantsTextColor.logintext,
        ),
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
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                Image.asset(
                  imagePath,
                  height: 150,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16.0),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                Text(
                  'More information about $title will be provided here, detailing the roles, responsibilities, and contributions to the Parliament of Ghana.',
                  style: const TextStyle(fontSize: 11),
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
