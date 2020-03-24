import 'package:flutter/material.dart';

class TagCard extends StatelessWidget {
  final String tag;

  const TagCard({Key key, this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 16,
      decoration: BoxDecoration(
        color: Colors.redAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        tag,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .display4
            .copyWith(color: Theme.of(context).errorColor),
      ),
    );
  }
}
