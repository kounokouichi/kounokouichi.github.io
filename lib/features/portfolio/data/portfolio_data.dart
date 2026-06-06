import 'package:portfolio/features/portfolio/domain/experience.dart';
import 'package:portfolio/features/portfolio/domain/portfolio_data.dart';
import 'package:portfolio/features/portfolio/domain/project.dart';
import 'package:portfolio/features/portfolio/domain/qualification.dart';

const portfolioData = PortfolioData(
  experiences: [
    Experience(
      period: '2024-現在',

      titleJa: '金融アプリ開発',
      titleEn: 'Financial Application',

      roleJa: 'Flutterエンジニア',
      roleEn: 'Flutter Engineer',

      descriptionJa: '新規開発および保守運用を担当',

      descriptionEn: 'Responsible for development and maintenance',
    ),
  ],

  projects: [
    Project(
      titleJa: 'ポートフォリオサイト',
      titleEn: 'Portfolio Website',

      techStack: 'Flutter Web',

      descriptionJa: '自己紹介用Webサイト',

      descriptionEn: 'Portfolio website built with Flutter Web',
    ),
  ],

  qualifications: [
    Qualification(title: 'AWS SAA', year: '2025'),
    Qualification(title: 'TOEIC 860', year: '2025'),
  ],

  languages: ['Dart', 'Kotlin', 'Swift'],

  frameworks: ['Flutter', 'Riverpod', 'Firebase'],

  tools: ['Git', 'Docker', 'Figma'],
);
