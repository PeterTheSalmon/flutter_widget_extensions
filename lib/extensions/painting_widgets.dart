import 'dart:ui';

import 'package:flutter/material.dart';

/// Commonly used painting and effects extensions on [Widget]s.
extension PaintingAndEffectsExtensions on Widget {
  /// A widget that applies a filter to the existing painted content
  Widget backdropFilter({
    required ImageFilter filter,
    Key? key,
    BlendMode blendMode = BlendMode.srcOver,
  }) {
    return BackdropFilter(
      key: key,
      filter: filter,
      blendMode: blendMode,
      child: this,
    );
  }

  /// A widget that clips its child using an oval.
  Widget clipOval({
    Key? key,
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipOval(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// A widget that clips its child using a path.
  Widget clipPath({
    required CustomClipper<Path> clipper,
    Key? key,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipPath(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// A widget that clips its child using a rectangle.
  Widget clipRect({
    Key? key,
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipRect(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// A widget that clips its child using a rounded rectangle.
  Widget clipRRect({
    required BorderRadius borderRadius,
    Key? key,
    CustomClipper<RRect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipRRect(
      key: key,
      borderRadius: borderRadius,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// A widget that provides a canvas on which to draw during the paint phase.
  Widget customPaint({
    required CustomPainter painter,
    Key? key,
    CustomPainter? foregroundPainter,
    Size size = Size.zero,
    bool isComplex = false,
    bool willChange = false,
  }) {
    return CustomPaint(
      key: key,
      painter: painter,
      foregroundPainter: foregroundPainter,
      size: size,
      isComplex: isComplex,
      willChange: willChange,
      child: this,
    );
  }

  /// A widget that paints a Decoration either before or after its child paints.
  Widget decorated({
    Color? color,
    DecorationImage? image,
    BoxBorder? border,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    BlendMode? backgroundBlendMode,
    BoxShape shape = BoxShape.rectangle,
    Key? key,
    DecorationPosition position = DecorationPosition.background,
  }) {
    return DecoratedBox(
      key: key,
      decoration: BoxDecoration(
        color: color,
        image: image,
        border: border,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        shape: shape,
      ),
      position: position,
      child: this,
    );
  }

  /// A widget that applies a transformation before painting its child.
  ///
  /// The translation is expressed as a Offset scaled to the child's size. For
  /// example, an Offset with a dx of 0.25 will result in a horizontal
  /// translation of one quarter the width of the child.
  Widget fractionalTranslation({
    required Offset translation,
    bool transformHitTests = true,
    Key? key,
  }) {
    return FractionalTranslation(
      key: key,
      translation: translation,
      transformHitTests: transformHitTests,
      child: this,
    );
  }

  /// Controls the opacity of it's child.
  Widget opacity({
    required double opacity,
    Key? key,
    bool alwaysIncludeSemantics = false,
  }) {
    return Opacity(
      key: key,
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: this,
    );
  }

  /// A widget that rotates its child by a integral number of quarter turns.
  Widget rotated({required int quaterTurns, Key? key}) {
    return RotatedBox(
      key: key,
      quarterTurns: quaterTurns,
      child: this,
    );
  }


}
