import 'package:flutter/material.dart';
import 'package:gallery/story_scaffold.dart';
import 'package:io_flip_ui/io_flip_ui.dart';

import '../stories.dart';

class GameCardOverlayStory extends StatelessWidget {
  const GameCardOverlayStory({super.key});

  @override
  Widget build(BuildContext context) {
    return  StoryScaffold(
      title: 'Game Card Overlay',
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Win'),
                  GameCard(
                    size: GameCardSize.sm(),
                    image:
                        testCharacter,
                    name: 'Dash the Great',
                    description: 'The best Dash in all the Dashland',
                    suitName: 'earth',
                    power: 57,
                    overlay: CardOverlayType.win,
                    isRare: false,
                    isDimmed: true,
                  ),
                ],
              ),
              SizedBox(width: IoFlipSpacing.lg),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Draw'),
                  GameCard(
                    size: GameCardSize.sm(),
                    image:
                        testCharacter,
                    name: 'Dash the Great',
                    description: 'The best Dash in all the Dashland',
                    suitName: 'earth',
                    power: 57,
                    overlay: CardOverlayType.draw,
                    isRare: false,
                  ),
                ],
              ),
              SizedBox(width: IoFlipSpacing.lg),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Lose'),
                  GameCard(
                    size: GameCardSize.sm(),
                    image:
                        testCharacter,
                    name: 'Dash the Great',
                    description: 'The best Dash in all the Dashland',
                    suitName: 'earth',
                    power: 57,
                    overlay: CardOverlayType.lose,
                    isRare: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
