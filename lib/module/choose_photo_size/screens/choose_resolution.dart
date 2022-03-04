import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passport_maker/constant/constant_colors.dart';
import 'package:passport_maker/module/choose_photo_size/bloc/resolution_bloc.dart';

class ChooseResolution extends StatelessWidget {
  const ChooseResolution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResolutionBloc(),
      child: SizedBox(
        height: 300,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [ResolutionRadioButtons()],
        ),
      ),
    );
  }
}

class ResolutionRadioButtons extends StatelessWidget {
  const ResolutionRadioButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResolutionBloc, ResolutionState>(
      builder: (context, state) {
        var _bloc = context.read<ResolutionBloc>();
        return Column(
          children: [
            ListTile(
              onTap: () {
                _bloc.changeResolution(ResolutionState.dpi300);
              },
              title: const Text(
                '300 DPI',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Radio(
                activeColor: primaryColor,
                value: ResolutionState.dpi300,
                groupValue: _bloc.state,
                onChanged: (ResolutionState? value) {
                  _bloc.changeResolution(value!);
                },
              ),
            ),
            ListTile(
              onTap: () {
                _bloc.changeResolution(ResolutionState.dpi450);
              },
              title: const Text(
                '450 DPI',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Radio(
                activeColor: primaryColor,
                value: ResolutionState.dpi450,
                groupValue: _bloc.state,
                onChanged: (ResolutionState? value) {
                  _bloc.changeResolution(value!);
                },
              ),
            ),
            ListTile(
              onTap: () {
                _bloc.changeResolution(ResolutionState.dpi600);
              },
              title: const Text(
                '600 DPI',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Radio(
                activeColor: primaryColor,
                value: ResolutionState.dpi600,
                groupValue: _bloc.state,
                onChanged: (ResolutionState? value) {
                  _bloc.changeResolution(value!);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
