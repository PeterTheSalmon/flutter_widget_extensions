import 'package:flutter/widgets.dart';

/// Commonly used extensions on [Widget]s.
extension LayoutExtensions on Widget {
  /// A widget that aligns its child within itself and optionally sizes itself
  /// based on the child's size.
  Widget aligned({
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) {
    return Align(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  /// A widget that attempts to size the child to a specific aspect ratio.
  Widget aspectRatio({
    required double aspectRatio,
    Key? key,
  }) {
    return AspectRatio(
      key: key,
      aspectRatio: aspectRatio,
      child: this,
    );
  }

  /// Creates a widget that positions its child according to the child's
  /// baseline.
  Widget baseline({
    required TextBaseline baseline,
    required double baselineOffset,
    Key? key,
  }) {
    return Baseline(
      key: key,
      baseline: baselineOffset,
      baselineType: baseline,
      child: this,
    );
  }

  /// Imposes additional constraints on its child.
  ///
  /// Only [boxConstraints] or [minWidth], [maxWidth], [minHeight], and
  /// [maxHeight] can be provided. Providing both a constraint and min/max
  /// values will throw an assertion error.
  Widget constrained({
    Key? key,
    BoxConstraints? boxConstraints,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
  }) {
    assert(
      boxConstraints == null ||
          (minWidth == null &&
              maxWidth == null &&
              minHeight == null &&
              maxHeight == null),
      'Cannot provide both a constraint and min/max values.',
    );
    return ConstrainedBox(
      key: key,
      constraints: boxConstraints ??
          BoxConstraints(
            minWidth: minWidth ?? 0,
            maxWidth: maxWidth ?? double.infinity,
            minHeight: minHeight ?? 0,
            maxHeight: maxHeight ?? double.infinity,
          ),
      child: this,
    );
  }

  /// A widget that defers the layout of its single child to a delegate.
  Widget customSingleChildLayout({
    required SingleChildLayoutDelegate delegate,
    Key? key,
  }) {
    return CustomSingleChildLayout(
      key: key,
      delegate: delegate,
      child: this,
    );
  }

  /// A widget that expands a child of a Row, Column, or Flex.
  Widget expanded({
    int flex = 1,
    Key? key,
  }) {
    return Expanded(
      key: key,
      flex: flex,
      child: this,
    );
  }

  /// Controls how the child of a [Row], [Column], or [Flex] flexes.
  Widget flexible({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
    Key? key,
  }) {
    return Flexible(
      key: key,
      flex: flex,
      fit: fit,
      child: this,
    );
  }

  /// Scales and positions its child within itself according to fit.
  Widget fitted({
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
    Key? key,
  }) {
    return FittedBox(
      key: key,
      fit: fit,
      alignment: alignment,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// A widget that sizes its child to a fraction of the total available space.
  Widget fractionallySized({
    required double widthFactor,
    required double heightFactor,
    AlignmentGeometry alignment = Alignment.center,
    Key? key,
  }) {
    return FractionallySizedBox(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      alignment: alignment,
      child: this,
    );
  }

  /// A widget that sizes its child to the child's intrinsic height.
  Widget intrinsicHeight({
    Key? key,
  }) {
    return IntrinsicHeight(
      key: key,
      child: this,
    );
  }

  /// A widget that sizes its child to the child's intrinsic width.
  Widget intrinsicWidth({
    Key? key,
  }) {
    return IntrinsicWidth(
      key: key,
      child: this,
    );
  }

  /// A box that limits its size only when it's unconstrained.
  Widget limited({
    required double maxWidth,
    required double maxHeight,
    Key? key,
  }) {
    return LimitedBox(
      key: key,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
      child: this,
    );
  }

  /// A widget that lays the child out as if it was in the tree, but without
  /// painting anything, without making the child available for hit testing,
  /// and without taking any room in the parent.
  Widget offstage({
    bool offstage = true,
    Key? key,
  }) {
    return Offstage(
      key: key,
      offstage: offstage,
      child: this,
    );
  }

  /// A widget that imposes different constraints on its child than it gets
  /// from its parent, possibly allowing the child to overflow the parent.
  Widget overflowing({
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
  }) {
    return OverflowBox(
      key: key,
      alignment: alignment,
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
      child: this,
    );
  }

  /// Adds a [Padding] widget around the current widget.
  /// Priority of padding is as follows:
  /// 1. [top] and [bottom] / [left] and [right]
  /// 2. [vertical] and [horizontal]
  /// 3. [all]
  Widget padded({
    double? all,
    double? horizontal,
    double? vertical,
    double? top,
    double? bottom,
    double? left,
    double? right,
    Key? key,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.only(
        top: top ?? vertical ?? all ?? 0,
        bottom: bottom ?? vertical ?? all ?? 0,
        left: left ?? horizontal ?? all ?? 0,
        right: right ?? horizontal ?? all ?? 0,
      ),
      child: this,
    );
  }

  /// A box with a specified size.
  Widget sized({
    required double width,
    required double height,
    Key? key,
  }) {
    return SizedBox(
      key: key,
      width: width,
      height: height,
      child: this,
    );
  }

  /// A widget that is a specific size but passes its original constraints
  /// through to its child, which will probably overflow.
  Widget sizedOverflowing({
    required double width,
    required double height,
    AlignmentGeometry alignment = Alignment.center,
    Key? key,
  }) {
    return SizedOverflowBox(
      key: key,
      alignment: alignment,
      size: Size(width, height),
      child: this,
    );
  }

  /// A widget that applies a transformation before painting its child.
  ///
  /// Unlike RotatedBox, which applies a rotation prior to layout, this object
  /// applies its transformation just prior to painting, which means the
  /// transformation is not taken into account when calculating how much space
  /// this widget's child (and thus this widget) consumes.
  Widget transformed({
    required Matrix4 transform,
    Offset? origin,
    AlignmentGeometry alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality filterQuality = FilterQuality.low,
    Key? key,
  }) {
    return Transform(
      key: key,
      transform: transform,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      filterQuality: filterQuality,
      child: this,
    );
  }

  /// Centers the widget.
  /// If a size factor is non-null then the corresponding dimension of this
  /// widget will be the product of the child's dimension and the size factor.
  /// For example if widthFactor is 2.0 then the width of this widget will
  /// always be twice the width of the widget is is called on.
  Widget centered({
    double? widthFactor,
    double? heightFactor,
    Key? key,
  }) {
    return Center(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  /// Combines commmon position, painting, and sizing widgets.
  Widget container({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Clip clipBehavior = Clip.none,
  }) {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// Makes the widget invisible and unclickable.
  Widget invisible() {
    return Visibility(
      visible: false,
      child: IgnorePointer(child: this),
    );
  }
}
