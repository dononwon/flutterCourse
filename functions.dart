void main(){
  var a = "hello world";
  reverse(a);

  var ints = [4, 1, 6, 6];
  print("average: ${average(ints)}");

  print(hasRoots(1, 4, 4));
}

String hasRoots([double a = 1, double b = 1, double c = 0]){
  var d = b * b - 4 * a * c;
  if(d > 0){
    return "Квадратное уравнение имеет два разных корня";
  }
  else if(d == 0){
      return "Квадратное уравнение имеет единственное решение";
  }
  else{
    return "Уравнение не имеет решения так как его дискриминант меньше нуля";
  }
}

double average([List<int>? ints]){
  if(ints == null){
    return 0;
  }
  return ints.reduce((a, b) => a + b) / ints.length;
}

void reverse([String str = "world hello"]){
  print(str);
  str = str.split(" ").reversed.join(" ");
  print(str);
}