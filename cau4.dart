import 'dart:io';
void main() {
  // open file 'hello.txt'
  File file1 = File('hello.txt');
  // read file
  String contents = file1.readAsStringSync();
  // create file 'hello_copy.txt' 
  File file2 = File('hello_copy.txt');
  // write to file
  file2.writeAsStringSync(contents);
  print('File copied!');
}