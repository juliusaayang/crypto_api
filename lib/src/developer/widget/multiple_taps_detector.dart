import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MultipleTapsDetector extends StatefulWidget {
  const MultipleTapsDetector({
    required this.child, required this.onTriggered, super.key,
    this.tapsThreshold = 5,
    this.enabled = true,
  });

  final Widget child;
  final VoidCallback onTriggered;
  final int tapsThreshold;
  final bool enabled;

  @override
  State<MultipleTapsDetector> createState() => _MultipleTapsDetectorState();
}

class _MultipleTapsDetectorState extends State<MultipleTapsDetector> {
  int _taps = 0;

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled) {
      return widget.child;
    } else {
      return GestureDetector(
        onTap: () {
          if (kDebugMode) {
            _taps++;
            if (_taps == widget.tapsThreshold) {
              widget.onTriggered();
              _taps = 0;
            }
          }
        },
        child: widget.child,
      );
    }
  }
}
