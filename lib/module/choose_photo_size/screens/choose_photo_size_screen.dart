import 'package:flutter/material.dart';
import 'package:passport_maker/constant/constant_colors.dart';
import 'package:passport_maker/module/choose_photo_size/screens/choose_country.dart';

class ChoosePhotoSizeScreen extends StatelessWidget {
  const ChoosePhotoSizeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        // actions: [Icon(Icons.settings),],
        title: const Text(
          "Choose photo size",
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: const [ChooseCountry()],
      )),
    );
  }
}
