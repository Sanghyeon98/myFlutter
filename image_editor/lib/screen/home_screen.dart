import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_editor/component/main_app_bar.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key?key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          renderBody(),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: MainAppBar(
              onPickImage: onPickImage,
              onDeleteItem: onDeleteItem,
              onSaveImage: onSaveImage,
            ),
          ),
        ],
      ),
    );
  }

  Widget renderBody(){
    if(image != null){
      return Positioned.fill(child: InteractiveViewer(
        child: Image.file(File(image!.path),
        fit: BoxFit.cover,
        ),
      ),
      );
    } else{
      return Center(
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
          ),
          onPressed: onPickImage,
          child: Text('이미지를 선택하기'),
      ),
      );
    }
  }

  void onPickImage() async{
    final image =await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      this.image =image;
    });
  }
  void onDeleteItem(){

  }
  void onSaveImage(){
  }

  }

