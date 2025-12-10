import 'package:flutter/material.dart';
import 'package:tugas_magang_hub/core/const/app_size.dart';
import 'package:tugas_magang_hub/core/const/app_size.dart';

import 'card_color_model.dart';

class WidgetShadow extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final double? paddingShadow;
  final CardColorModel cardColor;
  final BorderRadius? radius;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final int? duration;
  final VoidCallback? onTap;
  final Widget child;
  final bool isCanClick;
  final bool isShowShadow;
  final Alignment? alignment;
  final double? borderWidthRatio;

  const WidgetShadow({
    super.key,
    required this.cardColor,
    this.padding,
    this.paddingShadow,
    this.radius,
    this.width,
    this.height,
    this.duration,
    this.onTap,
    this.fontWeight,
    required this.child,
    this.isShowShadow = true,
    this.isCanClick = false,
    this.alignment,
    this.borderWidthRatio,
  });

  @override
  _WidgetShadowState createState() => _WidgetShadowState();
}

class _WidgetShadowState extends State<WidgetShadow> {
  bool _isMoved = false;
  bool _isHovered = false;

  void _handleTap() {
    if (!widget.isCanClick) return;

    final defaultDuration = widget.duration ?? 150;
    if (mounted) {
      setState(() {
        _isMoved = true;
        _isHovered = true;
      });
    }

    Future.delayed(Duration(milliseconds: defaultDuration), () {
      if (mounted) {
        setState(() {
          _isMoved = false;
          _isHovered = false;
        });
      }

      Future.delayed(Duration(milliseconds: defaultDuration), () {
        widget.onTap?.call();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double paddingShadow = widget.paddingShadow ?? AppSize.calculatedSize(5);
    final radius = widget.radius ?? AppSize.radiusSmall;

    Widget shadowWidget = Stack(
      children: [
        widget.isShowShadow
            ? Positioned.fill(
          child: AnimatedContainer(
            duration: Duration(milliseconds: widget.duration ?? 300),
            margin: EdgeInsets.only(
              top: paddingShadow,
              left: paddingShadow,
            ),
            decoration: BoxDecoration(
              color: widget.cardColor.shadow,
              borderRadius: radius,
            ),
          ),
        )
            : const SizedBox.shrink(),
        Positioned(
          child: AnimatedContainer(
            margin: EdgeInsets.only(
              right: paddingShadow,
              bottom: paddingShadow,
            ),
            duration: const Duration(milliseconds: 200),
            transform: Matrix4.translationValues(
                _isMoved ? (paddingShadow / 2) : 0,
                _isMoved ? (paddingShadow / 2) : 0,
                0),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: _isHovered
                  ? widget.cardColor.hover.card
                  : widget.cardColor.card,
              borderRadius: radius,
              border: Border.all(
                color: _isHovered
                    ? widget.cardColor.hover.shadow
                    : widget.cardColor.shadow,
                width: paddingShadow / (widget.borderWidthRatio ?? 1),
              ),
            ),
            child: Container(
              padding: widget.padding,
              width: widget.width,
              height: widget.height,
              alignment: widget.alignment,
              child: widget.child,
            ),
          ),
        ),
      ],
    );

    return widget.isCanClick
        ? GestureDetector(
      onTap: _handleTap,
      child: shadowWidget,
    )
        : shadowWidget;
  }
}
