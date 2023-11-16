List<DayContent> getDayContent(int day, String anxietyLevel) {
  switch (day) {
    case 1:
      return getDay1Content(anxietyLevel);
    case 2:
      return getDay2Content(anxietyLevel);
    case 3:
      return getDay3Content(anxietyLevel);
    case 4:
      return getDay4Content(anxietyLevel);
    case 5:
      return getDay5Content(anxietyLevel);
    case 6:
      return getDay6Content(anxietyLevel);
    case 7:
      return getDay7Content(anxietyLevel);
    default:
      return [];
  }
}

class DayContent {
  final String title;
  final String description;
  final String duration;
  final Duration durasi;
  final String imagePath; // Properti baru untuk path gambar
  final String gifPath; // Properti baru untuk path gambar

  DayContent({
    required this.title,
    required this.description,
    required this.duration,
    required this.durasi,
    required this.imagePath,
    required this.gifPath,
  });
}

List<DayContent> getDay1Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Tersenyum',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Berbicara Di Depan\nCermin',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    default:
      return [];
  }
}
List<DayContent> getDay2Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Tersenyum',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Berbicara Di Depan\nCermin',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    default:
      return [];
  }
}
List<DayContent> getDay3Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Tersenyum',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Berbicara Di Depan\nCermin',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    default:
      return [];
  }
}
List<DayContent> getDay4Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Tersenyum',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Berbicara Di Depan\nCermin',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    default:
      return [];
  }
}
List<DayContent> getDay5Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Tersenyum',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Berbicara Di Depan\nCermin',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    default:
      return [];
  }
}
List<DayContent> getDay6Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Tersenyum',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Berbicara Di Depan\nCermin',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    default:
      return [];
  }
}
List<DayContent> getDay7Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          title: 'Perbaiki Kualitas\nPenapasan',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Tangan',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Kaki',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Peregangan Leher',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Jalan Kecil-Kecil',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meminum Segelas\nAir Mineral',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Mendengarkan Musik\nRelaksasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Meditasi',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Tersenyum',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
        DayContent(
          title: 'Berbicara Di Depan\nCermin',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
        ),
      ];
    default:
      return [];
  }
}

