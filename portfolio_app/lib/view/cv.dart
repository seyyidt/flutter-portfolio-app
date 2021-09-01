import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timeline/flutter_timeline.dart';
import 'package:flutter_timeline/indicator_position.dart';

class CVWidget extends StatefulWidget {
  const CVWidget({Key? key}) : super(key: key);

  @override
  _CVWidgetState createState() => _CVWidgetState();
}

class _CVWidgetState extends State<CVWidget> {
  TimelineTheme getTimeline() {
    return TimelineTheme(
        data: TimelineThemeData(lineColor: Colors.white),
        child: Timeline(
          indicatorSize: 24,
          anchor: IndicatorPosition.center,
          events: [
            TimelineEventDisplay(
              child: TimelineEventCard(
                title: Text(
                  "Ausbildung Matura - HTL",
                  style: TextStyle(color: Colors.white),
                ),
                content: Text(
                  "TGM - Abteilung Informationstechnologie\nWien 1200\n2011-2017",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              indicator: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
              ),
            ),
            TimelineEventDisplay(
              child: TimelineEventCard(
                title: Text(
                  "IT-Consultant",
                  style: TextStyle(color: Colors.white),
                ),
                content: Text(
                  "Accenture\nWien / Deutschland\n2017-2020",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              indicator: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
              ),
            ),
            TimelineEventDisplay(
              child: TimelineEventCard(
                title: Text(
                  "Fullstack-Developer",
                  style: TextStyle(color: Colors.white),
                ),
                content: Text(
                  "OE24\nWien\n2021-today",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              indicator: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: const ExpandableThemeData(
        iconColor: Colors.white,
        headerAlignment: ExpandablePanelHeaderAlignment.center,
      ),
      header: Text("CV"),
      collapsed: Text(
        "",
        softWrap: true,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      expanded: getTimeline(),
    );
  }
}
