/*
  Dart 语言要求以健全的空安全方式编写代码。

空安全能够防止意外访问 null 的变量而导致的错误。这样的错误也被称为空解引用错误。访问一个
求值为 null 的表达式的属性或调用方法时，会发生空解引用错误。但是对于 toString() 方法和
 hashCode 属性，空安全会体现出例外情况。 Dart 编译器可以在空安全的基础上在编译期检测到
 这些潜在的错误。

例如，假设你想要查找 int 变量 i 的绝对值。如果 i 是 null ，调用 i.abs() 会导致空解引用
错误。在其他语言中，尝试这样做可能会导致运行时错误，但是 Dart 的编译器禁止这些操作。所以
 Dart 应用程序不会引发运行时错误。

空安全引入了三个关键更改：

当你为变量、参数或另一个相关组件指定类型时，可以控制该类型是否允许 null 。要让一个变量可
以为空，你可以在类型声明的末尾添加 ? 。

String? name  // Nullable type. Can be `null` or string.

String name   // Non-nullable type. Cannot be `null` but can be string.
content_copy
你必须在使用变量之前对其进行初始化。可空变量是默认初始化为 null 的。 Dart 不会为非可空类
型设置初始值，它强制要求你设置初始值。 Dart 不允许你观察未初始化的变量。这可以防止你在接
收者类型可以为 null 但 null 不支持的相关方法或属性的情况下使用它。

你不能在可空类型的表达式上访问属性或调用方法。同样的例外情况适用于 null 支持的属性或方法，
例如 hashCode 或 toString() 。
*/

void main(List<String> args) {
  String? name; // Nullable type. Can be `null` or string.
  String name1; // Non-nullable type. Cannot be `null` but can be string.
}
