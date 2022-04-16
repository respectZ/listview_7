import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  Avatar(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);
  late final ImageProvider image;
  final String title;
  final String subtitle;
  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          // backgroundImage: widget.image,
          child: Icon(Icons.person_rounded),
        ),
        SizedBox(
          width: 8.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title),
            Text(widget.subtitle),
          ],
        ),
      ],
    );
  }
}
