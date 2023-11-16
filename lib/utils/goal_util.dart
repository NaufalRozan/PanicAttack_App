List<DayContent> getDayContent(int day, String anxietyLevel) {
  switch (day) {
    case 1:
      return getDay1Content(anxietyLevel);
    case 2:
    case 3:
      return [
        // Konten untuk Day 3 dengan gambar yang sesuai
      ];
    default:
      return [];
  }
}

class DayContent {
  final String title;
  final String description;
  final String duration;
  final String imagePath; // Properti baru untuk path gambar

  DayContent({
    required this.title,
    required this.description,
    required this.duration,
    required this.imagePath, // Inisialisasi path gambar
  });
}

List<DayContent> getDay1Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          title: 'Latihan 1 - Level Low',
          description: 'Deskripsi latihan 1 untuk level low',
          duration: '00:30',
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
        ),
        DayContent(
          title: 'Latihan 2 - Level Low',
          description: 'Deskripsi latihan 2 untuk level low',
          duration: '01:00',
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
        ),
      ];
    case 'Anxiety Level Medium':
      return [
        DayContent(
          title: 'Latihan 1 - Level Medium',
          description: 'Deskripsi latihan 1 untuk level medium',
          duration: '00:45',
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
        ),
        DayContent(
          title: 'Latihan 2 - Level Medium',
          description: 'Deskripsi latihan 2 untuk level medium',
          duration: '01:15',
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          title: 'Latihan 1 - Level High',
          description: 'Deskripsi latihan 1 untuk level high',
          duration: '01:00',
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
        ),
        DayContent(
          title: 'Latihan 2 - Level High',
          description: 'Deskripsi latihan 2 untuk level high',
          duration: '01:30',
          imagePath: 'lib/assets/images/Breathing exercise-amico.png',
        ),
      ];
    default:
      return [];
  }
}