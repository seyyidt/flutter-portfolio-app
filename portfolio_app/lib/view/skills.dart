import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SkillsWidget extends StatefulWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  _SkillsWidgetState createState() => _SkillsWidgetState();
}

class _SkillsWidgetState extends State<SkillsWidget> {
  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: const ExpandableThemeData(
        iconColor: Colors.white,
        headerAlignment: ExpandablePanelHeaderAlignment.center,
      ),
      header: Text("expertise"),
      collapsed: Text(
        "",
        softWrap: true,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      expanded: Text(
        "Flutter, Java, Python, PHP, Android, Swift, HTML/CSS/JS, Angular, PostgreSQL, MySQL, test automation, CI/CD Pipelines, Firebase",
        softWrap: true,
      ),
    );
  }
}
