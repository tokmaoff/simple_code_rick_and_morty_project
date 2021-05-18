import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:rick_and_morty/theme/color_theme.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  SearchAppBar() : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.0, 24.0, 12.0, 0),
      child: Container(
        child: TextField(
          enabled: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(49.0, 0, 59.0, 12.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: ColorPallete.middleGray,
            ),
            hintText: 'Найти персонажа',
            hintStyle: TextStyle(
              color: ColorPallete.middleGray,
            ),
            fillColor: ColorPallete.darkGray,
            filled: true,
            suffixIcon: Icon(
              Icons.filter_alt_sharp,
              color: ColorPallete.middleGray,
            ),
          ),
        ),
      ),
    );
  }
}
