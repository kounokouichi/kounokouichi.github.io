import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/features/portfolio/data/portfolio_data.dart';
import 'package:portfolio/features/portfolio/domain/portfolio_data.dart';

final portfolioProvider = Provider<PortfolioData>((ref) {
  return portfolioData;
});
