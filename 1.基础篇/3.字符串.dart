main(List<String> args) {
  // 单引号创建字符串
  var str1 = "Hello", str2= "World";

  String str3 = "hhh";


  // 创建多行字符串(双引号)
  var multiLine1 = """ 
    Hello world; hahaha
  """;
  print(multiLine1);

  // 创建多行字符串(单引号)
  var multiLine2 = '''
    hello
  ''';
  print(multiLine2);

  // 并接字符串
  var greet_str = "Hello" + "world";

  // 插值表达式"${}",可以并接字符串
  var name = "WWW";
  var strRes = "This is ${name}";
  print(strRes);

  // 比较字符串内容
  print("object" == "Object");

}