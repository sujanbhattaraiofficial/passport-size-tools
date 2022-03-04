import 'package:flutter/material.dart';
import 'package:passport_maker/constant/assest_path.dart';
import 'package:passport_maker/constant/constant_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        // actions: [Icon(Icons.settings),],
        title: const Text(
          "Passport Photo Maker",
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/choosephotosizePage");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _choosePhotoUi(),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _choosePhotoUi() {
    return Column(
      children: [
        Image.asset(
          kMan_ic,
          height: 60,
        ),
        const Text(
          "New Photo",
          style: TextStyle(color: blackTextColor, fontSize: 15),
        )
      ],
    );
  }
}
