main(List<String> args) {
  var list = [1,2,3,4,5];
  print("读取值索引值: ${list[0]}");  // 1
  print("读取列表长度: ${list.length}"); // 5

  list.add(6);  // 向后面追加元素
  print("add_ele: ${list}");  // [1, 2, 3, 4, 5, 6]

  list[0] = 23; // 更改列表索引0的值
  print("改变列表索引:${list}");  // [23, 2, 3, 4, 5, 6]

  // 字面量前添加const关键字，表示定义一个不可改变的 列表（编译时常量）
  var constantList = const [11,12,13];
  print("读取不可定义的列表:${constantList}");  // [11, 12, 13]

  // constantList[1] = 123;  // error: 不可以改变
  // print("读取改变的值:${constantList}");
}