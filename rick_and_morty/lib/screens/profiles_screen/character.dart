import 'package:flutter/material.dart';
import 'package:rick_and_morty/theme/text_theme.dart';

class Character extends StatelessWidget {
  final String avatar;
  final String name;
  final bool state;
  final String something;

  Character(
    this.avatar,
    this.name,
    this.state,
    this.something,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
        top: 10.0,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: CircleAvatar(
              radius: 37,
              child: Image.asset(avatar),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.toString(),
                style: MainTextTheme.stateTextGreen,
              ),
              Text(
                name,
                style: MainTextTheme.nameTextList,
              ),
              Text(
                something,
                style: MainTextTheme.somethingText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
