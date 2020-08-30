class AppData {

  String _appName = "OOP Test App";
  List _stringList = [
    "String1",
    "String2",
    "String3",
    "String4",
    "String5",
    "String6",
  ];
  String _currentString = "";

  String getString (int index) {
    _currentString = _stringList[index % _stringList.length];
    return _currentString;
  }

  String getAppName () {
    return _appName;
  }

}