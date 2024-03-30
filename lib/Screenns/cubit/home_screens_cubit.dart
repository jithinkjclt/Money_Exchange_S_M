import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'home_screens_state.dart';

class HomeScreensCubit extends Cubit<HomeScreensState> {
  HomeScreensCubit() : super(HomeScreensInitial());

  TextEditingController dollarCtr = TextEditingController();
  TextEditingController rupeesCtr = TextEditingController();

  dollar() {
    String dollar = dollarCtr.text;
    if (dollar.isNotEmpty) {
      double dollar1 = double.parse(dollar);
      double convertedDoller = dollar1 * 80;
      rupeesCtr.text = convertedDoller.toString();
    }
  }

  rupees() {
    String rupees = rupeesCtr.text;
    if (rupees.isNotEmpty) {
      double rupees1 = double.parse(rupees);
      double convertedRupees = rupees1 / 80;
      dollarCtr.text = convertedRupees.toString();
    }
  }
}
