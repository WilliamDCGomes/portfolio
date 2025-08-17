import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../base/models/experience.dart';
import '../../../utils/helpers/web_paths_helper.dart';

class ExperienceController extends GetxController {
  late RxBool internalAllowScroll;
  late ScrollController scrollController;
  late final List<Experience> experience;

  ExperienceController() {
    internalAllowScroll = true.obs;
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent ||
          scrollController.position.pixels == scrollController.position.minScrollExtent) {
        internalAllowScroll.value = false;
        Future.delayed(Duration(seconds: 1), () {
          internalAllowScroll.value = true;
        });
      }
    });
    experience = <Experience>[
      Experience(
        company: "BNP Paribas",
        title: "Desenvolvedor Sênior",
        period: "Tempo integral",
        observation: "Trabalho como terceirizado pela Aubay na BNP Paribas",
        companyLogo: WebPathsHelper.bnpParibasIcon,
        startPeriod: DateTime(2025, 7),
        responsibilities: [
          "Desenvolvimento de Aplicações para Web",
          "Desenvolvimento com C#, .NET, VB, JavaScript e Angular",
          "Criação e Manutenção e criação de tabelas SQL",
          "Criação e Manutenção de API Rest e consumo",
        ],
        toolsList: [
          "C#",
          ".NET",
          "VB.NET",
          "JavaScript",
          "Angular",
          "SQL Server",
          "Oracle",
        ],
      ),
      Experience(
        company: "Aubay",
        title: "Desenvolvedor Sênior",
        period: "Tempo integral",
        observation: "Trabalho alocado na BNP Paribas",
        companyLogo: WebPathsHelper.aubayIcon,
        startPeriod: DateTime(2025, 7),
        responsibilities: [
          "Desenvolvimento de Aplicações para Web",
          "Desenvolvimento com C#, .NET, VB, JavaScript e Angular",
          "Criação e Manutenção e criação de tabelas SQL",
          "Criação e Manutenção de API Rest e consumo",
        ],
        toolsList: [
          "C#",
          ".NET",
          "VB.NET",
          "JavaScript",
          "Angular",
          "SQL Server",
          "Oracle",
        ],
      ),
      Experience(
        company: "Microsoft",
        title: "Desenvolvedor Sênior",
        period: "Tempo integral",
        observation: "Trabalho como terceirizado pela Wipro na Microsoft",
        companyLogo: WebPathsHelper.microsoftIcon,
        startPeriod: DateTime(2024, 9),
        responsibilities: [
          "Manutenção em Aplicações e implementação de novas funções",
          "Criação de automações para projetos internos",
          "Desenvolvimento de Aplicações para Web",
          "Desenvolvimento com C#, Angular e React",
          "Criação e Manutenção e criação de tabelas SQL e SqlLite",
          "Criação e Manutenção de API Rest e consumo",
        ],
        toolsList: [
          "Microsoft Power Automate",
          "Share Point",
          "C#",
          ".NET Core",
          ".NET Framework",
          "Microsoft Azure",
        ],
      ),
    ];
  }

  void addMoreExperience() {
    experience.addAll(
      [
        Experience(
          company: "Wipro",
          title: "Desenvolvedor Sênior",
          period: "Tempo integral",
          observation: "Trabalho alocado na Microsoft",
          companyLogo: WebPathsHelper.wiproIcon,
          startPeriod: DateTime(2024, 9),
          responsibilities: [
            "Manutenção em Aplicações e implementação de novas funções",
            "Criação de automações para projetos internos",
            "Desenvolvimento de Aplicações para Web",
            "Desenvolvimento com C#, Angular e React",
            "Criação e Manutenção e criação de tabelas SQL e SqlLite",
            "Criação e Manutenção de API Rest e consumo",
          ],
          toolsList: [
            "Microsoft Power Automate",
            "Share Point",
            "C#",
            ".NET Core",
            ".NET Framework",
            "Microsoft Azure",
          ],
        ),
        Experience(
          company: "Totvs",
          title: "Desenvolvedor .NET / Desktop e Mobile",
          companyLogo: WebPathsHelper.totvsIcon,
          period: "Tempo integral",
          startPeriod: DateTime(2023, 5),
          endPeriod: DateTime(2024, 8),
          responsibilities: [
            "Desenvolvimento de Aplicações utilizando Xamarin Forms",
            "Manutenção em Aplicações e implementação de novas funções",
            "Desenvolvimento de Aplicações para Android e Windows",
            "Criação e Manutenção e criação de tabelas SQL e SqlLite",
            "Criação e Manutenção de API Rest e consumo",
            "Suporte aos desenvolvedores com menor experiência",
          ],
          toolsList: [
            "C#",
            "Xamarin Forms",
            ".NET Core",
            ".NET Framework",
            "SQLite",
            "PostgreSQL",
            "SQL Server",
          ],
        ),
        Experience(
          company: "William Douglas Developer",
          title: "Desenvolvedor Mobile e Web",
          observation: "Minha própria empresa para trabalhos freelancers",
          companyLogo: WebPathsHelper.williamDouglasDeveloperIcon,
          period: "Autônomo",
          startPeriod: DateTime(2018, 10),
          endPeriod: DateTime(2024, 4),
          responsibilities: [
            "Desenvolvimento de Aplicações do zero utilizando Flutter e Xamarin Forms",
            "Desenvolvimento de Sites utilizando HTML, CSS e JavaScript",
            "Manutenção em Aplicações e implementação de novas funções",
            "Desenvolvimento de Aplicações para Android e iOS",
            "Manutenção e criação de tabelas SQL e SqlLite",
            "Criação, manutenção e consumo de API Rest",
            "Correções de bugs em produção",
            "Publicação dos apps na Apple Store e Google Play",
          ],
          toolsList: [
            "C#",
            "Xamarin Forms",
            "MAUI",
            ".NET Core",
            "Flutter",
            "Dart",
            "Java",
            "JavaScript",
            "Angular",
            "SQLite",
            "MySQL",
            "SQL Server",
            "Azure",
            "Firebase",
          ],
        ),
        Experience(
          company: "Keeper",
          title: "Desenvolvedor Full Stack",
          companyLogo: WebPathsHelper.keeperIcon,
          period: "Tempo integral",
          startPeriod: DateTime(2022, 5),
          endPeriod: DateTime(2023, 4),
          responsibilities: [
            "Desenvolvimento de Aplicações utilizando Flutter, Angular e .NET",
            "Desenvolvimento com C#, Dart e TypeScript",
            "Manutenção em Aplicações e implementação de novas funções",
            "Desenvolvimento de Aplicações para Android e iOS e plataformas web",
            "Manutenção e criação de tabelas SQL e SqlLite",
            "Manutenção de API Rest e consumo",
          ],
          toolsList: [
            "C#",
            ".NET Core",
            ".NET Framework",
            "Flutter",
            "Dart",
            "TypeScript",
            "Angular",
            "SQL Server",
            "Firebase",
            "Datadog",
          ],
        ),
        Experience(
          company: "Moovefy",
          title: "Desenvolvedor Mobile",
          companyLogo: WebPathsHelper.moovefyIcon,
          period: "Tempo integral",
          startPeriod: DateTime(2019, 1),
          endPeriod: DateTime(2022, 4),
          responsibilities: [
            "Desenvolvimento de Aplicações do zero utilizando Flutter e Xamarin Forms",
            "Manutenção em Aplicações e implementação de novas funções",
            "Desenvolvimento de Aplicações para Android e iOS",
            "Manutenção e criação de tabelas SQL e SqlLite",
            "Manutenção de API Rest e consumo",
            "Correções de bugs em produção",
            "Publicação dos apps na Apple Store e Google Play",
            "Suporte aos estagiários em dúvidas e problemas recorrentes",
          ],
          toolsList: [
            "C#",
            "Xamarin Forms",
            "Dart",
            "Flutter",
            ".NET Core",
            ".NET Framework",
            "SQL Server",
            "SQLite",
          ],
        ),
      ]
    );
  }
}