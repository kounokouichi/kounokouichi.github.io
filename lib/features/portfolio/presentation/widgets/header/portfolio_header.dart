import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/header/desktop_header.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/header/mobile_header.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/responsive_layout.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktop: DesktopHeader(),
      tablet: MobileHeader(),
      mobile: MobileHeader(),
    );
  }
}
