import 'package:flutter/widgets.dart';

/// Extensions for animation and motion
extension AnimatationAndMotionExtensions on Widget {
  /// Animated version of Align which automatically transitions the child's
  /// position over a given duration whenever the given alignment changes.
  Widget animatedAligned({
    required AlignmentGeometry alignment,
    required Duration duration,
    Key? key,
    double? heightFactor,
    double? widthFactor,
    Curve curve = Curves.linear,
    VoidCallback? onEnd,
  }) {
    return AnimatedAlign(
      key: key,
      alignment: alignment,
      duration: duration,
      curve: curve,
      onEnd: onEnd,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  /// Implicitly animated all container properties.
  /// Does not animate the widget is it being called on.
  Widget animatedContained({
    required Duration duration,
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
    Curve curve = Curves.linear,
    VoidCallback? onEnd,
  }) {
    return AnimatedContainer(
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
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  /// Animated version of DefaultTextStyle which automatically transitions the
  /// default text style (the text style to apply to descendant Text widgets
  /// without explicit style) over a given duration whenever the given style
  /// changes.
  Widget animatedDefaultTextStyle({
    required TextStyle style,
    required Duration duration,
    Key? key,
    TextAlign? textAlign,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    int? maxLines,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    TextHeightBehavior? textHeightBehavior,
    Curve curve = Curves.linear,
    VoidCallback? onEnd,
  }) {
    return AnimatedDefaultTextStyle(
      key: key,
      style: style,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  /// Animated version of Opacity which automatically transitions the child's
  /// opacity over a given duration whenever the given opacity changes.
  Widget animatedOpacity({
    required double opacity,
    required Duration duration,
    Key? key,
    Curve curve = Curves.linear,
    VoidCallback? onEnd,
    bool alwaysIncludeSemantics = false,
  }) {
    return AnimatedOpacity(
      key: key,
      opacity: opacity,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: this,
    );
  }

  /// Animated version of PhysicalModel.
  ///
  /// The borderRadius and elevation are animated.
  ///
  /// The color is animated if the animateColor property is set;
  /// otherwise, the color changes immediately at the start of the animation for
  ///  the other two properties. This allows the color to be animated
  /// independently (e.g. because it is being driven by an AnimatedTheme).
  ///
  /// The shape is not animated.
  Widget animatedPhysicalModel({
    required BoxShape shape,
    required double elevation,
    required Color color,
    required Color shadowColor,
    required Duration duration,
    Key? key,
    Clip clipBehavior = Clip.none,
    BorderRadius borderRadius = BorderRadius.zero,
    bool animateColor = true,
    bool animateShadowColor = true,
    Curve curve = Curves.linear,
    VoidCallback? onEnd,
  }) {
    return AnimatedPhysicalModel(
      key: key,
      shape: shape,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      duration: duration,
      curve: curve,
      onEnd: onEnd,
      clipBehavior: clipBehavior,
      borderRadius: borderRadius,
      animateColor: animateColor,
      animateShadowColor: animateShadowColor,
      child: this,
    );
  }

  /// Animated version of Positioned which automatically transitions the child's
  /// position over a given duration whenever the given position changes.
  ///
  /// Only works if it's the child of a [Stack].
  Widget animatedPositioned({
    required Duration duration,
    Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
    Curve curve = Curves.linear,
    VoidCallback? onEnd,
  }) {
    return AnimatedPositioned(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  /// Animated widget that automatically transitions its size over a given
  /// duration whenever the given child's size changes.
  Widget animatedSize({
    required Duration duration,
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    Curve curve = Curves.linear,
    Duration? reverseDuration,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return AnimatedSize(
      key: key,
      alignment: alignment,
      curve: curve,
      duration: duration,
      reverseDuration: reverseDuration,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// Animates the opacity of a widget.
  ///
  /// For a widget that automatically animates between the sizes of two
  ///  children, fading between them, see AnimatedCrossFade.
  Widget fadeTransition({
    required Animation<double> opacity,
    Key? key,
    bool alwaysIncludeSemantics = false,
  }) {
    return FadeTransition(
      key: key,
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: this,
    );
  }

  /// A widget that marks its child as being a candidate
  /// for [hero animations](https://api.flutter.dev/flutter/widgets/Hero-class.html).
  Widget hero({
    required Object tag,
    Key? key,
    CreateRectTween? createRectTween,
    HeroFlightShuttleBuilder? flightShuttleBuilder,
    HeroPlaceholderBuilder? placeholderBuilder,
    bool transitionOnUserGestures = false,
  }) {
    return Hero(
      key: key,
      tag: tag,
      createRectTween: createRectTween,
      flightShuttleBuilder: flightShuttleBuilder,
      placeholderBuilder: placeholderBuilder,
      transitionOnUserGestures: transitionOnUserGestures,
      child: this,
    );
  }

  /// Animated version of Positioned which takes a specific
  /// Animation<RelativeRect> to transition the child's position from a start
  /// position to an end position over the lifetime of the animation.
  ///
  /// Only works if it's the child of a Stack.
  Widget positionedTransition({
    required Animation<RelativeRect> rect,
    Key? key,
  }) {
    return PositionedTransition(
      key: key,
      rect: rect,
      child: this,
    );
  }

  /// Animates the rotation of a widget.
  Widget rotationTransition({
    required Animation<double> turns,
    Key? key,
    Alignment alignment = Alignment.center,
    FilterQuality? filterQuality,
  }) {
    return RotationTransition(
      key: key,
      turns: turns,
      alignment: alignment,
      filterQuality: filterQuality,
      child: this,
    );
  }

  /// Animates the scale of a transformed widget.
  Widget scaleTransition({
    required Animation<double> scale,
    Key? key,
    Alignment alignment = Alignment.center,
    FilterQuality? filterQuality,
  }) {
    return ScaleTransition(
      key: key,
      scale: scale,
      alignment: alignment,
      filterQuality: filterQuality,
      child: this,
    );
  }

  ///   Animates its own size and clips and aligns its child.
  ///
  /// SizeTransition acts as a ClipRect that animates either its width or its
  /// height, depending upon the value of axis. The alignment of the child along
  /// the axis is specified by the axisAlignment.
  ///
  /// Like most widgets, SizeTransition will conform to the constraints it is
  /// given, so be sure to put it in a context where it can change size. For
  /// instance, if you place it into a Container with a fixed size, then the
  /// SizeTransition will not be able to change size, and will appear to do
  /// nothing.
  Widget sizeTransition({
    required Animation<double> sizeFactor,
    Key? key,
    Axis axis = Axis.vertical,
    double axisAlignment = 0.0,
  }) {
    return SizeTransition(
      key: key,
      sizeFactor: sizeFactor,
      axis: axis,
      axisAlignment: axisAlignment,
      child: this,
    );
  }

  ///   Animates the position of a widget relative to its normal position.
  ///
  /// The translation is expressed as an Offset scaled to the child's size. For
  /// example, an Offset with a dx of 0.25 will result in a horizontal
  /// translation of one quarter the width of the child.
  ///
  /// By default, the offsets are applied in the coordinate system of the canvas
  /// (so positive x offsets move the child towards the right). If a
  /// textDirection is provided, then the offsets are applied in the reading
  /// direction, so in right-to-left text, positive x offsets move towards the
  /// left, and in left-to-right text, positive x offsets move towards the right
  Widget slideTransition({
    required Animation<Offset> position,
    Key? key,
    bool transformHitTests = true,
    TextDirection? textDirection,
  }) {
    return SlideTransition(
      key: key,
      position: position,
      transformHitTests: transformHitTests,
      textDirection: textDirection,
      child: this,
    );
  }
}
