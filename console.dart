import 'dart:io';

void main(){

  String? entry;
  int sum = 0;
  do{
    print("enter number for calc or 'stop' for exit:");
    entry = stdin.readLineSync() ?? "";
    if(int.tryParse(entry) == null){
      continue;
    }

    var number = int.tryParse(entry)!;
    sum += number;
    print("sum: ${sum}");
  }
  while(entry != "stop");
}