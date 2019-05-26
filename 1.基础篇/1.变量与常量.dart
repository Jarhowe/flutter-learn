main(List<String> args) {
/**
 * 一、定义变量
 */
// 1. （指定类型）定义变量
String name = "Hello";
num age = 18;
bool flag = true;

// 2. 关键词var （不指定类型）
var address = "广州";
var id = 100;
// id = 200; // error: 无法改变数据类型
/**
 * 注： 使用var定义变量，即使未显示指定类型，一旦赋值后类型就被固定，
 * 因此使用var定义的变量不能改变数据类型
 */

// 3. 动态改变变量， 应使用dynamic 或 object来定义变量
// dynamic 声明变量
dynamic str = "Hello";
str = "haha";
// print(str);   // haha

// Object 声明变量
Object strObj = 20;
strObj = false;
// print(strObj); // false


/**
 * 二、定义常量
 */
// 定义常量两种方式： final: 只能赋值一次； const： 关键字定义
// final 关键字定义常量
final height = 100;

// const 关键字定义常量
const weight = 120;
const Pi = 3.14;

/**
 * 注： final定义的常量是（运行时常量）; const定义的常量是（编译时常量）.
 * 也就是说final定义常量时，其值可以是一个变量，而const定义的常量，其值必须是一个字面常量值。
 */
final now = new DateTime.now(); // 正确
// const now = new DateTime.now(); // 错误
}