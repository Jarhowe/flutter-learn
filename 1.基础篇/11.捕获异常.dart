void main() {
  // 1. throw
  void errorText() => throw Exception("格式不正确!");
  // errorText();

  // 2, try-catch
  try{
    misbehava();
  }catch(err) {
    print('main() finished handling ${err.runtimeType}.');
  }

  // 3. try ... on Exception .. catch
  try {
    errorText();
  } on Exception catch(err) {
    print(err);
  } finally {
    // 无论是否抛出异常，要确保某些代码运行，请使用finally子句。
    print("Run finally!");
  }
}

void misbehava() {
  try{
    dynamic foo = true;
    print(foo++); // 运行时异常
  }catch(error) {
    print('misbehave() partially handled ${error.runtimeType}.');
    rethrow;  // 允许调用者查看exception.
  }
}