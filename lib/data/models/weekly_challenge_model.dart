import 'dart:ui';

class WeeklyChallengeModel {
  final String mainTitle;
  final String subtitleTitle;
  final String repetitionText;
  final String videoUrl;
  final Color leadingIconColor;

  WeeklyChallengeModel(
      {required this.mainTitle,
      required this.subtitleTitle,
      required this.repetitionText,
      required this.videoUrl,
      required this.leadingIconColor});
}
