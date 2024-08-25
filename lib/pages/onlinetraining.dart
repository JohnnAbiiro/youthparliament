import 'package:flutter/material.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';
class OnlineTraining extends StatefulWidget {
  const OnlineTraining({super.key});

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
  bool _isSearching = false;

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
        title: _isSearching
            ? TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Search Resources...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: ConstantsTextColor.logintext),
          ),
          style: const TextStyle(color: ConstantsTextColor.logintext),
          onChanged: (query) {
            setState(() {
              _searchQuery = query;
            });
          },
        )
            : const Text('Online Training centre',style: TextStyle(color: ConstantsTextColor.logintext,fontSize: 12.0),),
        centerTitle: true,
        backgroundColor: ContainerConstants.appBarColor,
        iconTheme: const IconThemeData(
          color: ConstantsIcon.iconWhite,
        ),
        actions: [
         IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                if (_isSearching) {
                  _searchQuery = '';
                }
                _isSearching = !_isSearching;
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const  Center(
                  child:  Text(
                    'Online Training Resources',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: _filteredResources.isEmpty
                      ? const Center(child: Text('No resources found.', style: TextStyle(color: ConstantsTextColor.logintext,fontSize: 12.0,)))
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
        ),
      ),
    );
  }


   _buildResourceItem({
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
        title: Text(title, style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600)),
        subtitle: Text(description),
        trailing: const Icon(Icons.launch),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ResourceDetailPage(url: url),
          ));
        },
      ),
    );
  }
}

class ResourceDetailPage extends StatelessWidget {
  final String url;

  const ResourceDetailPage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resource Details',style: TextStyle(fontSize: 12.0,color: ConstantsTextColor.logintext),),
        backgroundColor: ContainerConstants.appBarColor,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: ConstantsIcon.iconWhite,
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800.0
          ),
           child: Text('Open the URL: $url',style: const TextStyle(fontSize: 12.0),),
        ),
      ),
    );
  }
}
