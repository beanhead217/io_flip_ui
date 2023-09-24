import 'package:flutter/material.dart';
import 'package:gallery/story_scaffold.dart';
import 'package:io_flip_ui/io_flip_ui.dart';

import '../stories.dart';

class GameCardSuitsStory extends StatelessWidget {
  const GameCardSuitsStory({super.key});

  @override
  Widget build(BuildContext context) {
    return  StoryScaffold(
      title: 'Game Card Suits',
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            children: [
              GameCard(
                image:
                    testCharacter,
                name: 'Air Dash',
                suitName: 'air',
                description: 'The best air hockey player in all the Dashland',
                power: 3,
                isRare: false,
              ),
              SizedBox(height: 16),
              GameCard(
                image:
                    testCharacter,
                name: 'Fire Dash',
                suitName: 'fire',
                description: 'The hottest Dash in all the Dashland',
                power: 4,
                isRare: false,
              ),
              SizedBox(height: 16),
              GameCard(
                image:
                    testCharacter,
                name: 'Water Dash',
                suitName: 'water',
                description: 'The best swimmer in all the Dashland',
                power: 5,
                isRare: false,
              ),
              SizedBox(height: 16),
              GameCard(
                image:
                    testCharacter,
                name: 'Metal Dash',
                suitName: 'metal',
                description: 'The most heavy metal Dash in all the Dashland',
                power: 6,
                isRare: false,
              ),
              SizedBox(height: 16),
              GameCard(
                image:
                    testCharacter,
                name: 'Dash the rock',
                suitName: 'earth',
                description: 'The most rock and roll Dash in all the Dashland',
                power: 7,
                isRare: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
