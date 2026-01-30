import 'dart:math';

import 'package:flutter/material.dart';

class ColorsGeneratorUtils {
  final Random _random = Random();
  final List<Color> _cache = <Color>[];
  final int _cacheSize = 45;

  Color nextColor() {
    if (_cache.isEmpty) {
      _refillCache();
    }

    return _cache.removeLast();
  }

  void _refillCache() {
    while (_cache.length < _cacheSize) {
      final color = Color(0xFF000000 | _random.nextInt(0x1000000));
      _cache.add(color);
    }
  }
}
