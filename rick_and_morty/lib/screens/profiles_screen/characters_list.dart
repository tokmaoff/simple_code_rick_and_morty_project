import 'package:flutter/material.dart';
import 'package:rick_and_morty/resources/main_images.dart';
import 'package:rick_and_morty/theme/color_theme.dart';

import 'character.dart';

final List<CharacterModel> charactersList = [
  CharacterModel(
      'Рик Cанчез', true, MainImages.character_1, 'Человек, Мужской'),
  CharacterModel(
      'Директор Агентства', true, MainImages.character_2, 'Человек, Мужской'),
  CharacterModel(
      'Морти Смит', true, MainImages.character_3, 'Человек, Мужской'),
  CharacterModel(
      'Саммер Смит', true, MainImages.character_4, 'Человек, Женский'),
  CharacterModel(
      'Альберт Эйнштейн', false, MainImages.character_5, 'Человек, Мужской'),
  CharacterModel(
      'Алан Райлс', false, MainImages.character_6, 'Человек, Мужской'),
];

class CharactersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 16.0),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'всего персонажей: 200',
                    style: TextStyle(
                      color: ColorPallete.lightGray,
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.grid_view,
                        color: ColorPallete.lightGray,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            ListView.separated(
              itemBuilder: (context, index) => Character(
                charactersList[index].avatar,
                charactersList[index].name,
                charactersList[index].state,
                charactersList[index].something,
              ),
              separatorBuilder: (context, index) =>
                  charactersList.length - 1 != index
                      ? Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: Colors.transparent,
                        )
                      : null,
              itemCount: charactersList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}

class CharacterModel {
  final String name;
  final bool state;
  final String avatar;
  final String something;

  CharacterModel(
    this.name,
    this.state,
    this.avatar,
    this.something,
  );
}
