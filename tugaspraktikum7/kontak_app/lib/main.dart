import 'package:flutter/material.dart';
import 'package:kontak_app/sql_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'SQLITE',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // All kontaks
  List<Map<String, dynamic>> _kontaks = [];

  bool _isLoading = true;
  // This function is used to fetch all data from the database
  void _refreshKontaks() async {
    final data = await SQLHelper.getItems();
    setState(() {
      _kontaks = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshKontaks(); // Loading kontak ketika aplikasi mulai dijalankan
  }

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _no_teleponController = TextEditingController();

  // This function will be triggered when the floating button is pressed
  // It will also be triggered when you want to update an item
  void _showForm(int? id) async {
    if (id != null) {
      // id == null -> membuat item baru
      // id != null -> update item yang sudah ada
      final existingKontak =
          _kontaks.firstWhere((element) => element['id'] == id);
      _namaController.text = existingKontak['nama'];
      _no_teleponController.text = existingKontak['no_telepon'];
    }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _namaController,
                    decoration: const InputDecoration(hintText: 'Nama'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _no_teleponController,
                    decoration:
                        const InputDecoration(hintText: 'Nomor Telepon'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Save kontak baru
                      if (id == null) {
                        await _addItem();
                      }

                      if (id != null) {
                        await _updateItem(id);
                      }

                      // Menghapus text fields
                      _namaController.text = '';
                      _no_teleponController.text = '';

                      // Close tombol sheet
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'Buat Baru' : 'Edit'),
                  )
                ],
              ),
            ));
  }

// Insert kontak baru ke database
  Future<void> _addItem() async {
    await SQLHelper.createItem(
        _namaController.text, _no_teleponController.text);
    _refreshKontaks();
  }

  // Update kontak yang sudah ada
  Future<void> _updateItem(int id) async {
    await SQLHelper.updateItem(
        id, _namaController.text, _no_teleponController.text);
    _refreshKontaks();
  }

  // Menghapus item
  void _deleteItem(int id) async {
    await SQLHelper.deleteItem(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Berhasil menghapus kontak!'),
    ));
    _refreshKontaks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak List'),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _kontaks.length,
              itemBuilder: (context, index) => Card(
                color: Colors.cyan[200],
                margin: const EdgeInsets.all(15),
                child: ListTile(
                    title: Text(_kontaks[index]['nama']),
                    subtitle: Text(_kontaks[index]['no_telepon']),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _showForm(_kontaks[index]['id']),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteItem(_kontaks[index]['id']),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _showForm(null),
      ),
    );
  }
}
