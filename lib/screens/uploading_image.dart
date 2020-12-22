import 'package:flutter/material.dart';
import 'dart:io';
// import 'dart:convert';
// // import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class UploadingImage extends StatefulWidget {
  @override
  _UploadingImageState createState() => _UploadingImageState();
}

class _UploadingImageState extends State<UploadingImage> {
  File image;
  final picker = ImagePicker();

  Future chooseImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Widget showImage() {
    return Center(
      child: Container(
        child: image == null ? Text('No image selected.') : Image.file(image),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uploading Image'),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
              onPressed: chooseImage,
              child: Text(
                'Pick Image',
                style: TextStyle(fontSize: 20),
              ),
            ),
            showImage(),
          ],
        ),
      ),
    );
  }
}
