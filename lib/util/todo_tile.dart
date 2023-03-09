// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ToDoTile extends StatefulWidget {
  final String taskName;
  final bool taskCompleted;

   Function(bool?)? onChanged;

  ToDoTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        child : Row(
          children: [
            Checkbox(value: widget.taskCompleted, onChanged: widget.onChanged),
            Text(widget.taskName),
          ],
        ),
      ),
    );
  }
}
