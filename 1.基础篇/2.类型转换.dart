main(List<String> args) {
  /**
   * 一、数值类型
   */
  // 1。 string 转 int
  var one = int.parse('123');
  print(one);

  // 2. string 转 double
  var two = double.parse('1.2');
  print(two);

  // 3. int 转 string
  String oneToStr = 1.toString();
  print(oneToStr);

  // 4. double 转 string
  String piToStr = 3.14159.toStringAsFixed(2);  // 保留两位
  print(piToStr);
}