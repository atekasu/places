import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places/providers/user_places.dart';
import 'package:places/widget/image_input.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({
    super.key,
  });
  @override
  ConsumerState<AddPlaceScreen> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleControlle = TextEditingController();
  File? selectedImage;

  void _savePlace() {
    final enteredText = _titleControlle.text;

    if (enteredText.isEmpty || selectedImage == null) {
      return;
    }
    ref.read(userPlacesProvider.notifier).addPlace(enteredText, selectedImage!);

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleControlle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'title',
              ),
              controller: _titleControlle,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            ImageInput(
              onPickImage: (image) {
                selectedImage = image;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
              onPressed: _savePlace,
              icon: const Icon(Icons.add),
              label: const Text('Add place'),
            ),
          ],
        ),
      ),
    );
  } // TODO: implement ==
}
