import 'package:flutter/material.dart';

class CustomWidget extends SingleChildRenderObjectWidget {
  const CustomWidget({super.key});

  /// 创建 RenderObject
  @override
  RenderObject createRenderObject(BuildContext context) => CustomRenderObject();

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderObject renderObject) {
    // 更新 RenderObject
    super.updateRenderObject(context, renderObject);
  }
}

class CustomRenderObject extends RenderBox {

  @override
  void performLayout() {
    // 实现布局逻辑
    super.performLayout();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // 实现绘制逻辑
    super.paint(context, offset);
  }
}
