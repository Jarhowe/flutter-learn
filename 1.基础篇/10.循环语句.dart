main(List<String> args) {
  // 经典for
  for(int i = 1; i <= 5; i++) {
    print("i: $i");
  }

  // 追加元素
  var array = [];
  for (var i = 0; i < 10; i++) {
    // array.add(i);
    array.add(i);
  }
  print('array: $array');

  // for ... in
  var myList = ['Java','JavaScript','Dart'];
  var myObjList = [{'name': 'Java', 'age': 0}, {'name': 'JavaScript', 'age': 1}, {'name': 'Dart', 'age': 1}];
  for (var item in myList) {
    print("itemEle: $item");
  }
  
  myObjList.forEach((var item) => {
    for (var key in item.keys) {
      print("[keys] $key : ${item[key]}")
    }
  });

  // forEach
  myObjList.forEach((var item) => print(item));

  // 遍历Map
  var myMap = {
    'zhangsan':'201901',
    'lisi':'201902',
    'wangwu':'201902'
  };
  
  myMap.forEach((k, v) => print("(key:$k) = : = (val: $v)"));

  // 根据键获取值来遍历。通过keys返回Map中所有键的集合
  for (var key in myMap.keys) {
    print("$key: ${myMap[key]}");
  }

  print("\n\n===================\n\n");

  // continue \ break
  for (var i = 0; i < myObjList.length; i++) {
    if(myObjList[i]['name'] == 'JavaScript') {
      continue;
    }
    print(myObjList[i]['name']);
  }
}