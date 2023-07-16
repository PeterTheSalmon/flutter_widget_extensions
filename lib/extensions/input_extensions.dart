import 'package:flutter/material.dart';

/// Input extension methods
extension InputExtensions on Widget {
  /// A widget that calls a callback whenever the user presses or releases a
  /// key on a keyboard.
  Widget rawKeyboardListener({
    required FocusNode focusNode,
    Key? key,
    bool autofocus = false,
    bool includeSemantics = true,
    ValueChanged<RawKeyEvent>? onKey,
  }) {
    return RawKeyboardListener(
      key: key,
      focusNode: focusNode,
      autofocus: autofocus,
      includeSemantics: includeSemantics,
      onKey: onKey,
      child: this,
    );
  }

  /// The text style to apply to descendant Text widgets which don't have an
  /// explicit style.
  ///
  /// If [merge] is true, the [style] is merged with other inherited
  /// text attributes.
  Widget defaultTextStyle({
    required TextStyle style,
    bool merge = true,
    Key? key,
    TextAlign? textAlign,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    int? maxLines,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    TextHeightBehavior? textHeightBehavior,
  }) {
    if (merge) {
      return DefaultTextStyle.merge(
        key: key,
        style: style,
        textAlign: textAlign,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
        textWidthBasis: textWidthBasis,
        child: this,
      );
    }
    return DefaultTextStyle(
      key: key,
      style: style,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      child: this,
    );
  }
}
