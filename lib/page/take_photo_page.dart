import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class TakePhotoPage extends StatefulWidget {
  const TakePhotoPage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<TakePhotoPage> createState() => _TakePhotoPageState();
}

class _TakePhotoPageState extends State<TakePhotoPage> {
  File? image;
  bool postButtonActive = false;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
      updatePostButtonActive();
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
      updatePostButtonActive();
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  void updatePostButtonActive() {
    if (image != null) {
      setState(() => this.postButtonActive = true);
    }
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Posted!"),
      content: Text("The photo of your fit has been posted."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Take/Upload Photo"),
        ),
        body: Center(
          child: Column(
            children: [
              MaterialButton(
                  color: Colors.blue,
                  child: const Text("Pick Photo from Gallery",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    pickImage();
                  }),
              MaterialButton(
                  color: Colors.blue,
                  child: const Text("Pick Photo from Camera",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    pickImageC();
                  }),
              SizedBox(
                height: 20,
              ),
              image != null ? Image.file(image!) : Text("No Image Selected"),
              if (postButtonActive)
                TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText:
                            "Enter some info about your fit. (What is it for? Who will you be wearing it with? etc.)"),
                    maxLines: 5),
              if (postButtonActive)
                MaterialButton(
                    color: Color.fromARGB(255, 42, 146, 7),
                    child: const Text("Post your fit",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      showAlertDialog(context);
                    }),
            ],
          ),
        ));
  }
}

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: const Text("Image Picker Example"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             MaterialButton(
//                 color: Colors.blue,
//                 child: const Text("Pick Image from Gallery",
//                     style: TextStyle(
//                         color: Colors.white70, fontWeight: FontWeight.bold)),
//                 onPressed: () {}),
//             MaterialButton(
//                 color: Colors.blue,
//                 child: const Text("Pick Image from Camera",
//                     style: TextStyle(
//                         color: Colors.white70, fontWeight: FontWeight.bold)),
//                 onPressed: () {}),
//           ],
//         ),
//       ));
// }
// //
// // import 'dart:io';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';

// // class MyPage extends StatefulWidget {
// //   @override
//   _MyPageState createState() => _MyPageState();
// }

// class _MyPageState extends State<MyPage> {
//   /// Variables
//   File imageFile;

//   /// Widget
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Image Picker"),
//         ),
//         body: Container(
//             child: imageFile == null
//                 ? Container(
//                     alignment: Alignment.center,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         RaisedButton(
//                           color: Colors.greenAccent,
//                           onPressed: () {
//                             _getFromGallery();
//                           },
//                           child: Text("PICK FROM GALLERY"),
//                         ),
//                         Container(
//                           height: 40.0,
//                         ),
//                         RaisedButton(
//                           color: Colors.lightGreenAccent,
//                           onPressed: () {
//                             _getFromCamera();
//                           },
//                           child: Text("PICK FROM CAMERA"),
//                         )
//                       ],
//                     ),
//                   )
//                 : Container(
//                     child: Image.file(
//                       imageFile,
//                       fit: BoxFit.cover,
//                     ),
//                   )));
//   }

//   /// Get from gallery
//   _getFromGallery() async {
//     PickedFile pickedFile = await ImagePicker().getImage(
//       source: ImageSource.gallery,
//       maxWidth: 1800,
//       maxHeight: 1800,
//     );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }

//   /// Get from Camera
//   _getFromCamera() async {
//     PickedFile pickedFile = await ImagePicker().getImage(
//       source: ImageSource.camera,
//       maxWidth: 1800,
//       maxHeight: 1800,
//     );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }
// }
