// 类定义
class Person {
  var name = "Hello";
  Person(this.name);
}

class Banner {
  var weight;
  Banner(this.weight);
}

class Apple {
  var weight;
  Apple(this.weight);
}

main(List<String> args) {
  // 1、 ?. 条件成员访问符
  Person p;
  var name = p?.name; //先判断p是否为null，如果是，则name为null；如果否，则返回p.name值
  print("name: $name"); // name: null

  // 2、 ~/
  var num = 10;
  var res = num ~/ 4; // 表示一个小于等于(num/2)的最大整数
  print("~/: $res");  // ~/: 2

  // 3、as 类型转化
  dynamic b = Banner(20);
  (b as Banner).weight = 50;
  print("b.weight: ${(b as Banner).weight}");   // as: b.weight: 50
//   (b as Apple).weight = 150;  // 类型转换错误
//   print("b.weight: ${(b as Apple).weight}");

  // 4、is 比较关系和类型判断
  getFruit() => Banner(100);    // 获取一个水果对象
  var bRes = getFruit();
  // 判断对象是否为Apple类
  if(bRes is Apple) {
    print("The fruit is an apple");
  } else if (bRes is Banner) {
    print("The fruit is a banana");   // The fruit is a banana
  }

  // 5. ??  是否null
  String hehe;
  String nickName = hehe ?? "Nick"; // 如果hehe不为null, 则nickName值为hehe的值，否则值为Nick
  print("nickName: $nickName"); // nickName: Nick

  hehe = "Bruce";
  nickName = hehe ?? "Nick1"; //如果hehe不为null，则nickName值为name的值，否则值为Nick1
  print("nickName: $nickName"); // nickName: Bruce


  // 6. .. 级联操作允许对同一个对象进行一系列操作
  GetFruit(20, 'blue')
        ..showWeight() // weight: 20
        ..showColor(); // color: blue
}

class GetFruit {
  var weight;
  var color;
  GetFruit(this.weight, this.color);

  void showWeight() {
    print("weight: $weight");
  }

  void showColor() {
    print("color: $color");
  }
}