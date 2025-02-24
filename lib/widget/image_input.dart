import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});
  @override
  State<ImageInput> createState() {
    // TODO: implement createState
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  void _takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);

    if (pickedImage == null) {
      return;
    }
    _selectedImage = File(pickedImage.path);
    // TODO: handle the picked image
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget content = TextButton.icon(
      icon: const Icon(Icons.camera),
      label: const Text('take Pictur'),
      onPressed: _takePicture,
    );

    if (_selectedImage != null) {
      content = Image.file(_selectedImage!, fit: BoxFit.cover);
    }
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        ),
      ),
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      child: content,
    );
  }
}
