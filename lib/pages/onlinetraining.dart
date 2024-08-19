import 'package:flutter/material.dart';
import 'constants.dart';

class OnlineTraining extends StatefulWidget {
  @override
  _OnlineTrainingState createState() => _OnlineTrainingState();
}

class _OnlineTrainingState extends State<OnlineTraining> {
  final List<Map<String, String>> _resources = [
    {
      'title': 'Flutter Development Course',
      'description': 'Learn how to build cross-platform apps with Flutter.',
      'url': 'https://flutter.dev/docs/get-started/codelab',
    },
    {
      'title': 'Dart Programming Language',
      'description': 'Master the Dart programming language used with Flutter.',
      'url': 'https://dart.dev/guides',
    },
    {
      'title': 'State Management in Flutter',
      'description': 'Understand different state management solutions in Flutter.',
      'url': 'https://flutter.dev/docs/development/data-and-backend/state-mgmt',
    },
  ];

  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    // Filter the resources list based on the search query
    List<Map<String, String>> _filteredResources = _resources.where((resource) {
      final resourceTitle = resource['title']!.toLowerCase();
      final resourceDescription = resource['description']!.toLowerCase();
      final searchLower = _searchQuery.toLowerCase();
      return resourceTitle.contains(searchLower) || resourceDescription.contains(searchLower);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Civic Society'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            Text(
              'Online Training Resources',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),

            // Search Bar
            TextField(
              decoration: InputDecoration(
                labelText: 'Search Resources',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (query) {
                setState(() {
                  _searchQuery = query;
                });
              },
            ),
            SizedBox(height: 20.0),

            // Resource List
            Expanded(
              child: _filteredResources.isEmpty
                  ? Center(child: Text('No resources found.'))
                  : ListView.builder(
                itemCount: _filteredResources.length,
                itemBuilder: (context, index) {
                  final resource = _filteredResources[index];
                  return _buildResourceItem(
                    title: resource['title']!,
                    description: resource['description']!,
                    url: resource['url']!,
                    context: context,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each resource item
  Widget _buildResourceItem({
    required String title,
    required String description,
    required String url,
    required BuildContext context,
  }) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600)),
        subtitle: Text(description),
        trailing: Icon(Icons.launch),
        onTap: () {
          // Open the resource URL
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ResourceDetailPage(url: url),
          ));
        },
      ),
    );
  }
}

// A new screen to display the resource details or open the URL
class ResourceDetailPage extends StatelessWidget {
  final String url;

  ResourceDetailPage({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resource Details'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Open the URL: $url'),
        // You might want to use a WebView to display the URL or launch it in a browser
      ),
    );
  }
}
