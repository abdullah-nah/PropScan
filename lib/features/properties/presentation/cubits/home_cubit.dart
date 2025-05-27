import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prop_scan/features/properties/presentation/cubits/home_state.dart';

final class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> filterItems = [
    'House',
    'Apartment',
    'Hotel',
    'Villa',
    'Market',
  ];

  int selectedFilterIndex = 0;

  void selectFilterItem(index) {
    selectedFilterIndex = index;
    emit(SelectFilterItem(index));
  }
}
