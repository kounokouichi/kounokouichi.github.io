import 'package:portfolio/features/portfolio/domain/experience.dart';
import 'package:portfolio/features/portfolio/domain/portfolio_data.dart';
import 'package:portfolio/features/portfolio/domain/project.dart';
import 'package:portfolio/features/portfolio/domain/qualification.dart';

const portfolioData = PortfolioData(
  experiences: [
    Experience(
      period: '2026/01-現在',
      titleJa: '保険契約管理アプリ',
      titleEn: '',
      roleJa: 'SE・モバイルアプリエンジニア',
      roleEn: '',
      descriptionJa: 'ユーザー数400万人超。マイナンバーカードの読取り機能周辺などを担当',
      descriptionEn: '',
    ),
    Experience(
      period: '2024/11-2025/12',
      titleJa: '建設用車両メンテアプリ',
      titleEn: '',
      roleJa: 'SE・モバイルアプリエンジニア',
      roleEn: '',
      descriptionJa: '10カ国以上で展開。API呼出し処理のパフォーマンス改善などを担当',
      descriptionEn: '',
    ),
    Experience(
      period: '2023/06-2024/06',
      titleJa: 'パチンコ・パチスロの出玉情報などを提供するサービス',
      titleEn: '',
      roleJa: 'WEBエンジニア',
      roleEn: '',
      descriptionJa: '言語のバージョンアップやサイネージの広告画面作成などを担当',
      descriptionEn: '',
    ),
  ],
  projects: [
    Project(
      titleJa: 'ポートフォリオサイト',
      titleEn: 'Portfolio Website',
      techStack: 'Flutter Web',
      descriptionJa: '自己紹介用Webサイト。このサイトです。',
      descriptionEn: '',
    ),
  ],
  qualifications: [
    Qualification(title: '応用情報技術者試験', year: '2018'),
    Qualification(title: 'TOEIC 770', year: '2026'),
  ],
  languages: [
    'Dart',
    'PHP',
    'HTML/CSS',
    'JavaScript',
    'Java',
    'C#',
    'C++',
    'Python',
  ],
  frameworks: ['Flutter', 'CakePHP', 'Vue.js', 'Django'],
  tools: [
    'VS Code',
    'Android Studio',
    'Xcode',
    'Git / GitHub / GitBucket',
    'Eclipse',
  ],
);
