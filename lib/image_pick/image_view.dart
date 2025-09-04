import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:training/buttons27_08_2025/btn.dart';
import 'package:training/size.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  ImagePicker imagePicker = ImagePicker();

  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          image == null
              ? SizedBox()
              : CircleAvatar(
              radius: 80,
              backgroundImage: FileImage(File(image!.path))),

          Gap.v(10),
          AppBtn(
            text: "Pick Image",
            isGradient: true,
            onTap: () async {
              image = await imagePicker.pickImage(source: ImageSource.gallery);

              setState(() {});

              log(image!.path);
            },
          ),
        ],
      ),
    );
  }
}
