import 'package:flutter/material.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';
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
      'description':
      'Nana Addo Dankwa Akufo-Addo is a Ghanaian politician who has served as the president of Ghana since 2017. He previously served as Attorney General from 2001 to 2003 and as Minister for Foreign Affairs from 2003 to 2007 under the Kufuor-led administration.',
      'image': ConstantsImage.presidentImage,
    },
    {
      'title': 'Vice President of Ghana',
      'subtitle': 'Dr. Mahamudu Bawumia',
      'description':
      'Dr. Mahamudu Bawumia is the Vice President of Ghana, serving since 2017. He is an economist and has worked in various governmental and international organizations prior to his appointment.',
      'image': ConstantsImage.vicePresidentImage,
    },
    {
      'title': 'Minister of Finance',
      'subtitle': 'Ken Ofori-Atta',
      'description':
      'Ken Ofori-Atta has served as the Minister of Finance since 2017. He has been responsible for overseeing the financial affairs of the government and driving economic policies.',
      'image': ConstantsImage.financeMinisterImage,
    },
    {
      'title': 'Minister of Foreign Affairs',
      'subtitle': 'Shirley Ayorkor Botchwey',
      'description':
      'Shirley Ayorkor Botchwey is the Minister of Foreign Affairs. She represents Ghana in international diplomatic relations and is responsible for the country’s foreign policy.',
      'image': ConstantsImage.foreignAffairsMinisterImage,
    },
    {
      'title': 'Minister of Education',
      'subtitle': 'Dr. Yaw Osei Adutwum',
      'description':
      'Dr. Yaw Osei Adutwum is the Minister of Education, working towards improving educational standards and access in Ghana.',
      'image': ConstantsImage.educationMinisterImage,
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredOfficials = officials.where((official) {
      return official['title']!
          .toLowerCase()
          .contains(searchQuery.toLowerCase()) ||
          official['subtitle']!
              .toLowerCase()
              .contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: ConstantsTextColor.logintext),
          ),
          style: const TextStyle(color: ConstantsTextColor.logintext),
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
        )
            : const Text(
          'Government of Ghana',
          style: TextStyle(color: ConstantsTextColor.logintext, fontSize: 18.0),
        ),
        centerTitle: true,
        backgroundColor: ContainerConstants.appBarColor,
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
            maxWidth: 1000,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: filteredOfficials.isEmpty
                ? const Center(child: Text(Constants.notFound))
                : LayoutBuilder(
              builder: (context, constraints) {
                bool isWideScreen = constraints.maxWidth > 600;
                return Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  direction: isWideScreen ? Axis.horizontal : Axis.vertical,
                  children: filteredOfficials.map((official) {
                    return SizedBox(
                      width: isWideScreen ? 300 : double.infinity,
                      child: _buildGovernmentCard(
                        context,
                        official['title']!,
                        official['subtitle']!,
                        official['image']!,
                        official['description']!,
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

   _buildGovernmentCard(
      BuildContext context,
      String title,
      String subtitle,
      String imagePath,
      String description,
      ) {
    return Container(
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              imagePath,
              width: 100,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 12.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _showMoreInfoDialog(context, title, subtitle, description);
                  },
                  child: const Text(Constants.learnMore),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showMoreInfoDialog(
      BuildContext context,
      String title,
      String subtitle,
      String description,
      ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12.0),
                ),
                const SizedBox(height: 10),
                Text(description),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text(Constants.alertclose),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
