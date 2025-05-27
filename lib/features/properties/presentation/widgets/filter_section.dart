import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/properties/presentation/cubits/home_cubit.dart';
import 'package:prop_scan/features/properties/presentation/widgets/filter_item.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);

    return SizedBox(
      height: (SizeConfig.height - kToolbarHeight) * (1 / 17),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder:
            (context, index) =>
                FilterItem(text: homeCubit.filterItems[index], index: index),
        separatorBuilder: (context, index) => const HorizontalSpace(10),
        itemCount: homeCubit.filterItems.length,
      ),
    );
  }
}
