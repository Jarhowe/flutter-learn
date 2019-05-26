main(List<String> args) {
  // 字面量创建Map
  var gifts = {
    "first": "Hello",
    "second": "JJJ",
    "fifth": "World"
  };
  print("读取字面量Map: ${gifts}"); // {first: Hello, second: JJJ, fifth: World}

  // Map类的构造函数创建对象
  var pic = new Map();
  pic['first'] = 12312;
  pic['second'] = "DSAKDK";
  pic['fifth'] = false;
  print("读取构造函数Map: ${pic}"); // {first: 12312, second: DSAKDK, fifth: false}

  // 获取Map的长度
  print("读取Map的长度:${pic.length}"); // 3

  // 读取值
  print("读取Map某个属性值: ${pic["first"]}");  // 12312
  print("读取Map某个不存在属性值: ${pic["four"]}");   // 不存在则返回: null

}