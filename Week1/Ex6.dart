import 'dart:math';
List <bool> prime = List<bool>.filled(1009, true);
void scanPrime(){
  prime[0]=false;
  prime[1]=false;
  for(int i=2;i<sqrt(1000);i++)
    if(prime[i])
    for(int j=i*i;j<=1000;j+=i) 
      prime[j]=false;
}
String toString(int number) {
  if (number < 0 || number >= 1000) {
    return "Số nằm ngoài phạm vi hỗ trợ";
  }

  List<String> units = ["", "một", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín"];
  List<String> unitsUnder100 = ["", "mốt", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín"];
  List<String> teens = ["mười", "mười một", "mười hai", "mười ba", "mười bốn", "mười lăm", "mười sáu", "mười bảy", "mười tám", "mười chín"];
  List<String> tens = ["", "", "hai mươi", "ba mươi", "bốn mươi", "năm mươi", "sáu mươi", "bảy mươi", "tám mươi", "chín mươi"];

  if (number < 10) {
    return units[number];
  } else if (number < 20) {
    return teens[number - 10];
  } else if (number < 100) {
    return "${tens[number ~/ 10]} ${unitsUnder100[number % 10]}";
  } else {
    if(number%100>=10)  return "${units[number ~/ 100]} trăm ${toString(number % 100)}";
    else return "${units[number ~/ 100]} trăm lẻ ${toString(number % 100)}";
  }
}

void main() {
  //A
  List<int> list=[];
  int length=Random().nextInt(98)+1;
  for(int i=1;i<=length;i++) {
    list.add(Random().nextInt(1000));
  }
  print("List A ban đầu:\n$list\n");
  //B
  Set<int> setList=list.toSet();
  print("Set B gồm các phần tử từ List A:\n$setList\n");
  //C
  scanPrime();
  List<int> isPrime=[];
  setList.forEach((element) {if(prime[element]) isPrime.add(element);});
  print("List C gồm các số nguyên tố trong Set B:\n$isPrime\n");
  //D
  Map<int, String> read={};
  isPrime.forEach((element) {
    read.putIfAbsent(element, () => toString(element));
  });
  print("Các số trong List C và cách đọc của chúng:\n$read\n");
}