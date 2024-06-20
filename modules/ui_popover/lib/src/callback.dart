import 'package:flutter/material.dart';

import 'bubble_decoration.dart';
import 'popover.dart';
import 'tooltip_placement.dart';

typedef PopoverChildBuilder = Widget Function(
  BuildContext context,
  PopoverController controller,
  Widget? child,
);
typedef OverlayContentBuilder = Widget Function(
  BuildContext context,
  PopoverController controller,
);

typedef OverlayDecorationBuilder = Decoration Function(
  PopoverDecoration decoration,
);

typedef OffsetCalculator = Offset Function(Calculator calculator);

class Calculator {
  final Placement placement;
  final Size boxSize;
  final Size overlaySize;
  final double gap;

  Calculator({
    required this.placement,
    required this.boxSize,
    required this.overlaySize,
    required this.gap,
  });
}

class PopoverDecoration {
  final Placement placement;
  final Offset shift;
  final Size boxSize;

  PopoverDecoration({
    required this.placement,
    required this.shift,
    required this.boxSize,
  });
}

class DecorationConfig {
  final PaintingStyle style;
  final Color backgroundColor;
  final Color? textColor;
  final List<BoxShadow>? shadows;

  /// 最大区别大概就是 带小箭头 默认`true`
  final bool isBubble;

  /// 内容区域的弧度，默认`4`
  final Radius radius;

  /// 控制箭头，
  final BubbleMeta bubbleMeta;

  const DecorationConfig({
    this.style = PaintingStyle.fill,
    this.backgroundColor = const Color(0xff303133),
    this.textColor,
    this.shadows,
    this.radius = const Radius.circular(4),
    this.isBubble = true,
    this.bubbleMeta = const BubbleMeta(),
  });
}
