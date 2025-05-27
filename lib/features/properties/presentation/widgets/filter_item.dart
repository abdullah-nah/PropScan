import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/style/app_gradients.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/features/properties/presentation/cubits/home_cubit.dart';
import 'package:prop_scan/features/properties/presentation/cubits/home_state.dart';

class FilterItem extends StatelessWidget {
  final String text;
  final int index;
  const FilterItem({super.key, required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);

    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        if (previous is HomeInitial) {
          return true;
        }
        if (previous is SelectFilterItem && current is SelectFilterItem) {
          if (previous.index == index || current.index == index) {
            return true;
          }
        }
        return false;
      },
      builder: (context, state) {
        final isSelected = (homeCubit.selectedFilterIndex == index);
        return InkWell(
          onTap: () => homeCubit.selectFilterItem(index),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            decoration: BoxDecoration(
              gradient: isSelected ? AppGradients.kGradient2 : null,
              color: isSelected ? null : AppPalette.grey.withValues(alpha: .1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ResponsiveText(
              text,
              style: TextStyle(
                fontSize: 14,
                color: isSelected ? AppPalette.white : AppPalette.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      },
    );
  }
}
