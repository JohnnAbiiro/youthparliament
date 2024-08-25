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

  // Dynamic icons for each category
  Map<String, IconData> categoryIcons = {
    "Political Parties": Icons.business,
    "Parliament of the Republic of Ghana": Icons.house,
    "National Commission of Civic Education": Icons.school,
    "Youth Opinion Polls: Governance & Leadership Accountability": Icons.people,
    "Electoral Commission of Ghana": Icons.ballot,
    "CSOs and Stakeholders Partnerships": Icons.group,
    "Online Library": Icons.library_books,
    "Online Training Centre": Icons.online_prediction,
    "Upcoming Events": Icons.event,
    "Ghana Government": Icons.book,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              buildCategoryItem(context, "Political Parties"),
              buildCategoryItem(context, "Parliament of the Republic of Ghana"),
              buildCategoryItem(context, "National Commission of Civic Education"),
              buildCategoryItem(context, "Youth Opinion Polls: Governance & Leadership Accountability"),
              buildCategoryItem(context, "Electoral Commission of Ghana"),
              buildCategoryItem(context, "CSOs and Stakeholders Partnerships"),
              buildCategoryItem(context, "Online Library"),
              buildCategoryItem(context, "Online Training Centre"),
              buildCategoryItem(context, "Upcoming Events"),
              buildCategoryItem(context, "Ghana Government"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryItem(BuildContext context, String title) {
    // Determine the icon based on the category
    IconData icon = categoryIcons[title] ?? Icons.help_outline; // Default icon if not found

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PollPage(
              category: title,
              info: categoryInfo[title]!,
            ),
          ),
        );
      },
      child: Container(
        width: 150, // Adjust width as needed
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            Icon(icon, size: 24, color: Colors.blue), // Use the dynamic icon
            SizedBox(height: 8.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Constants.loginTextColor,
              ),
            ),
          ],
        ),
      ),
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
