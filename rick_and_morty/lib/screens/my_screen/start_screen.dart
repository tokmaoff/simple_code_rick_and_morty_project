import 'package:flutter/material.dart';
import 'package:rick_and_morty/resources/main_images.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MainImages.startScreenBackground),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 218.0,
            width: 234.0,
            child: Image.asset(
              MainImages.rickTextPicture,
              fit: BoxFit.fill,
            ),
          ),
          Stack(
            children: [
              Container(
                height: 192.0,
                width: 270.0,
                child: Image.asset(
                  MainImages.mortyTextPicture,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 5.0,
                right: 128.0,
                child: Container(
                  height: 45.0,
                  width: 47.0,
                  child: Image.asset(
                    MainImages.andTextPicture,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Image.asset(
              MainImages.rickPicture,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.asset(
              MainImages.mortyPicture,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
