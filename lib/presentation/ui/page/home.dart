import "package:file_picker/file_picker.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openFileExplorer() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        withReadStream:true, // this will return PlatformFile object with read stream
      );
      print(result?.files.first.name);
    } on PlatformException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "glimpse",
          style: TextStyle(fontFamily: "Pacifico"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: _openFileExplorer,
              child: const Text("Add File"),
            ),
          )
        ],
      ),
    );
  }
}
