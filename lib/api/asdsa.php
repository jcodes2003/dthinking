import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Map<String, dynamic>> folders = [];

  @override
  void initState() {
    super.initState();
    _fetchFolders();
  }

  Future<void> _fetchFolders() async {
    try {
      final response = await http.post(
        Uri.parse('http://localhost/design/lib/api/view.php'),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {
          'operation': 'getFolder',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> folderData = json.decode(response.body);
        setState(() {
          folders = folderData
              .map((folder) => {
                    'id': folder['folder_id'],
                    'name': folder['folder_name'],
                    'creation_date': folder['folder_date'],
                  })
              .toList();
        });
      } else {
        print('Failed to fetch folders: Server error ${response.statusCode}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to fetch folders')),
        );
      }
    } catch (e) {
      print('Error fetching folders: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred while fetching folders')),
      );
    }
  }

  Future<void> _createFolder() async {
    TextEditingController nameController = TextEditingController();
    TextEditingController dateController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );
      if (picked != null) {
        setState(() {
          dateController.text = DateFormat('yyyy-MM-dd').format(picked);
        });
      }
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Create New Folder'),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Folder Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.folder),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a folder name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: dateController,
                  decoration: InputDecoration(
                    labelText: 'Creation Date',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  onTap: () {
                    _selectDate(context);
                  },
                  readOnly: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a date';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  String folderName = nameController.text;
                  String creationTime = dateController.text;
                  await _addFolder(folderName, creationTime);
                  Navigator.of(context).pop();
                }
              },
              child: Text('Create'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _addFolder(String folderName, String creationTime) async {
    Map<String, dynamic> data = {
      'folder_name': folderName,
      'folder_date': creationTime,
    };
    try {
      final response = await http.post(
        Uri.parse('http://localhost/design/lib/api/add.php'),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {
          'operation': 'addfolder',
          'json': jsonEncode(data),
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        if (responseData['success'] == true) {
          print('Folder created successfully with ID: ${responseData['id']}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Folder created successfully')),
          );
          await _fetchFolders(); // Refresh the folder list
        } else {
          print('Failed to create folder: ${responseData['error']}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:
                    Text('Failed to create folder: ${responseData['error']}')),
          );
        }
      } else {
        print('Failed to create folder: Server error ${response.statusCode}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Server error occurred')),
        );
      }
    } catch (e) {
      print('Error adding folder: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  void _onFolderTap(Map<String, dynamic> folder) {
    print('Folder tapped: ${folder['name']}');
    if (folder['id'] != null) {
      // Ensure folder['id'] is a String
      String folderId = folder['id'].toString(); // Convert to String
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FolderDetailPage(
              folder: folder, folderId: folderId), // Pass folder ID as String
        ),
      );
    } else {
      print('Error: folder_id is null for folder: ${folder['id']}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: folder ID is missing')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Folders'),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/empha.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: folders.isEmpty
            ? Center(
                child: Text('No folders available',
                    style: TextStyle(color: Colors.white)))
            : ListView.builder(
                itemCount: folders.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: ListTile(
                      leading: Icon(Icons.folder, color: Colors.amber),
                      title: Text(
                        folders[index]['name'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Created on: ${folders[index]['creation_date']}',
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => _onFolderTap(folders[index]),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createFolder,
        child: Icon(Icons.create_new_folder),
        tooltip: 'Create New Folder',
      ),
    );
  }
}

class FolderDetailPage extends StatefulWidget {
  final Map<String, dynamic> folder;
  final String folderId; // Add folderId parameter

  const FolderDetailPage(
      {required this.folder, required this.folderId}); // Update constructor

  @override
  _FolderDetailPageState createState() => _FolderDetailPageState();
}

class _FolderDetailPageState extends State<FolderDetailPage> {
  List<Map<String, dynamic>> cardLists = [];

  @override
  void initState() {
    super.initState();
    _fetchCardLists();
  }

  Future<void> _fetchCardLists() async {
    try {
      final folderId = widget.folder['id'].toString();
      print('Fetching card lists for folder ID: $folderId');

      final response = await http.post(
        Uri.parse('http://localhost/design/lib/api/add.php'),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {
          'operation': 'getMyList',
          'folderId': folderId,
        },
      );

      if (response.statusCode == 200) {
        final String responseBody = response.body.trim();
        if (responseBody.startsWith('[') && responseBody.endsWith(']')) {
          final List<dynamic> cardListData = json.decode(responseBody);
          if (cardListData.isNotEmpty) {
            setState(() {
              cardLists = List<Map<String, dynamic>>.from(cardListData);
            });
          } else {
            print('No card lists found for folder ID: $folderId');
          }
        } else {
          print('Invalid response format: $responseBody');
          throw Exception('Invalid response format');
        }
      } else {
        print(
            'Failed to fetch card lists for folder ID $folderId: Server error ${response.statusCode}');
        throw Exception('Server error ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching card lists: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('An error occurred while fetching card lists: $e')),
      );
    }
  }

  void _addLesson(BuildContext context) {
    // TODO: Implement lesson addition logic
    print('Add lesson tapped for folder: ${widget.folder['name']}');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Add lesson functionality to be implemented')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.folder['name']),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: cardLists.isEmpty
            ? Center(
                child: Text(
                  'No lessons available for ${widget.folder['name']}',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : ListView.builder(
                itemCount: cardLists.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: ListTile(
                      title: Text(
                        cardLists[index]['cards_title'] ?? 'Untitled',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        cardLists[index]['back_cards_header_title	'] ??
                            'No content',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {
                        // TODO: Implement navigation to lesson detail page
                        print(
                            'Lesson tapped: ${cardLists[index]['list_cards_header_title']}');
                      },
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addLesson(context),
        child: Icon(Icons.add),
        tooltip: 'Add Lesson',
      ),
    );
  }