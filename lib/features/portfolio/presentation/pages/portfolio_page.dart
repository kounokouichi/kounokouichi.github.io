import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/app_drawer.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card/experience_card.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card/profile_card.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card/project_card.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card/qualification_card.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card/skill_card.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/card/strength_card.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/header/portfolio_header.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/responsive_layout.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: AppDrawer(),
      body: Column(
        children: [
          PortfolioHeader(),
          Expanded(
            child: ResponsiveLayout(
              desktop: _DesktopView(),
              tablet: _TabletView(),
              mobile: _MobileView(),
            ),
          ),
        ],
      ),
    );
  }
}

class _DesktopView extends StatelessWidget {
  const _DesktopView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: const Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: ProfileCard()),
                    SizedBox(width: 24),
                    Expanded(child: StrengthCard()),
                    SizedBox(width: 24),
                    Expanded(child: SkillCard()),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: ExperienceCard()),
                    SizedBox(width: 24),
                    Expanded(child: ProjectCard()),
                    SizedBox(width: 24),
                    Expanded(child: QualificationCard()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabletView extends StatelessWidget {
  const _TabletView();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Wrap(
        spacing: 24,
        runSpacing: 24,
        children: [
          SizedBox(width: 500, child: ProfileCard()),
          SizedBox(width: 500, child: StrengthCard()),
          SizedBox(width: 500, child: SkillCard()),
          SizedBox(width: 500, child: ExperienceCard()),
          SizedBox(width: 500, child: ProjectCard()),
          SizedBox(width: 500, child: QualificationCard()),
        ],
      ),
    );
  }
}

class _MobileView extends StatelessWidget {
  const _MobileView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ProfileCard(),
        SizedBox(height: 16),
        StrengthCard(),
        SizedBox(height: 16),
        SkillCard(),
        SizedBox(height: 16),
        ExperienceCard(),
        SizedBox(height: 16),
        ProjectCard(),
        SizedBox(height: 16),
        QualificationCard(),
      ],
    );
  }
}
