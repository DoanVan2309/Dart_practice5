import 'dart:io';

void main(){
  for(int i=0;i<100;i++){
    File file = File("file$i.txt");
    file.writeAsStringSync('');
    print("File " + file.path + " written!");
  }
}