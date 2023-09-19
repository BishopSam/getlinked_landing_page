import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gap extends LeafRenderObjectWidget {
  const Gap(this.space, {Key? key}) : super(key: key);

  final double space;

  @override
  RenderObject createRenderObject(BuildContext context) =>
      RenderSpace(space: space);

  @override
  void updateRenderObject(
          BuildContext context, covariant RenderSpace renderObject) =>
      renderObject.space = space;
}

class RenderSpace extends RenderBox {
  RenderSpace({required double space}) : _space = space;

  double get space => _space;
  double _space;

  set space(double space) {
    if (space == _space) {
      return;
    }
    _space = space;
    markNeedsLayout();
  }

  @override
  void performLayout() {
    final Axis? direction = (parent as RenderFlex?)?.direction;
    assert(direction != null,
        'Gap should not be used outside of a Flex (Row, Column)');
    if (direction == null) {
      size = Size.zero;
    } else {
      size = Size(direction == Axis.horizontal ? space.w : 0,
          direction == Axis.vertical ? space.h : 0);
    }
  }
}

double screenWidth(BuildContext context, {double percent = 100.0}) =>
    MediaQuery.of(context).size.width * (percent / 100);

double screenHeight(BuildContext context, {double percent = 100.0}) =>
    MediaQuery.of(context).size.height * (percent / 100);
