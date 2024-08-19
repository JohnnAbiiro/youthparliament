import 'package:flutter/material.dart';
import 'constants.dart';

class GovernmentOfGhana extends StatefulWidget {
  const GovernmentOfGhana({super.key});

  @override
  State<GovernmentOfGhana> createState() => _GovernmentOfGhanaState();
}

class _GovernmentOfGhanaState extends State<GovernmentOfGhana> {
  String searchQuery = '';
  bool isSearching = false;

  List<Map<String, String>> officials = [
    {
      'title': 'President of Ghana',
      'subtitle': 'H.E. Nana Addo Dankwa Akufo-Addo',
      'image': Constants.presidentImage,
    },
    {
      'title': 'Vice President of Ghana',
      'subtitle': 'Dr. Mahamudu Bawumia',
      'image': Constants.vicePresidentImage,
    },
    {
      'title': 'Minister of Finance',
      'subtitle': 'Amin',
      'image': Constants.financeMinisterImage,
    },
    {
      'title': 'Minister of Foreign Affairs',
      'subtitle': 'Shirley Ayorkor Botchwey',
      'image': Constants.foreignAffairsMinisterImage,
    },
    {
      'title': 'Minister of Education',
      'subtitle': 'Dr. Yaw Osei Adutwum',
      'image': Constants.educationMinisterImage,
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Filter the list based on the search query
    List<Map<String, String>> filteredOfficials = officials.where((official) {
      return official['title']!.toLowerCase().contains(searchQuery.toLowerCase()) ||
          official['subtitle']!.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: const TextStyle(color: Colors.white),
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
        )
            : const Text(
          'Government of Ghana',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        centerTitle: true,
        backgroundColor: Constants.appBarColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: Icon(isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                if (isSearching) {
                  searchQuery = '';
                }
                isSearching = !isSearching;
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
          child: Column(
            children: [
              // List of government officials
              Expanded(
                child: ListView.builder(
                  itemCount: filteredOfficials.length,
                  itemBuilder: (context, index) {
                    final official = filteredOfficials[index];
                    return _buildGovernmentCard(
                      context,
                      official['title']!,
                      official['subtitle']!,
                      official['image']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Government card widget
  Widget _buildGovernmentCard(
      BuildContext context, String title, String subtitle, String imagePath) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GovernmentDetailsPage(
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
          color: const Color(0xff2e388f),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
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

class GovernmentDetailsPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const GovernmentDetailsPage({
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
          style: const TextStyle(color: Colors.white,fontSize: 12.0),
        ),
        centerTitle: true,
        backgroundColor: Constants.appBarColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
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
                  'Detailed information about $title will be provided here, including roles, responsibilities, and contributions to the Government of Ghana.',
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
