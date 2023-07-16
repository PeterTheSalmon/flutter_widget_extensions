import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Commonly used scrolling extensions on [Widget]s.
extension ScrollingExtensions on Widget {
  /// A widget that listens for Notifications bubbling up the tree.
  Widget notificationListener<T extends Notification>({
    required NotificationListenerCallback<T>? onNotification,
    Key? key,
    Widget? child,
  }) {
    return NotificationListener<T>(
      key: key,
      onNotification: onNotification,
      child: child ?? this,
    );
  }

  /// A widget that supports the Material "swipe to refresh" idiom.
  Widget refreshIndicator({
    required RefreshCallback onRefresh,
    Key? key,
    double displacement = 40.0,
    double edgeOffset = 0.0,
    Color? color,
    Color? backgroundColor,
    ScrollNotificationPredicate notificationPredicate =
        defaultScrollNotificationPredicate,
    String? semanticsLabel,
    String? semanticsValue,
    double strokeWidth = RefreshProgressIndicator.defaultStrokeWidth,
    RefreshIndicatorTriggerMode triggerMode =
        RefreshIndicatorTriggerMode.onEdge,
  }) {
    return RefreshIndicator(
      key: key,
      onRefresh: onRefresh,
      displacement: displacement,
      edgeOffset: edgeOffset,
      color: color,
      backgroundColor: backgroundColor,
      notificationPredicate: notificationPredicate,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
      strokeWidth: strokeWidth,
      triggerMode: triggerMode,
      child: this,
    );
  }

  /// A material design scroll bar.
  Widget scrollBar({
    Key? key,
    ScrollController? controller,
    bool? thumbVisibility,
    bool? trackVisibility,
    double? thickness,
    Radius? radius,
    ScrollNotificationPredicate? notificationPredicate,
    bool? interactive,
    ScrollbarOrientation? scrollbarOrientation,
    @Deprecated(
      'Use thumbVisibility instead. '
      'This feature was deprecated after v2.9.0-1.0.pre.',
    )
    bool? isAlwaysShown,
    @Deprecated(
      '''Use ScrollbarThemeData.trackVisibility to resolve based on the current state instead. '''
      'This feature was deprecated after v3.4.0-19.0.pre.',
    )
    bool? showTrackOnHover,
    @Deprecated(
      '''Use ScrollbarThemeData.thickness to resolve based on the current state instead. '''
      'This feature was deprecated after v2.9.0-1.0.pre.',
    )
    double? hoverThickness,
  }) {
    return Scrollbar(
      key: key,
      controller: controller,
      // ignore: deprecated_member_use
      isAlwaysShown: isAlwaysShown,
      // ignore: deprecated_member_use
      hoverThickness: hoverThickness,
      thickness: thickness,
      radius: radius,
      notificationPredicate: notificationPredicate,
      // ignore: deprecated_member_use
      showTrackOnHover: showTrackOnHover,
      interactive: interactive,
      scrollbarOrientation: scrollbarOrientation,
      thumbVisibility: thumbVisibility,
      trackVisibility: trackVisibility,
      child: this,
    );
  }

  /// A box in which a single widget can be scrolled.
  Widget singleChildScrollView({
    Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry? padding,
    bool? primary,
    ScrollPhysics? physics,
    ScrollController? controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Clip clipBehavior = Clip.hardEdge,
    String? restorationId,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior =
        ScrollViewKeyboardDismissBehavior.manual,
  }) {
    return SingleChildScrollView(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      padding: padding,
      primary: primary,
      physics: physics,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      clipBehavior: clipBehavior,
      restorationId: restorationId,
      keyboardDismissBehavior: keyboardDismissBehavior,
      child: this,
    );
  }
}
