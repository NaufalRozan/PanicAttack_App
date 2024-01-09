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
  final String id; // Tambahkan properti id
  final String title;
  final String description;
  final String duration;
  final Duration durasi;
  final String imagePath;
  final String gifPath;
  bool completed;

  DayContent({
    required this.id, // Inisialisasi properti id
    required this.title,
    required this.description,
    required this.duration,
    required this.durasi,
    required this.imagePath,
    required this.gifPath,
    required this.completed,
  });
}

List<DayContent> getDay1Content(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return [
        DayContent(
          id: '1',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '2',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 60),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '3',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 60),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '4',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 60),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '5',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '6',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          id: '7',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '01:00',
          durasi: Duration(seconds: 60),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '8',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:30',
          durasi: Duration(seconds: 90),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '9',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:30',
          durasi: Duration(seconds: 90),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '10',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:30',
          durasi: Duration(seconds: 90),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '11',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '12',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '03:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '13',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 60),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '14',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '03:00',
          durasi: Duration(seconds: 2),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          id: '15',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '01:30',
          durasi: Duration(seconds: 90),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '16',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '02:00',
          durasi: Duration(seconds: 120),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '17',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '02:00',
          durasi: Duration(seconds: 120),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '18',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '02:00',
          durasi: Duration(seconds: 120),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '19',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '20',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '21',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '02:00',
          durasi: Duration(seconds: 120),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '22',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '05:00',
          durasi: Duration(seconds: 300),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
        DayContent(
          id: '24',
          title: 'Berbicara Di\nDepan Cermin',
          description:
              'Gunakan cermin sebagai cara untuk berinteraksi dengan diri sendiri. Ini dapat meningkatkan rasa percaya diri saat Anda harus berbicara di depan orang lain.',
          duration: '01:00',
          durasi: Duration(seconds: 60),
          imagePath: 'lib/assets/images/Specs-rafiki.png',
          gifPath: 'lib/assets/gifs/Specs.gif',
          completed: false,
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
          id: '26',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '27',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '28',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '29',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '30',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '31',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          id: '32',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '33',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '34',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '35',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '36',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '37',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '38',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '39',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          id: '40',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '41',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '42',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '43',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '44',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '45',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '46',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '47',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
        DayContent(
          id: '49',
          title: 'Berbicara Di\nDepan Cermin',
          description:
              'Gunakan cermin sebagai cara untuk berinteraksi dengan diri sendiri. Ini dapat meningkatkan rasa percaya diri saat Anda harus berbicara di depan orang lain.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Specs-rafiki.png',
          gifPath: 'lib/assets/gifs/Specs.gif',
          completed: false,
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
          id: '49',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '50',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '51',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '52',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '53',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '54',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          id: '55',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '56',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '57',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '58',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '59',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '60',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '61',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '62',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          id: '63',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '64',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '65',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '66',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '67',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '68',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '69',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '70',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
        DayContent(
          id: '72',
          title: 'Berbicara Di\nDepan Cermin',
          description:
              'Gunakan cermin sebagai cara untuk berinteraksi dengan diri sendiri. Ini dapat meningkatkan rasa percaya diri saat Anda harus berbicara di depan orang lain.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Specs-rafiki.png',
          gifPath: 'lib/assets/gifs/Specs.gif',
          completed: false,
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
          id: '73',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '74',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '75',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '76',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '77',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '78',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          id: '79',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '80',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '81',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '82',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '83',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '84',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '85',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '86',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          id: '87',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '88',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '89',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '90',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '91',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '92',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '93',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '94',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
        DayContent(
          id: '96',
          title: 'Berbicara Di\nDepan Cermin',
          description:
              'Gunakan cermin sebagai cara untuk berinteraksi dengan diri sendiri. Ini dapat meningkatkan rasa percaya diri saat Anda harus berbicara di depan orang lain.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Specs-rafiki.png',
          gifPath: 'lib/assets/gifs/Specs.gif',
          completed: false,
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
          id: '97',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '98',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '99',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '100',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '101',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '102',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          id: '103',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '104',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '105',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '106',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '107',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '108',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '109',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '110',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          id: '111',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '112',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '113',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '114',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '115',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '116',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '117',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '118',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
        DayContent(
          id: '120',
          title: 'Berbicara Di\nDepan Cermin',
          description:
              'Gunakan cermin sebagai cara untuk berinteraksi dengan diri sendiri. Ini dapat meningkatkan rasa percaya diri saat Anda harus berbicara di depan orang lain.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Specs-rafiki.png',
          gifPath: 'lib/assets/gifs/Specs.gif',
          completed: false,
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
          id: '121',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '122',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '123',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '124',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '125',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '126',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          id: '127',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '128',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '129',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '130',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '131',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '132',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '133',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '135',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          id: '135',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '136',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '137',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '138',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '139',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '140',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '141',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '142',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
        DayContent(
          id: '144',
          title: 'Berbicara Di\nDepan Cermin',
          description:
              'Gunakan cermin sebagai cara untuk berinteraksi dengan diri sendiri. Ini dapat meningkatkan rasa percaya diri saat Anda harus berbicara di depan orang lain.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Specs-rafiki.png',
          gifPath: 'lib/assets/gifs/Specs.gif',
          completed: false,
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
          id: '145',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30), // 30 detik
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '146',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '147',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '148',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '149',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '150',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level Mid':
      return [
        DayContent(
          id: '151',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '152',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '153',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '154',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '155',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '156',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '157',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '158',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
      ];
    case 'Anxiety Level High':
      return [
        DayContent(
          id: '159',
          title: 'Perbaiki Kualitas\nPenapasan',
          description:
              'Pastikan perut mengembang dan mengempis saat Anda bernapas. Lakukan dengan ritme napas yang teratur.',
          duration: '00:30',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Breathing exercise-rafiki.png',
          gifPath: 'lib/assets/gifs/Breathing exercise.gif',
          completed: false,
        ),
        DayContent(
          id: '160',
          title: 'Peregangan Tangan',
          description:
              'Peregangan dapat membantu meredakan ketegangan fisik yang terkait dengan stres',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretching exercises-amico.png',
          gifPath: 'lib/assets/gifs/Stretching exercises.gif',
          completed: false,
        ),
        DayContent(
          id: '161',
          title: 'Peregangan Kaki',
          description:
              'Peregangan kaki yang dilakukan dengan pernapasan yang teratur dapat membantu menciptakan perasaan ketenangan dan kedamaian.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-amico.png',
          gifPath: 'lib/assets/gifs/Stretch.gif',
          completed: false,
        ),
        DayContent(
          id: '162',
          title: 'Peregangan Leher',
          description:
              'kegiatan ini bisa memberikan efek relaksasi yang dapat mengurangi tingkat stres secara keseluruhan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Stretch-rafiki (1).png',
          gifPath: 'lib/assets/gifs/Stretch (1).gif',
          completed: false,
        ),
        DayContent(
          id: '163',
          title: 'Jalan Kecil-Kecil',
          description:
              'Berjalan-jalan kecil dapat melepaskan endorfin, hormon peningkat suasana hati yang meredakan stres dan merangsang sistem saraf parasimpatik untuk mengurangi stres.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Walking around-amico.png',
          gifPath: 'lib/assets/gifs/Walking around.gif',
          completed: false,
        ),
        DayContent(
          id: '164',
          title: 'Meminum Segelas\nAir Mineral',
          description:
              'Minum air mineral dapat membantu mengalihkan perhatian dari pikiran yang cemas. Air putih membantu menjaga keseimbangan elektrolit dalam tubuh.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/drinking water-rafiki.png',
          gifPath: 'lib/assets/gifs/drinking water.gif',
          completed: false,
        ),
        DayContent(
          id: '165',
          title: 'Mendengarkan\nMusik Relaksasi',
          description:
              'Musik dapat memengaruhi suasana hati dan emosi, menciptakan atmosfer mendukung keseimbangan emosional, serta mengurangi tingkat stres dan tegangan.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Music-pana.png',
          gifPath: 'lib/assets/gifs/Music.gif',
          completed: false,
        ),
        DayContent(
          id: '166',
          title: 'Meditasi',
          description:
              'Meditasi merangsang respons relaksasi, mengembangkan kesadaran diri, dan meningkatkan kemampuan konsentrasi serta fokus.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Mindfulness-amico.png',
          gifPath: 'lib/assets/gifs/Mindfulness.gif',
          completed: false,
        ),
        DayContent(
          id: '168',
          title: 'Berbicara Di\nDepan Cermin',
          description:
              'Gunakan cermin sebagai cara untuk berinteraksi dengan diri sendiri. Ini dapat meningkatkan rasa percaya diri saat Anda harus berbicara di depan orang lain.',
          duration: '01:00',
          durasi: Duration(seconds: 30),
          imagePath: 'lib/assets/images/Specs-rafiki.png',
          gifPath: 'lib/assets/gifs/Specs.gif',
          completed: false,
        ),
      ];
    default:
      return [];
  }
}
