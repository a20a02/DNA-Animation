import 'package:flutter/material.dart';

class DNA extends StatefulWidget {
  const DNA({
    super.key,
    required this.index,
    required this.color,
  });

  final int index;
  final Color color;

  @override
  State<DNA> createState() => _DNAState();
}

class _DNAState extends State<DNA> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _animation = Tween<double>(
      begin: 2,
      end: 50,
    ).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    super.initState();
    Future.delayed(Duration(milliseconds: widget.index * 80), () {
      _animationController.forward();
    });
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        _animationController.reverse();
      } else if (_animationController.isDismissed) {
        _animationController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Container(
          margin: const EdgeInsets.all(2),
          width: 8,
          height: _animation.value,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(5),
          ),
        );
      },
    );
  }
}
