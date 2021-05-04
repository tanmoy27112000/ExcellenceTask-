void main() {
  var obj = [
    {"id": 4, "name": "abc"},
    {"id": 10, "name": "ab2"},
    {"id": 5, "name": "abc3"},
    {"id": 6, "name": "abc5"},
  ];
  
  List idList = [];
  for (var item in obj) {
    idList.add(item["id"]);
  }

  for (int i = 0; i < obj.length; i++) {
    for (int j = 0; j < obj.length - i - 1; j++)
      if (idList[j] > idList[j + 1]) {
        int temp = idList[j];
        idList[j] = idList[j + 1];
        idList[j + 1] = temp;

        var tempMap = obj[j];
        obj[j] = obj[j + 1];
        obj[j + 1] = tempMap;
      }
  }

  print(obj);
}
