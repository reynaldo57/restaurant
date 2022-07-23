

import 'package:flutter/material.dart';
import 'package:restaurant/common/colors.dart';
import 'package:restaurant/widgets/text_normal_widget.dart';

class CategoryFilterWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: FilterChip(
        backgroundColor: BRAND_PRIMARY,
        label: Container(
          height: 26.0,
          width: 50.0,
          child: Center(
            child: TextNormalPrimary(
              text: "Todos",
            ),
          ),
        ),
        onSelected: (bool selected) {

        },
      ),
    );
  }
}
