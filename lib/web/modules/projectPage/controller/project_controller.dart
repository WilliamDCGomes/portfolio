import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../base/models/project.dart';
import '../../../utils/helpers/web_paths_helper.dart';

class ProjectController extends GetxController {
  final Object constraints;
  late List<Project> projects;
  late ScrollController listViewController;

  ProjectController(this.constraints) {
    projects = <Project> [
      Project(
        title: "Social Media Video Creator",
        description: "Aplicativo criado com a intenção de gerar automaticamente vídeos para plataformas de mídia social como TikTok, Instagram e YouTube Shorts. O objetivo é que o usuário apenas informe o tema do vídeo, e então um vídeo será gerado com a narração de um conteúdo criado por inteligência artificial.",
        imagesPath: [
          WebPathsHelper.firstSmvc,
          WebPathsHelper.secondSmvc,
          WebPathsHelper.thirdSmvc,
          WebPathsHelper.fourthSmvc,
          WebPathsHelper.fifthSmvc,
          WebPathsHelper.sixthSmvc,
          WebPathsHelper.seventhSmvc,
          WebPathsHelper.eighthSmvc,
          WebPathsHelper.ninthSmvc,
        ],
        toolsList: [
          "Flutter",
          "Dart",
          ".NET",
          "C#",
          "Azure",
          "Eleven Labs",
        ]
      ),
      Project(
        title: "Protótipo de Controle Educacional",
        description: "Este aplicativo foi criado com a intenção de facilitar e agilizar a troca de informações entre uma instituição de ensino e os alunos. Com ele, o aluno pode acompanhar suas notas, frequência, tarefas, aulas, comunicados e até mesmo fazer algumas solicitações diretamente pelo aplicativo.",
        imagesPath: [
          WebPathsHelper.firstPce,
          WebPathsHelper.secondPce,
          WebPathsHelper.thirdPce,
          WebPathsHelper.fourthPce,
          WebPathsHelper.fifthPce,
          WebPathsHelper.sixthPce,
          WebPathsHelper.seventhPce,
          WebPathsHelper.eighthPce,
          WebPathsHelper.ninthPce,
        ],
        toolsList: [
          "Flutter",
          "Dart",
          "Firebase",
        ],
      ),
      Project(
        title: "ZiPartner",
        description: "Este aplicativo foi criado com a intenção de permitir que você encontre outras pessoas interessadas em treinar juntas. Ele funciona mostrando pessoas próximas a você junto com suas informações, como os treinos que praticam e as academias que frequentam. Se houver um MATCH entre vocês, um chat interno é aberto dentro do app, permitindo que vocês agendem uma sessão de treino juntos.",
        imagesPath: [
          WebPathsHelper.firstZiPartner,
          WebPathsHelper.secondZiPartner,
          WebPathsHelper.thirdZiPartner,
          WebPathsHelper.fourthZiPartner,
          WebPathsHelper.fifthZiPartner,
          WebPathsHelper.sixthZiPartner,
          WebPathsHelper.seventhZiPartner,
          WebPathsHelper.eighthZiPartner,
        ],
        toolsList: [
          "Flutter",
          "Dart",
          ".NET",
          "C#",
          "SQL Server",
          "Azure",
          "Firebase",
        ],
      ),
      Project(
        title: "Elephant Control",
        description: "Este aplicativo foi desenvolvido com o objetivo de gerenciar o controle de máquinas de prêmios com bichos de pelúcia. Ele inclui quatro tipos diferentes de usuários, cada um com acesso exclusivo à sua respectiva conta.",
        imagesPath: [
          WebPathsHelper.firstElephant,
          WebPathsHelper.secondElephant,
          WebPathsHelper.thirdElephant,
          WebPathsHelper.fourthElephant,
          WebPathsHelper.fifthElephant,
        ],
        toolsList: [
          "Flutter",
          "Dart",
          ".NET",
          "C#",
          "SQL Server",
          "SQLite",
          "Azure",
        ],
      ),
      Project(
        title: "Catálogo Japamix",
        description: "Este aplicativo foi criado com a intenção de ser um guia turístico para uma cidade. Ele inclui diversos locais dentro da cidade, como estabelecimentos comerciais, pontos turísticos, shoppings, parques e muito mais.",
        imagesPath: [
          WebPathsHelper.firstJapamix,
          WebPathsHelper.secondJapamix,
          WebPathsHelper.thirdJapamix,
          WebPathsHelper.fourthJapamix,
        ],
        toolsList: [
          "Flutter",
          "Dart",
          ".NET",
          "C#",
          "Azure",
          "Firebase",
        ],
      ),
    ];

    listViewController = ScrollController();
  }

  void handleNotification(ScrollNotification n) {
    if(n.context == null) return;

    final primary = PrimaryScrollController.of(n.context!);

    if (!primary.hasClients) return;

    if (n is OverscrollNotification) {
      primary.position.moveTo(primary.position.pixels + n.overscroll);
    }

    if (n is ScrollUpdateNotification && n.scrollDelta != null) {
      final edgeTop    = n.metrics.pixels <= 0 && n.scrollDelta! < 0;
      final edgeBottom = n.metrics.pixels >= n.metrics.maxScrollExtent && n.scrollDelta! > 0;

      if (edgeTop || edgeBottom) {
        primary.position.moveTo(primary.position.pixels + n.scrollDelta!);
      }
    }
  }
}