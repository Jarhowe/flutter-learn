main(List<String> args) {
  // 1. 定义函数
  String fn(String name) {
    return "fn: This is name: ${name}";
  };
  print(fn("Hello"));

  // 2. 定义函数: 简写语法
  String fn1(String name) => "fn1: This is name: ${name}";
  print(fn1("Hello"));

  // 3.省略类型形式
  fn2(name) {
    return "fn2: This is name: ${name}";
  };
  print(fn2("Hello"));

  // 4.可选参数 {param1, param2, ...}
  void showDes({String name, var age}) {
    if(name != null && name!="") print('name:${name}');
    if(age!=null) print('age: ${age}');
  };
  // showDes(name: 'Hello', 12); // 不可这样调用
  showDes(name: "Hello", age: 10 ); // name:Hello   age: 10

  // 5.位置参数， 使用 [] 来标记
  void showDes1(var name, [var age, var address]) {
    print("name: ${name}");
    if(age != null) print("age: ${age}");
    if(address != null) print("address: ${address}");
  }
  showDes1("Barch");  // name: Barch

  // 6.默认值
  void showDes2(var name, [var age = 22, var address = "GuangZhou"]) {
    print("name: ${name}, age: ${age}, address: ${address}");
  }
  showDes2("CJH", 24);  // name: CJH, age: 24, address: GuangZhou

  // 7.函数作为参数
  String prindFn1(String name) {
    return name;
  };
  String showDescRes(var name, Function log) {
    return "This is ${log(name)}";   
  };
  print(showDescRes("Hello", prindFn1));

  // 8.匿名函数
  var fn8 = (x, y) => x + y;
  print(fn8(3,5));  // 8

  // 9.嵌套函数
  fn9(var name) {
    print("That is a nested function!");

    // 局部函数
    String printName(var name) {
      return "This is ${name}";
    };

    return printName(name);
  }
  print("嵌套函数: ${fn9('fn9')}"); // 嵌套函数: This is fn9
}