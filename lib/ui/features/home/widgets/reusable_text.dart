import 'package:flutter/material.dart';

Widget buildHomereuableText({
  required String text,
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
  required TextOverflow textOverflow
}) {
  return Text(
    maxLines: 1,
    overflow: textOverflow,
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
