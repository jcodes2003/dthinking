import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

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
        Uri.parse('http://152.42.243.189/design/lib/api/view.php'),
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
          const SnackBar(content: Text('Failed to fetch folders')),
        );
      }
    } catch (e) {
      print('Error fetching folders: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('An error occurred while fetching folders')),
      );
    }
  }

  Future<void> _createFolder() async {
    TextEditingController nameController = TextEditingController();
    TextEditingController dateController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    Future<void> selectDate(BuildContext context) async {
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
          title: const Text('Create New Folder'),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
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
                const SizedBox(height: 16),
                TextFormField(
                  controller: dateController,
                  decoration: const InputDecoration(
                    labelText: 'Creation Date',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  onTap: () {
                    selectDate(context);
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
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  String folderName = nameController.text;
                  String creationTime = dateController.text;
                  await _addFolder(folderName, creationTime);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Create'),
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
            const SnackBar(content: Text('Folder created successfully')),
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
          const SnackBar(content: Text('Server error occurred')),
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
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FolderDetailPage(folder: folder),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Folders'),
        elevation: 0,
      ),
      body: folders.isEmpty
          ? const Center(child: Text('No folders available'))
          : ListView.builder(
              itemCount: folders.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: ListTile(
                    leading: const Icon(Icons.folder, color: Colors.amber),
                    title: Text(
                      folders[index]['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Created on: ${folders[index]['creation_date']}',
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () => _onFolderTap(folders[index]),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createFolder,
        tooltip: 'Create New Folder',
        child: const Icon(Icons.create_new_folder),
      ),
    );
  }
}

class FolderDetailPage extends StatelessWidget {
  final Map<String, dynamic> folder;

  const FolderDetailPage({super.key, required this.folder});

  void _addLesson(BuildContext context) {
    // TODO: Implement lesson addition logic
    print('Add lesson tapped for folder: ${folder['name']}');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Add lesson functionality to be implemented')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(folder['name']),
        elevation: 0,
      ),
      body: Center(
        child: Text('Lessons for ${folder['name']} will be displayed here.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addLesson(context),
        tooltip: 'Add Lesson',
        child: const Icon(Icons.add),
      ),
    );
  }
}
