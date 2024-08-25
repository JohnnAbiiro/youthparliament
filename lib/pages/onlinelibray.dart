import 'package:flutter/material.dart';
import 'constants.dart';
import '../constants/containerconstants.dart';
import '../constants/imageconstants.dart';
import '../constants/textconstants.dart';
import '../constants/iconconstants.dart';
class OnlineLibrary extends StatefulWidget {
  const OnlineLibrary({super.key});

  @override
  _OnlineLibraryState createState() => _OnlineLibraryState();
}

class _OnlineLibraryState extends State<OnlineLibrary> {
  final List<Map<String, String>> _books = [
    {
      'title': 'Book Title 1',
      'author': 'Author 1',
      'imagePath': ConstantsImage.book1,
    },
    {
      'title': 'Book Title 2',
      'author': 'Author 2',
      'imagePath': ConstantsImage.book2,
    },
    {
      'title': 'Book Title 3',
      'author': 'Author 3',
      'imagePath': ConstantsImage.book3,
    },
  ];

  String _searchQuery = "";

  @override
    build(BuildContext context) {
    List<Map<String, String>> _filteredBooks = _books.where((book) {
      final bookTitle = book['title']!.toLowerCase();
      final bookAuthor = book['author']!.toLowerCase();
      final searchLower = _searchQuery.toLowerCase();
      return bookTitle.contains(searchLower) || bookAuthor.contains(searchLower);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Online Library',
          style: TextStyle(color: ConstantsTextColor.logintext,fontSize: 12.0),
        ),
        centerTitle: true,
        backgroundColor: ContainerConstants.appBarColor,
        iconTheme: const IconThemeData(
          color: ConstantsIcon.iconWhite
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Search for Books',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:'Enter book title or author',
                    hintText: 'Enter book title or author',
                    suffixIcon: Icon(Icons.search),
                  ),
                  onChanged: (query) {
                    setState(() {
                      _searchQuery = query;
                    });
                  },
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Featured Books',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: _filteredBooks.isEmpty
                    ? Center(child: Text('No books found.',style: TextStyle(fontSize: 12.0),))
                    : ListView.builder(
                  itemCount: _filteredBooks.length,
                  itemBuilder: (context, index) {
                    final book = _filteredBooks[index];
                    return _buildBookCard(
                      book['title']!,
                      book['author']!,
                      book['imagePath']!,
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

  Widget _buildBookCard(String title, String author, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 60,
          height: 90,
          fit: BoxFit.cover,
        ),
        title: Text(title,style: const TextStyle(fontSize: 12.0,),),
        subtitle: Text(author,style: const TextStyle(fontSize: 11),),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {

        },
      ),
    );
  }
}
