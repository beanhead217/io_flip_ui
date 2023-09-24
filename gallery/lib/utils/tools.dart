import 'dart:math';
import 'dart:math';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Tools {
  //---------------------------------------------
  static final random = Random();
  static int randomRange(int min, int max) {
    return min + random.nextInt(max - min);
  }
  //---------------------------------------------

  static const PI_180 = (180 / pi);

  static double angleBetweenPoints(Vector2 p1, Vector2 p2) {
  return atan2(p2.y - p1.y, p2.x - p1.x);
  }

  static Offset rotatePoint(Offset point, double angle, Offset center) {
  final s = sin(angle);
  final c = cos(angle);

  double x1 = point.dx - center.dx;
  double y1 = point.dy - center.dy;

  double x2 = x1 * c - y1 * s;
  double y2 = x1 * s + y1 * c;

  return Offset(x2 + center.dx, y2 + center.dy);
  }

  static Vector2 movePointByAngle(
  Vector2 point,
  double speed,
  double angle,
  ) {
  double nextX = speed * cos(angle);
  double nextY = speed * sin(angle);
  return Vector2(point.x + nextX, point.y + nextY);
  }

  static Vector2 diffMovePointByAngle(
  Vector2 point,
  double speed,
  double angle,
  ) {
  return movePointByAngle(point, speed, angle) - point;
  }


}



