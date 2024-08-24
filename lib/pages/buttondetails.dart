import 'package:flutter/material.dart';
import 'constants.dart';

class Detailbutton extends StatefulWidget {
  const Detailbutton({super.key});

  @override
  State<Detailbutton> createState() => _DetailbuttonState();
}

class _DetailbuttonState extends State<Detailbutton> {
  // Brief information for each category
  Map<String, String> categoryInfo = {
    "Political Parties": "Information about the structure and accountability of political parties.",
    "Parliament of the Republic of Ghana": "Overview of Parliament's performance and transparency.",
    "National Commission of Civic Education": "Evaluation of civic education programs and resource allocation.",
    "Youth Opinion Polls: Governance & Leadership Accountability": "Youth's voice in governance and leadership accountability.",
    "Electoral Commission of Ghana": "Trust in the Electoral Commission and suggestions for improvements.",
    "CSOs and Stakeholders Partnerships": "Impact of CSOs and the effectiveness of their partnerships with the government.",
    "Online Library": "Usage and expansion of online library resources.",
    "Online Training Centre": "Effectiveness of training programs and suggestions for improvement.",
    "Upcoming Events": "Awareness and likelihood of attending governance-related events.",
    "Ghana Government": "Satisfaction with government performance and transparency."
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            buildCategoryRow(context, "Political Parties", "Parliament of the Republic of Ghana"),
            buildCategoryRow(context, "National Commission of Civic Education", "Youth Opinion Polls: Governance & Leadership Accountability"),
            buildCategoryRow(context, "Electoral Commission of Ghana", "CSOs and Stakeholders Partnerships"),
            buildCategoryRow(context, "Online Library", "Online Training Centre"),
            buildCategoryRow(context, "Upcoming Events", "Ghana Government"),
            buildContactUsRow(context),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Widget
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('assets/images/sample_image.jpg'), // Add your image path here
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16), // Spacing between image and text

                // Text Description and Button
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sample Description",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Button action here
                        },
                        child: Text("Learn More"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  Widget buildCategoryRow(BuildContext context, String title1, String title2) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PollPage(
                      category: title1,
                      info: categoryInfo[title1]!,
                    ),
                  ),
                );
              },
              child: Text(
                title1,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Constants.loginTextColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PollPage(
                      category: title2,
                      info: categoryInfo[title2]!,
                    ),
                  ),
                );
              },
              child: Text(
                title2,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Constants.loginTextColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContactUsRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
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
                  color: Constants.loginTextColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8.0), // Placeholder to balance the row
        Expanded(child: Container()), // Empty space for alignment
      ],
    );
  }
}

class PollPage extends StatelessWidget {
  final String category;
  final String info;

  const PollPage({super.key, required this.category, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category Information'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
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
        title: const Text('Contact Us'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Contact Us Page Content'),
      ),
    );
  }
}
