/**
 * Dart使用class关键字表示一个类，对象具有由函数和数据（分别为方法和实例变量）组成的成员。
 */

class Test {
  static const age = 24;
  void runTest() => print("Test");
}

void main() {
  // 1. 普通类调用： 通过new关键字来创建一个类对象，然后使用（.）调用类里面的变量或者普通（实例，非静态）函数（注：函数和方法意思是一样的。），以便访问该对象的函数和数据。
  var test = new Test();
  test.runTest();

  // 2. runtimeType属性：获取对象的类型, 返回一个Type对象.
  var a = 10;
  var b = 10.0;
  var c = '10';
  var d = true;
  var e = [12.5,13.1];
  var f = {3:'5',5:'11'};
  var t = test;// 这里就直接使用上面那个Test类 不再去重复写这个类了
  print('a 的类型是： ${a.runtimeType}'); // a 的类型是： int
  print('b 的类型是： ${b.runtimeType}'); // b 的类型是： double
  print('c 的类型是： ${c.runtimeType}'); // c 的类型是： String
  print('d 的类型是： ${d.runtimeType}'); // d 的类型是： bool
  print('e 的类型是： ${e.runtimeType}'); // e 的类型是： List<double>
  print('f 的类型是： ${f.runtimeType}'); // f 的类型是： _InternalLinkedHashMap<int, String>
  print('t 的类型是： ${t.runtimeType}'); // t 的类型是： Test


  // 3. extends 继承 : 一个类继承另一个类
  /**
   * 使用元数据注解: @override | @deprecated
   * 元数据注解以字符开头@，后跟对编译时常量（如deprecated）的引用或对常量构造函数的调用。元数据可以出现在库，类，typedef，类型参数，构造函数，工厂，函数，字段，参数或变量声明之前以及导入或导出指令之前。您可以使用反射在运行时检索元数据。
   */
  var testChildClass = new TestChild();
  testChildClass.test();
  testChildClass.getChild();
  testChildClass.setChild("Hello");
  testChildClass.getChild();

  new Television().activate();

  // 4. 静态变量
  print("Test[age]: ${Test.age}");

  
}

class TestChild extends Test {
  @override  // @override表示test()函数重写父类
  void test() {
    super.runTest();  // 调用父类tests函数
    print("This is TestChild");
  }
  dynamic str = "Child";
  void setChild(val) => str = val;
  void getChild() => print("getChild: $str");
}

class Television {
  @deprecated
  void activate() {
    turnOn();
  }
  void turnOn() {
    print("turnOn");
  }
}
