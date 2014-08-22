class Date {

  int day;
  int month;
  int year;

  boolean isNull = false;


  Date(String rawDate) {
    splitDate(rawDate);
  }


  void splitDate(String raw) {
    if (raw.length() == 0) {
      isNull = true;
    }
    else {
      String[] splitted = split(raw, "/");   
      day = int(splitted[1]);
      month = int(splitted[0]);
      year = int(splitted[2]);
    }
  }

  boolean compareDate(Date other) {
    if (day == other.day && month == other.month && year == other.year) return true;
    else return false;
  }
}

