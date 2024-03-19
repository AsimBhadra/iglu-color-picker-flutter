// IGLU COLOR PICKER EXAMPLE
//
// Copyright © 2020 - 2023 IGLU. All rights reserved.
// Copyright © 2020 - 2023 IGLU S.r.l.s.
//

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iglu_color_picker_flutter/iglu_color_picker_flutter.dart';

class ColorPickerDetail extends StatefulWidget {
  const ColorPickerDetail({required this.paletteType, super.key});

  final IGPaletteType paletteType;

  @override
  State<ColorPickerDetail> createState() => _ColorPickerDetailState();
}

class _ColorPickerDetailState extends State<ColorPickerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Picker Test'),
      ),
      body: SingleChildScrollView(
        child: IGColorPicker(
          currentColor: Colors.red,
          paletteType: widget.paletteType,
          colorHistory: const [Colors.red],
          enableAlpha: false,
          areaBorderWidth: 0,
          areaBorderColor: Colors.transparent,
          areaRadius: 12,
          areaHeight: 70,
          inputBarBorderColor: const Color(0xFF366CF8),
          historyColorsBuilder: () {
            return const SizedBox();
          },
          colorDetailsWidget: (hex, rgb, hsl, hsv) {
            return const SizedBox();
          },
          onColorChanged: (color) {
            if (kDebugMode) {
              print(color);
            }
          },
        ),
      ),
    );
  }
}
