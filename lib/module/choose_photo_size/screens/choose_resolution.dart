import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passport_maker/module/choose_photo_size/bloc/resolution_bloc.dart';

class ChooseResolution extends StatelessWidget {
  const ChooseResolution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResolutionBloc(),
      child: Column(
        children: [Text("data")],
      ),
    );
  }
}
