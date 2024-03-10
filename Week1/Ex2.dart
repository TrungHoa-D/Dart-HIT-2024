int digits(int num) {
  int ans=0;
  while(num>0) {
    ans++;
    num ~/=10;
  }
  return ans;
}
void main(){
  print(digits(24014869));
}