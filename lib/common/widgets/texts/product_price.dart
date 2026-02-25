import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.price,
    this.currency = '\$',
    this.maxLines = 1,
    this.textOverflow,
    this.smallSize = true,
    this.lineThrough = false,
  });

  final double price;
  final String currency;
  final int maxLines;
  final TextOverflow? textOverflow;
  final bool smallSize, lineThrough;

  String getPrice(double price) {
    return '$currency$price';
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      getPrice(price),
      style:
          (smallSize
                  ? Theme.of(context).textTheme.titleLarge
                  : Theme.of(context).textTheme.headlineMedium)!
              .apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
                color: lineThrough
                    ? Theme.of(
                        context,
                      ).textTheme.titleLarge!.color!.withValues(alpha: 0.7)
                    : null,
              ),
      overflow: textOverflow ?? TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
