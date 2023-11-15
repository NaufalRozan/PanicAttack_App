List<int> getDays(String anxietyLevel) {
  switch (anxietyLevel) {
    case 'Anxiety Level Low':
      return List.generate(3, (index) => index + 1); // Kecemasan rendah, 3 hari
    case 'Anxiety Level Mid':
      return List.generate(5, (index) => index + 1); // Kecemasan sedang, 5 hari
    case 'Anxiety Level High':
      return List.generate(7, (index) => index + 1); // Kecemasan tinggi, 7 hari
    default:
      return List.generate(3, (index) => index + 1); // Default 3 hari
  }
}
