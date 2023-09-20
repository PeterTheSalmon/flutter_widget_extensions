import 'package:flutter/widgets.dart';

/// Random extensions on [Widget]s.
extension MiscellaneousExtensions on Widget {
  /// Listens to a [Listenable] and rebuilds the widget when the listener is
  /// notified.
  Widget listenableBuilder({
    required Listenable listenable,
    Key? key,
    Widget? child,
  }) {
    return ListenableBuilder(
      key: key,
      listenable: listenable,
      builder: (_, __) => this,
    );
  }

  /// Listens to a [Listenable], often an animation, and rebuilds the widget.
  /// Identical to [listenableBuilder].
  Widget animatedBuilder({
    required Listenable listenable,
    Key? key,
    Widget? child,
  }) {
    return AnimatedBuilder(
      key: key,
      animation: listenable,
      builder: (_, __) => this,
    );
  }

  /// Adds a key to a widget.
  Widget keyBuilder({
    required Key key,
  }) {
    return KeyedSubtree(
      key: key,
      child: this,
    );
  }

  /// Wraps descendant widgets with a [Form] widget.
  Widget form({
    required GlobalKey<FormState> formKey,
    Widget? child,
    AutovalidateMode? autoValidateMode,
    VoidCallback? onChanged,
    WillPopCallback? onWillPop,
  }) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      onChanged: onChanged,
      onWillPop: onWillPop,
      child: this,
    );
  }
}
