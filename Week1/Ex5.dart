import 'dart:math';

class Caculation{
  int num1;
  int num2;
  int result;
  String sign;
  bool isCorrect;
  ///Khởi tạo đầy đủ
  Caculation(this.num1,this.num2,this.result,this.sign,this.isCorrect);
  ///Khởi tạo không có đối số
  factory  Caculation.zero() {
    return Caculation(0,0,0,"+",true);
  }
  ///Khởi tạo với 1 phép tính
  factory Caculation.undefined({required int num1,required int num2,required String sign,required int result}){
    bool isCorrect=false;
    if(sign=="+" && (num1+num2==result)) {
        isCorrect=true;
    }
    else if(sign=="-"&& (num1-num2==result)) {
        isCorrect=true;
    }
    else if(sign=="*"&& (num1*num2==result)) {
        isCorrect=true;
    }
    else if(sign=="/"&& (num1~/num2==result)) {
        isCorrect=true;
    }
    else isCorrect=false;
    return Caculation(num1, num2, result, sign, isCorrect);
  }
  ///Tạo ra một phép tính ngẫu nhiên
  void generate(){
    this.num1= Random().nextInt(100000000);
    this.num2= Random().nextInt(100000000);
    int signTh=Random().nextInt(3);
    if(signTh==0) {this.sign="+";this.result=num1+num2;}
    else if(signTh==1) {this.sign="-";this.result=num1-num2;}
    else if(signTh==2) {this.sign="*";this.result=num1*num2;}
    else {this.sign="/";this.result=num1~/num2;}
    this.isCorrect=true;
  }
  ///Chuyển phép tính thành xâu kí tự
  String toString(){
    if(isCorrect)
      return num1.toString()+" "+sign+" "+num2.toString()+" = "+result.toString()+" is correct!";
    else
      return num1.toString()+" "+sign+" "+num2.toString()+" = "+result.toString()+" isn't correct!";
  }
}
void main() {
  Caculation caculation =Caculation.zero();
  print(caculation.toString());
  caculation =Caculation.undefined(num1: 1, num2: 1, sign: "+", result: 3);
  print(caculation.toString());
  caculation.generate();
  print(caculation.toString());
}