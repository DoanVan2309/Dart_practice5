import 'dart:io';

void main() {
  // open file
  File file = File("students.csv");
  // write to file
  file.writeAsStringSync('Name - Age - Address:\n');
  print("Enter number of students : ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    // user input name
    stdout.write("Enter name ${i + 1}: ");
    String? name = stdin.readLineSync();
    // user input age
    stdout.write("Enter age ${i + 1}: ");
    String? age = stdin.readLineSync();
    // user input address
    stdout.write("Enter address ${i + 1}: ");
    String? address = stdin.readLineSync();
    file.writeAsStringSync('$name - $age - $address\n', mode: FileMode.append);
  }
  print("Congratulations!! CSV file written successfully.");
}