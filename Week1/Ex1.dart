bool leapYear(int year) {
  if(year % 4== 0) return true;
  return false;
}
void main(){
  print(leapYear(2024));
}