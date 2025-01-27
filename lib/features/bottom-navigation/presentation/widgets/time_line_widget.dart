import 'package:flutter/material.dart';
import 'package:maid_service/features/bottom-navigation/data/model/TimeLineEntry.dart';

class TimelineTile extends StatelessWidget {
  final TimelineEntry entry;
  final bool isLast;

  const TimelineTile({Key? key, required this.entry, required this.isLast})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Timeline indicator with line
        Column(
          children: [
            // Circle indicator
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: entry.isCompleted ? Colors.green : Colors.white,
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                ),
              ),
              child: entry.isCompleted
                  ? Icon(Icons.check, color: Colors.white, size: 14)
                  : null,
            ),
            // Connector line
            if (!isLast)
              Container(
                width: 2,
                height: 60, // Adjust height as needed
                color: Colors.green,
              ),
          ],
        ),
        SizedBox(width: 16),
        // Date and description
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entry.date,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4),
              Text(
                entry.description,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}