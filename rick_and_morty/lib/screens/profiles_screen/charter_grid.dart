import 'package:flutter/material.dart';
import 'package:rick_and_morty/resources/main_images.dart';

final List<String> charactersList = [
  MainImages.character_1,
  MainImages.character_2,
  MainImages.character_3,
  MainImages.character_4,
  MainImages.character_5,
  MainImages.character_6,
];

class CharacterGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('всего персонажей: 200'),
                IconButton(icon: Icon(Icons.list), onPressed: () {}),
              ],
            ),
          ),
          GridView.builder(
            itemCount: charactersList.length,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              mainAxisSpacing: 94.0,
              crossAxisSpacing: 60.0,
            ),
            itemBuilder: (context, index) =>
                CharacterItem(charactersList[index]),
          ),
        ],
      ),
    );
  }
}

class CharacterItem extends StatelessWidget {
  final String name;
  final String state;
  final String avatar;
  final String something;

  CharacterItem(
    this.name,
    this.state,
    this.avatar,
    this.something,
  );
  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
