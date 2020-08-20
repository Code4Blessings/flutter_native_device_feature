import 'package:flutter/material.dart';
import 'dart:io';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          height: 100,
          width: 150,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          child: _storedImage != null ? Image.file(
            _storedImage, 
            fit: BoxFit.cover, 
            width: double.infinity)
             : Text('No image taken', textAlign: TextAlign.center),
          alignment: Alignment.center,
        ),
        SizedBox(width: 10),
        //Button is needed to open the image picker or access camera
        Expanded(
          child: FlatButton.icon(
          onPressed: () {}, 
          icon: Icon(Icons.camera), 
          label: Text('Take Picture'),
          textColor: Theme.of(context).primaryColor,
        ),
      ),
      ],
    );
  }
}
