import 'experience.dart';
import 'project.dart';
import 'qualification.dart';

class PortfolioData {
  final List<Experience> experiences;
  final List<Project> projects;
  final List<Qualification> qualifications;
  final List<String> languages;
  final List<String> frameworks;
  final List<String> tools;

  const PortfolioData({
    required this.experiences,
    required this.projects,
    required this.qualifications,
    required this.languages,
    required this.frameworks,
    required this.tools,
  });
}
