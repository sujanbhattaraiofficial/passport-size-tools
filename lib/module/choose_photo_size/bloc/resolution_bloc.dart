import 'package:flutter_bloc/flutter_bloc.dart';

enum ResolutionState { dpi300, dpi450, dpi600 }

class ResolutionBloc extends Cubit<ResolutionState> {
  ResolutionBloc() : super(ResolutionState.dpi300);

  void changeResolution(ResolutionState resolutionState) {
    emit(resolutionState);
  }
}
