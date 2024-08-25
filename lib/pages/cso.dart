import 'package:flutter/material.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';
class CivicSociety extends StatelessWidget {
  const CivicSociety({super.key});

  final List<Map<String, String>> _csos = const [
    {
      'name': 'Youth Empowerment Network',
      'description': 'Focuses on empowering youth through education and skill development.',
    },
    {
      'name': 'Green Earth Initiative',
      'description': 'Works to combat climate change and promote environmental sustainability.',
    },
    {
      'name': 'Women for Equality',
      'description': 'Advocates for women’s rights and gender equality globally.',
    },
    {
      'name': 'Community Health Alliance',
      'description': 'Provides health services to underprivileged communities.',
    },
    {
      'name': 'Educational Outreach Society',
      'description': 'Supports educational programs in rural areas.',
    },
    {
      'name': 'Global Peace Forum',
      'description': 'Promotes conflict resolution and peacebuilding initiatives.',
    },
    {
      'name': 'Civil Rights Defenders',
      'description': 'Protects civil and human rights through advocacy and legal support.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Civic Society',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        centerTitle: true,
        backgroundColor: ContainerConstants.appBarColor,
        iconTheme: const IconThemeData(color: ConstantsIcon.iconWhite),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child:  Text(
                    'Welcome to Civic Society',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Our mission is to bring people together and foster community engagement. '
                      'Here, we aim to provide resources, support local initiatives, and create '
                      'opportunities for community members to collaborate and make a positive impact.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 24.0),
                Expanded(
                  child: ListView.builder(
                    itemCount: _csos.length,
                    itemBuilder: (context, index) {
                      final cso = _csos[index];
                      return Card(
                        elevation: 4.0,
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16.0),
                          title: Text(
                            cso['name']!,
                            style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(cso['description']!,style: const TextStyle(fontSize: 12.0),),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CSODetailPage(
                                  name: cso['name']!,
                                  description: cso['description']!,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ContactUsPage(),
                      ));
                    },
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ConstantsTextColor.loginTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CSODetailPage extends StatelessWidget {
  final String name;
  final String description;
  const CSODetailPage({
    required this.name,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name,style: const TextStyle(fontSize: 12,color: ConstantsTextColor.logintext),),
        backgroundColor: ContainerConstants.appBarColor,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: ConstantsIcon.iconWhite,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us',style: TextStyle(fontSize: 12.0,color: ConstantsTextColor.logintext),),
        backgroundColor: ContainerConstants.appBarColor,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: ConstantsIcon.iconWhite
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'For more information, please reach out to us at contact@civicsociety.org.',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
