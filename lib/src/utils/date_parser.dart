class DateParser {
  static String parse(String date) {
    final months = [
      "January",
      "Febuary",
      "March",
      "April",
      "May",
      "June",
      "July",
      "September",
      "October",
      "November",
      "December"
    ];
    final data = date.split("T")[0];
    final splitedDate = data.split("-");

    final dateString = StringBuffer(splitedDate[2]);
    if (splitedDate[2].endsWith("1")) {
      dateString.write("st");
    } else if (splitedDate[2].endsWith("2")) {
      dateString.write("nd");
    } else if (splitedDate[2].endsWith("3")) {
      dateString.write("rd");
    } else {
      dateString.write("th");
    }
    dateString.write(", ${months[int.parse(splitedDate[1]) - 1]}");
    dateString.write(" ${splitedDate[0]}");
    return dateString.toString();
  }
}
