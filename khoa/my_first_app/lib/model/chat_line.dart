class ChatLine {
  int _id;
  int _n;
  DateTime _time;
  String _text;

  int get id => _id;
  int get n => _n;
  DateTime get time => _time;
  String get text => _text;

  set setid(int value) {
    _id = value;
  }
  set setn(int value) {
    _n = value;
  }
  set settime(DateTime value) {
    _time = value;
  }
  set settext(String value) {
    _text = value;
  }

  ChatLine({
    id = "",
    n = "",
    time = "",
    text = "",
  })  : _id = id,
        _n = n,
        _time = time,
        _text = text;
}