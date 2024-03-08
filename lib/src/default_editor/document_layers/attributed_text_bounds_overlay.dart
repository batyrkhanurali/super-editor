import 'package:flutter/widgets.dart';
import '../../core/edit_context.dart';
import '../super_editor.dart';
import '../../infrastructure/attribution_layout_bounds.dart';
import '../../infrastructure/content_layers.dart';

class AttributedTextBoundsOverlay implements SuperEditorLayerBuilder {
  const AttributedTextBoundsOverlay({
    required this.selector,
    required this.builder,
  });

  final AttributionBoundsSelector selector;
  final AttributionBoundsBuilder builder;

  @override
  ContentLayerStatefulWidget build(BuildContext context, SuperEditorContext editContext) {
    return AttributionBounds(
      document: editContext.document,
      layout: editContext.documentLayout,
      selector: selector,
      builder: builder,
    );
  }
}
