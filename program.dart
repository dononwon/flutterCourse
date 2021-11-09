//1.
int a = 1;

//2
void second(){
  double b = 1.0;
}

//3 Невозможно присвоить int к string
String third(){
  var text = "text";
  //text = a;
  return text;
}

//4. dynamic может быть любым объектом
void fourth(String text){
  dynamic dyn;
  dyn = text;
  print(dyn);
}

//5.
void fifth(){
  //fin можно объявить без значения, во время исполнения присваивается значение, которое в дальнейшем нельзя изменить
  final fin;
  fin = 150;
  //fin = 200;

  //con объявляется сразу со значением, которое присваивается при компиляции
  const con = 10;
  //con = 100;
}

//6.
void sixth(){
  var a = 4;
  print("${a} is even: ${a % 2 == 0}");
}

void seventh(){
  print("I \u2665 dart");
}

void eighth(){
  //a
  var list = [1,2,3,4,5,6,7,8];

  //b
  print("list length: ${list.length}");

  //c
  list.sort((a, b) => b.compareTo(a));
  print("desc sorted list ${list}");

  //d
  var newList = list.getRange(0, 3);
  print("newList: ${newList}");

  //e
  print("index of 5: ${list.indexOf(5)}");

  //f
  list.removeWhere((element) => element > 4);
  print("clipped list: ${list}");

  //g
  for(var i = 0; i < list.length; i++) {
    if([1, 2, 3].contains(list[i])) {
      list[i] *= 10;
    }
  }
  print("list: ${list}");
}

void ninth(){
  //a
  var numberBook = new Map<String, String>();
  numberBook["Иван"] = "2264865";
  numberBook["Татьяна"] = "89523366684";
  numberBook["Олег"] = "84952256575";

  //b
  print("namesVsPhones: ${numberBook}");

  //c
  numberBook["Екатерина"] = "2359942";

  //d
  List<String> tempList = [];
  var reversedMap = new Map<String, String>();
  numberBook.keys.forEach((element) => tempList.add(element));
  tempList.reversed.forEach((element) { 
    reversedMap[element] = numberBook[element]!;
  });
  numberBook = reversedMap;
  print("namesVsPhones: ${numberBook}");
}

void tenth(){
  //a
  var mySet = {"Москва", "Вашингтон", "Париж"};
  //b
  mySet.add("Вашингтон");
  //Set это коллекция уникальных значений, Вашингтон уже был в коллекции
  print(mySet.length);

  //c
  var text = '''
She sells sea shells on the sea shore
The shells that she sells are sea shells I am sure.
So if she sells sea shells on the sea shore
I am sure that the shells are sea shore shells
  ''';
  
  Set<String> set = {};
  new RegExp(r'(\w+)')
    .allMatches(text)
    .forEach((element) {
      set.add(element.group(0).toString().toLowerCase()); 
    });
  print(set.length);
}

void main(){

  second();
  var text = third();
  fourth(text);
  fifth();
  sixth();
  seventh();
  eighth();
  ninth();
  tenth();
}
