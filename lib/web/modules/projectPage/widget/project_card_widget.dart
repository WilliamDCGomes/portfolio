import 'image_project_widget.dart';
import 'package:flutter/material.dart';
import 'description_project_widget.dart';
import '../../../base/models/project.dart';
import '../../../utils/helpers/screen_size_helper.dart';

class ProjectCardWidget extends StatelessWidget {
  final bool even;
  final Project project;
  final Object constraints;

  const ProjectCardWidget({
    super.key,
    required this.even,
    required this.project,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: ScreenSizeHelper.w(constraints, 2)),
      child: Row(
        children: [
          even == true ? Expanded(
            child: ImageProjectWidget(
              even: even,
              constraints: constraints,
              imagesPath: project.imagesPath,
            ),
          ) : SizedBox(),
          Expanded(
            child: DescriptionProjectWidget(
              even: even,
              title: project.title,
              description: project.description,
              toolsList: project.toolsList,
              constraints: constraints,
            ),
          ),
          even == false ? Expanded(
            child: ImageProjectWidget(
              even: even,
              constraints: constraints,
              imagesPath: project.imagesPath,
            ),
          ) : SizedBox(),
        ],
      ),
    );
  }
}
