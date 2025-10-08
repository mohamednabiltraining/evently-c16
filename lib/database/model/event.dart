class Event {
  String? id;
  String? creatorUserId;
  String? title;
  String? desc;
  DateTime? date;
  DateTime? time;
  String? category;

  Event({
    this.id,
    this.creatorUserId,
    this.title,
    this.category,
    this.date,
    this.time,
    this.desc,
  });

  factory Event.fromMap(Map<String, dynamic>? map) {
    return Event(
      id: map?['id'],
      creatorUserId: map?['creatorUserId'],
      title: map?['title'],
      desc: map?['desc'],
      category: map?['category'],
      time: DateTime.fromMillisecondsSinceEpoch(map?['time']),
    date: DateTime.fromMillisecondsSinceEpoch(map?['date'])
    );
  }

  Map<String,dynamic> toMap(){
    return {
      'id' : id,
      'creatorUserId' : creatorUserId,
      'title' : title,
      'desc' : desc,
      'date' : date?.millisecondsSinceEpoch ,// convert Date time to milliseconds
      'time' : time?.millisecondsSinceEpoch ,// convert Date time to milliseconds
      'category' : category,
    };
  }

  String getCategoryImage() {
    switch (category?.toLowerCase()) {
      case 'birthday':
        return 'assets/images/Birthday.png';
      case 'gaming':
        return 'assets/images/Gaming.png';
      case 'sport':
        return 'assets/images/Sport.png';
      case 'workshop':
        return 'assets/images/Workshop.png';
    }
    return '';
  }
}

extension DateMonth on DateTime {
  String getShortMonthName() {
    const List<String> months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ];
    return months[this.month - 1];
  }
}
