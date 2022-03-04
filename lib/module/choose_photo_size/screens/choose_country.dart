import 'package:flutter/material.dart';
import 'package:passport_maker/constant/assest_path.dart';
import 'package:passport_maker/constant/constant_colors.dart';
import 'package:passport_maker/module/choose_photo_size/screens/choose_resolution.dart';

class ChooseCountry extends StatelessWidget {
  const ChooseCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _countryUi(context);
  }

  Widget _countryUi(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Container(
        height: 100,
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: greyTextColor)),
        child: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (ctx) {
                  return const Dialog(child: ChooseResolution());
                });
          },
          child: Row(
            children: [_flagUi(), _infoUi()],
          ),
        ),
      ),
    );
  }

  Widget _flagUi() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(kNepalFlag),
    );
  }

  Widget _infoUi() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            "Nepal: Passport Size",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "1.2*1.5 in",
                style: TextStyle(color: greyTextColor),
              ),
              Text(
                "Background color: Light grey",
                style: TextStyle(color: greyTextColor),
              )
            ],
          ))
        ],
      ),
    );
  }
}
