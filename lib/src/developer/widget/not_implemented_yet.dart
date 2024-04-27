import 'package:flutter/material.dart';

class NotImplementedYet extends StatelessWidget {
  const NotImplementedYet({
    super.key,
    this.label = 'Not implemented yet',
    this.actionLabel = 'OK',
    this.onTap,
  });
  const NotImplementedYet.error({
    Key? key,
    String label = 'Error handling not implemented yet',
    String actionLabel = 'Retry',
    VoidCallback? onTap,
  }) : this(
          key: key,
          label: label,
          actionLabel: actionLabel,
          onTap: onTap,
        );

  final String label;
  final String actionLabel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label.toUpperCase()),
        if (onTap != null)
          TextButton(
            onPressed: onTap,
            child: Text(actionLabel.toUpperCase()),
          ),
      ],
    );
  }
}
