import 'package:flutter/material.dart';
import 'package:gallery/story_scaffold.dart';
import 'package:io_flip_ui/io_flip_ui.dart';

import '../stories.dart';

class AnimatedCardStory extends StatelessWidget {
  const AnimatedCardStory({super.key, required this.controller});

  final AnimatedCardController controller;

  @override
  Widget build(BuildContext context) {
    return StoryScaffold(
      backgroundColor: Colors.black,
      title: 'Animated Card',
      body: Center(
        child: AnimatedCard(
          controller: controller,
          front:  GameCard(
            image:
                testCharacter,
            name: 'Dash the Great',
            description: 'The best Dash in all the Dashland',
            suitName: 'earth',
            power: 6,
            size: GameCardSize.md(),
            isRare: false,
          ),
          back: const FlippedGameCard(),
        ),
      ),
    );
  }
}
