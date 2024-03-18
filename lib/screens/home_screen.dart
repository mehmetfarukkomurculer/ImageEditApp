import 'package:flutter/material.dart';
import 'package:image_edit_app/screens/edit_image_screen.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () async {
            XFile? file = await ImagePicker().pickImage(
              source: ImageSource.gallery,
            );
            if (file != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      EditImageScreen(selectedImage: file.path),
                ),
              );
            }
          },
          icon: const Icon(
            Icons.upload_file,
            size: 24,
          ),
          label: const Text(
            'Choose an image from gallery.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        /*IconButton(
            icon: const Icon(
              Icons.upload_file,
              size: 36,
            ),
            onPressed: () async {
              XFile? file = await ImagePicker().pickImage(
                source: ImageSource.gallery,
              );
              if (file != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        EditImageScreen(selectedImage: file.path),
                  ),
                );
              }
            },
          ),*/
      ),
    );
  }
}
