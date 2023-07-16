# Widget Extensions
Enables you to style widgets with extension methods. 

## Example
```dart
Widget build() {
    return Text('Extensions!')
        .padding(all: 10)
        .decorated(color: Colors.red)
        .clipRRect(borderRadius: 10);
}
```

## Widget Coverage

### Complete
- AbsorbPointer
- Align
- AnimatedAlign
- AnimatedBuilder
- AnimatedContainer
- AnimatedDefaultTextStyle
- AnimatedOpacity
- AnimatedPhysicalModel
- AnimatedPositioned
- AnimatedSize
- AspectRatio
- BackdropFilter
- Badge
- Baseline
- Card
- Center
- ClipOval
- ClipPath
- ClipRRect
- ClipRect
- Column
- ConstrainedBox
- Container
- CustomPaint
- CustomSingleChildLayout
- DecoratedBox
- Dismissible
- Draggable
- ExcludeSemantics
- Expanded
- FadeTransition
- FittedBox
- Flex
- FractionalTranslation
- FractionallySizedBox
- GestureDetector
- Hero
- IgnorePointer
- InkWell
- InteractiveViewer
- IntrinsicHeight
- IntrinsicWidth
- LimitedBox
- ListenableBuilder
- LongPressDraggable
- Material
- MergeSemantics
- NotificationListener
- Offstage
- Opacity
- OverflowBox
- Padding
- PositionedTransition
- RawKeyboardListener
- RefreshIndicator
- RotatedBox
- RotationTransition
- Row
- ScaleTransition
- Scrollbar
- Semantics
- SingleChildScrollView
- SizeTransition
- SizedBox
- SizedOverflowBox
- SlideTransition
- Stack
- Transform
- Wrap

### Possible but unimplemented
- All sliver widgets
- DecoratedBoxTransition
- Form
- MediaQuery
- Theme

Anything not listed above is not possible or not planned.