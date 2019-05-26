main(List<String> args) {
  // if - if ... else
  num i = 0;
  if(i < 0) {
    print('i < 0');
  }else if(i == 0) {
    print('i = 0');
  }else{
    print('i > 0');
  }

  // switch - case
  String command = "OPEN";
  switch (command) {
    case 'CLOSE':
      print("CLOSE: $command");
      break;
    case 'OPEN':
      print("OPEN: $command");
      break;
    default:
      print("Default");
  }

}