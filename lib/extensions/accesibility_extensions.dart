import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

/// Extensions for accesibility
extension AccesibilityExtensions on Widget {
  /// A widget that provides a textual description of the widget's purpose.
  Widget tooltip({
    Key? key,
    String? message,
    bool preferBelow = true,
    bool excludeFromSemantics = false,
    EdgeInsetsGeometry? padding,
    Decoration? decoration,
    TextStyle? textStyle,
    double? height,
    EdgeInsetsGeometry? margin,
    Duration? waitDuration,
    Duration? showDuration,
    bool? preferBelowForTab,
    double? verticalOffset,
    bool? enableFeedback,
    VoidCallback? onTriggered,
    TextAlign? textAlign,
    TooltipTriggerMode? triggerMode,
    InlineSpan? richMessage,
  }) {
    return Tooltip(
      message: 'Tooltip',
      key: key,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      padding: padding,
      decoration: decoration,
      textStyle: textStyle,
      height: height,
      margin: margin,
      waitDuration: waitDuration,
      showDuration: showDuration,
      verticalOffset: verticalOffset,
      enableFeedback: enableFeedback,
      onTriggered: onTriggered,
      richMessage: richMessage,
      textAlign: textAlign,
      triggerMode: triggerMode,
      child: this,
    );
  }

  /// Merges the semantics of its descendants.
  ///
  /// Causes all the semantics of the subtree rooted at this node to be
  /// merged into one node in the semantics tree. For example, if you have a
  /// widget with a Text node next to a checkbox widget, this could be used to
  /// merge the label from the Text node with the "checked" semantic state of
  /// the checkbox into a single node that had both the label and the checked
  /// state. Otherwise, the label would be presented as a separate feature than
  /// the checkbox, and the user would not be able to be sure that they were
  /// related.
  Widget mergeSemantics({Key? key}) {
    return MergeSemantics(
      key: key,
      child: this,
    );
  }

  /// Drops all the semantics of its descendants.
  ///
  /// When excluding is true, this widget (and its subtree) is
  /// excluded from the semantics tree.
  ///
  /// This can be used to hide descendant widgets that would otherwise be
  /// reported but that would only be confusing. For example, the material
  /// library's Chip widget hides the avatar since it is redundant with the chip
  /// label.
  Widget excludeSemantics({
    Key? key,
    bool excluding = true,
  }) {
    return ExcludeSemantics(
      key: key,
      excluding: excluding,
      child: this,
    );
  }

  /// Annotates the widget tree with
  /// a description of the meaning of the widgets.
  ///
  /// Used by assistive technologies, search engines, and other semantic
  /// analysis software to determine the meaning of the application.
  Widget semantics({
    Key? key,
    Widget? child,
    bool container = false,
    bool explicitChildNodes = false,
    bool excludeSemantics = false,
    bool? enabled,
    bool? checked,
    bool? mixed,
    bool? selected,
    bool? toggled,
    bool? button,
    bool? slider,
    bool? keyboardKey,
    bool? link,
    bool? header,
    bool? textField,
    bool? readOnly,
    bool? focusable,
    bool? focused,
    bool? inMutuallyExclusiveGroup,
    bool? obscured,
    bool? multiline,
    bool? scopesRoute,
    bool? namesRoute,
    bool? hidden,
    bool? image,
    bool? liveRegion,
    int? maxValueLength,
    int? currentValueLength,
    String? label,
    AttributedString? attributedLabel,
    String? value,
    AttributedString? attributedValue,
    String? increasedValue,
    AttributedString? attributedIncreasedValue,
    String? decreasedValue,
    AttributedString? attributedDecreasedValue,
    String? hint,
    AttributedString? attributedHint,
    String? tooltip,
    String? onTapHint,
    String? onLongPressHint,
    TextDirection? textDirection,
    SemanticsSortKey? sortKey,
    SemanticsTag? tagForChildren,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VoidCallback? onScrollLeft,
    VoidCallback? onScrollRight,
    VoidCallback? onScrollUp,
    VoidCallback? onScrollDown,
    VoidCallback? onIncrease,
    VoidCallback? onDecrease,
    VoidCallback? onCopy,
    VoidCallback? onCut,
    VoidCallback? onPaste,
    VoidCallback? onDismiss,
    MoveCursorHandler? onMoveCursorForwardByCharacter,
    MoveCursorHandler? onMoveCursorBackwardByCharacter,
    SetSelectionHandler? onSetSelection,
    SetTextHandler? onSetText,
    VoidCallback? onDidGainAccessibilityFocus,
    VoidCallback? onDidLoseAccessibilityFocus,
    Map<CustomSemanticsAction, VoidCallback>? customSemanticsActions,
  }) {
    return Semantics(
      key: key,
      enabled: enabled,
      checked: checked,
      mixed: mixed,
      selected: selected,
      toggled: toggled,
      button: button,
      slider: slider,
      keyboardKey: keyboardKey,
      link: link,
      header: header,
      textField: textField,
      readOnly: readOnly,
      focusable: focusable,
      focused: focused,
      inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
      obscured: obscured,
      multiline: multiline,
      scopesRoute: scopesRoute,
      namesRoute: namesRoute,
      hidden: hidden,
      image: image,
      liveRegion: liveRegion,
      maxValueLength: maxValueLength,
      currentValueLength: currentValueLength,
      label: label,
      attributedLabel: attributedLabel,
      value: value,
      attributedValue: attributedValue,
      increasedValue: increasedValue,
      attributedIncreasedValue: attributedIncreasedValue,
      decreasedValue: decreasedValue,
      attributedDecreasedValue: attributedDecreasedValue,
      hint: hint,
      attributedHint: attributedHint,
      tooltip: tooltip,
      onTapHint: onTapHint,
      onLongPressHint: onLongPressHint,
      textDirection: textDirection,
      sortKey: sortKey,
      tagForChildren: tagForChildren,
      onTap: onTap,
      onLongPress: onLongPress,
      onScrollLeft: onScrollLeft,
      onScrollRight: onScrollRight,
      onScrollUp: onScrollUp,
      onScrollDown: onScrollDown,
      onIncrease: onIncrease,
      onDecrease: onDecrease,
      onCopy: onCopy,
      onCut: onCut,
      onPaste: onPaste,
      onDismiss: onDismiss,
      onMoveCursorForwardByCharacter: onMoveCursorForwardByCharacter,
      onMoveCursorBackwardByCharacter: onMoveCursorBackwardByCharacter,
      onSetSelection: onSetSelection,
      onSetText: onSetText,
      onDidGainAccessibilityFocus: onDidGainAccessibilityFocus,
      onDidLoseAccessibilityFocus: onDidLoseAccessibilityFocus,
      customSemanticsActions: customSemanticsActions,
      child: this,
    );
  }
}
