void pascalTriangle(int x, int i, List<int> be) {
  if(i>x) return;
    List<int> no=[];
    if(i==1) {
        no.add(1);
    }
    else if(i==2) {
        no.add(1);
        no.insert(0, 1);
    }
    else {
        for(int i=0;i<be.length-1;i++)
        no.add(be[i]+be[i+1]);
        no.add(1);
        no.insert(0, 1);
    }
    print('$no\n');
    pascalTriangle(x,i+1,no);
}
void main() {
  pascalTriangle(5, 1, []);
}