import 'package:flutter/material.dart';
import 'package:rick_and_morty/resources/main_images.dart';

import 'character.dart';

final List<CharacterModel> charactersList = [
  CharacterModel(
      'Рик Cанчез', 'живой', MainImages.character_1, 'Человек, Мужской'),
  CharacterModel('Директор Агентства', 'живой', MainImages.character_2,
      'Человек, Мужской'),
  CharacterModel(
      'Морти Смит', 'живой', MainImages.character_3, 'Человек, Мужской'),
  CharacterModel(
      'Саммер Смит', 'живой', MainImages.character_4, 'Человек, Женский'),
  CharacterModel('Альберт Эйнштейн', 'мёртвый', MainImages.character_5,
      'Человек, Мужской'),
  CharacterModel(
      'Алан Райлс', 'мёртвый', MainImages.character_6, 'Человек, Мужской'),
];

class CharactersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 16.0),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('всего персонажей: 200'),
                  IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
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
  final String state;
  final String avatar;
  final String something;

  CharacterModel(
    this.name,
    this.state,
    this.avatar,
    this.something,
  );
}
