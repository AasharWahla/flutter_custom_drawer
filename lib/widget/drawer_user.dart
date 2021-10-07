import 'package:flutter/material.dart';

class DrawerUser extends StatefulWidget {
  const DrawerUser({
    Key? key,
    required this.afterCollapse,
    required this.beforeCollapse,
    required this.isCollapsed,
  }) : super(key: key);
  final bool isCollapsed;
  final String beforeCollapse;
  final String afterCollapse;
  @override
  _DrawerUserState createState() => _DrawerUserState();
}

class _DrawerUserState extends State<DrawerUser> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      curve: Curves.linear,
      duration: Duration(
        milliseconds: 100,
      ),
      width: (widget.isCollapsed) ? width * .15 : width * .4,
      height: width * .15,
      decoration: BoxDecoration(
        borderRadius: (widget.isCollapsed)
            ? BorderRadius.circular((width * .15) / 2)
            : BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: (widget.isCollapsed) ? 1 : 2,
        ),
      ),
      child: Center(
        child: FittedBox(
          child: Text(
            (widget.isCollapsed) ? widget.afterCollapse : widget.beforeCollapse,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
