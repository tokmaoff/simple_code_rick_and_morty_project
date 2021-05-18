import 'package:flutter/material.dart';
import 'package:rick_and_morty/components/search_bar.dart';
import 'package:rick_and_morty/screens/profiles_screen/characters_list.dart';
import 'package:rick_and_morty/theme/color_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.backgroundGray,
      appBar: SearchAppBar(),
      body: CharactersList(),
    );
  }
}
