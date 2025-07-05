import 'image_project_widget.dart';
import 'package:flutter/material.dart';
import 'description_project_widget.dart';
import '../../../utils/helpers/screen_size_helper.dart';

class ProjectCardWidget extends StatefulWidget {
  final bool even;
  final String title;
  final String description;
  final Object constraints;
  final List<String> toolsList;
  final List<String> imagesPath;

  const ProjectCardWidget({
    super.key,
    required this.even,
    required this.title,
    required this.description,
    required this.constraints,
    required this.toolsList,
    required this.imagesPath,
  });

  @override
  State<ProjectCardWidget> createState() => _ProjectCardWidgetState();
}

class _ProjectCardWidgetState extends State<ProjectCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: ScreenSizeHelper.w(widget.constraints, 2)),
      child: Row(
        children: [
          widget.even == true ? Expanded(
            child: ImageProjectWidget(
              constraints: widget.constraints,
              imagesPath: widget.imagesPath,
            ),
          ) : SizedBox(),
          Expanded(
            child: DescriptionProjectWidget(
              title: widget.title,
              description: widget.description,
              toolsList: widget.toolsList,
              constraints: widget.constraints,
            ),
          ),
          widget.even == false ? Expanded(
            child: ImageProjectWidget(
              constraints: widget.constraints,
              imagesPath: widget.imagesPath,
            ),
          ) : SizedBox(),
        ],
      ),
    );
  }
}
