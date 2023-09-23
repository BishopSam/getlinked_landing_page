extension DateTimeExtensions on DateTime {
  Duration difference(DateTime other) {
    return other.isBefore(this) ? this.difference(other) : other.difference(this);
  }

  int differenceInDays(DateTime other) {
    return difference(other).inDays;
  }

  int differenceInHours(DateTime other) {
    return difference(other).inHours;
  }

  int differenceInMinutes(DateTime other) {
    return difference(other).inMinutes;
  }

  int differenceInSeconds(DateTime other) {
    return difference(other).inSeconds;
  }
}
