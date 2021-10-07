import 'package:flutter/material.dart';

class DrawerCollapse extends StatefulWidget {
  const DrawerCollapse({
    Key? key,
    required this.isCollapsed,
    required this.onTap,
  }) : super(key: key);
  final bool isCollapsed;
  final Function onTap;

  @override
  _DrawerCollapseState createState() => _DrawerCollapseState();
}

class _DrawerCollapseState extends State<DrawerCollapse> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: IconButton(
            icon: (widget.isCollapsed)
                ? Icon(Icons.arrow_forward_ios)
                : Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () => widget.onTap(),
          ),
        ),
      ],
    );
  }
}
