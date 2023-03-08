import 'dart:io';

void main() {
  // open file
  File file = File('hello.txt');
  // write to file
  file.writeAsStringSync('\nNguyen Van Siu.',mode: FileMode.append);
  print('Congratulations!');
}