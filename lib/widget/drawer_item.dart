import 'package:flutter/material.dart';

class DrawerItem extends StatefulWidget {
  const DrawerItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isCollapsed,
  }) : super(key: key);
  final Icon icon;
  final bool isCollapsed;
  final Text label;

  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Row(
        mainAxisAlignment: (widget.isCollapsed)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceEvenly,
        children: [
          widget.icon,
          (widget.isCollapsed)
              ? Container()
              : AnimatedOpacity(
                  duration: Duration(
                    seconds: 1,
                  ),
                  opacity: (widget.isCollapsed) ? 0 : 1,
                  child: widget.label,
                ),
        ],
      ),
    );
  }
}

class SecondDelayedAnimatedOpacity extends StatefulWidget {
  const SecondDelayedAnimatedOpacity({
    Key? key,
    required this.icon,
    required this.label,
    required this.isCollapsed,
  }) : super(key: key);
  final Icon icon;
  final bool isCollapsed;
  final Text label;

  @override
  SecondDelayedAnimatedOpacityState createState() =>
      SecondDelayedAnimatedOpacityState();
}

class SecondDelayedAnimatedOpacityState
    extends State<SecondDelayedAnimatedOpacity> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
