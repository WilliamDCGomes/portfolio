class Experience {
  late String company;
  late String title;
  late String period;
  late String? observation;
  late String companyLogo;
  late DateTime startPeriod;
  late DateTime? endPeriod;
  late List<String> responsibilities;
  late List<String> toolsList;

  Experience({
    required this.company,
    required this.title,
    required this.period,
    this.observation,
    required this.companyLogo,
    required this.startPeriod,
    this.endPeriod,
    required this.responsibilities,
    required this.toolsList,
  });
}