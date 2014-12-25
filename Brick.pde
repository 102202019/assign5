class Brick{
  //wrong, delete it
  /*int bSize = 35;
  int bX=140;
  int bY=60;
  int bSpeed=1;
  int hit = 0;*/
   
  float ix;
  float iy;
  float numInRow;
  float spaceOfcol;
  float spaceOfrow;
  float total;
  float size;
  
  float x;
  float y;
  int row;
  int col;
  Brick(int i){
   ix = 100;
   iy = 30;
   numInRow = 10;
   spaceOfcol = 40;
   spaceOfrow = 40;
   total =  50;
   size = 30;
   
   //計算每個方塊的x,y值並記錄下來，可參考之前的練習
   col = int(i%numInRow);
   row = int(i/numInRow);   
   x = ix + col*spaceOfcol;
   y = iy + row*spaceOfrow;
  }
  
 
  void display(){
    colorMode(RGB);
    fill(37,56,217);
    rect(x,y,size,size);
  }
}
 
