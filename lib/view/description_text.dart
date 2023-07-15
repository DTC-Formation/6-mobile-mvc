import 'package:flutter/material.dart';

class DescriptionText extends Text {
  const DescriptionText({super.key, required this.description})
      : super(description, style: const TextStyle(fontSize: 16));
  final String description;
}
