class CustomExercise {
  final String imageUrl;
  final String exerciseName;
  final String? videoUrl;
  final String? exerciseInfo;
  final String duration;
  final String repeatation;

  CustomExercise(
      {required this.duration,
      this.videoUrl,
      this.exerciseInfo,
      required this.imageUrl,
      required this.exerciseName,
      required this.repeatation});
}
