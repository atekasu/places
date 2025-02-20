import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});
  @override
  State<ImageInput> createState() {
    // TODO: implement createState
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250,
      width: double.infinity,
      child: TextButton.icon(
        icon: const Icon(Icons.camera),
        label: const Text('Take picture'),
        onPressed: () {},
      ),
    );
  }
}
