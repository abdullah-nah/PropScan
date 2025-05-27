import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prop_scan/features/properties/presentation/cubits/home_cubit.dart';
import 'package:prop_scan/features/properties/presentation/widgets/custom_drawer.dart';
import 'package:prop_scan/features/properties/presentation/widgets/home_screen_app_bar.dart';
import 'package:prop_scan/features/properties/presentation/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: BlocProvider.of<HomeCubit>(context).scaffoldKey,
      appBar: const HomeScreenAppBar(),
      body: const SingleChildScrollView(child: HomeScreenBody()),
      drawer: const CustomDrawer(),
    );
  }
}
