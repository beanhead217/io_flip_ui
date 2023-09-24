import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gallery/characters/character.dart';
import 'package:gallery/story_scaffold.dart';
import 'package:provider/provider.dart';
import 'package:flame/extensions.dart';


///----------------------------------------------------------------------------- HEAD 1

class Head1 extends StatelessWidget {
  const Head1({super.key,required this.color, required this.characterAnimation});

  final Color color;
  final CharacterAnimation characterAnimation;

  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/head/head_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : 'idle'}_1.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false

          ),
        ),
      ),
    );
  }
}

///----------------------------------------------------------------------------- HEAD 2
class Head2 extends StatelessWidget {
  const Head2({super.key,required this.color, required this.characterAnimation});

  final Color color;
  final CharacterAnimation characterAnimation;


  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/head/head_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : 'idle'}_2.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}



///----------------------------------------------------------------------------- EYES
class Eyes extends StatelessWidget {
  const Eyes({super.key,required this.color, required this.characterAnimation, required this.eyeAnimation});

  final Color color;
  final CharacterAnimation characterAnimation;
  final EyeAnimation eyeAnimation;

  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/eyes/eyes_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : eyeAnimation == EyeAnimation.blink ? 'blink' : 'idle'}.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}

///----------------------------------------------------------------------------- HAIR
class Hair1 extends StatelessWidget {
  const Hair1({super.key,required this.color, required this.characterAnimation, required this.hairNumber});

  final Color color;
  final CharacterAnimation characterAnimation;
  final int hairNumber;

  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/hair/hair$hairNumber/hair_${hairNumber}_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' :  'idle'}_1.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
            amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
            textureSize: Vector2.all(192),
            stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false

          ),
        ),
      ),
    );
  }
}
///----------------------------------------------------------------------------- HAIR 2

class Hair2 extends StatelessWidget {
  const Hair2({super.key,required this.color, required this.characterAnimation, required this.hairNumber});

  final Color color;
  final CharacterAnimation characterAnimation;
  final int hairNumber;

  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/hair/hair$hairNumber/hair_${hairNumber}_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' :  'idle'}_2.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
            amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
            textureSize: Vector2.all(192),
            stepTime: 0.15,
            loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}


///----------------------------------------------------------------------------- TORSO 1
class Torso1 extends StatelessWidget {
  const Torso1({super.key,required this.color, required this.characterAnimation});

  final Color color;
  final CharacterAnimation characterAnimation;


  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/torso/shirt_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : 'idle'}_1.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}

///----------------------------------------------------------------------------- TORSO 2
class Torso2 extends StatelessWidget {
  const Torso2({super.key,required this.color, required this.characterAnimation});

  final Color color;
  final CharacterAnimation characterAnimation;


  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/torso/shirt_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : 'idle'}_2.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}


///----------------------------------------------------------------------------- TORSO 1
class TorsoAddOn1 extends StatelessWidget {
  const TorsoAddOn1({super.key,required this.color, required this.characterAnimation, required this.torsoDecoration});

  final Color color;
  final CharacterAnimation characterAnimation;
  final TorsoDecoration torsoDecoration;

  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/torso/${torsoDecoration == TorsoDecoration.busty ? 'busty' :  'tankTop' }_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : 'idle'}_1.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}

///----------------------------------------------------------------------------- TORSO 2
class TorsoAddOn2 extends StatelessWidget {
  const TorsoAddOn2({super.key,required this.color, required this.characterAnimation, required this.torsoDecoration});

  final Color color;
  final CharacterAnimation characterAnimation;
  final TorsoDecoration torsoDecoration;

  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/torso/${torsoDecoration == TorsoDecoration.busty ? 'busty' :  'tankTop' }_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : 'idle'}_2.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}



///----------------------------------------------------------------------------- TORSO 1
class Legs1 extends StatelessWidget {
  const Legs1({super.key,required this.color, required this.characterAnimation});

  final Color color;
  final CharacterAnimation characterAnimation;


  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/legs/pants_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : 'idle'}_1.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}

///----------------------------------------------------------------------------- TORSO 2
class Legs2 extends StatelessWidget {
  const Legs2({super.key,required this.color, required this.characterAnimation});

  final Color color;
  final CharacterAnimation characterAnimation;


  @override
  Widget build(BuildContext context) {
    final images = context.read<Images>();

    return SizedBox(
      height: 500,
      width: 500,
      child:
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.modulate,
        ),

        child:  SpriteAnimationWidget.asset(
          path: 'images/characters/legs/pants_${characterAnimation == CharacterAnimation.run ? 'run' : characterAnimation == CharacterAnimation.dead ?  'dead' : characterAnimation == CharacterAnimation.hit ? 'hit' : 'idle'}_2.png',
          images: images,
          anchor: Anchor.center,
          data: SpriteAnimationData.sequenced(
              amount: characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.dead ?  7 : characterAnimation == CharacterAnimation.hit ? 1 : 5,
              textureSize: Vector2.all(192),
              stepTime: 0.15,
              loop: (characterAnimation == CharacterAnimation.run || characterAnimation == CharacterAnimation.idle) ? true : false
          ),
        ),
      ),
    );
  }
}
