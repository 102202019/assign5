class Bar{
  float x;
  float y;
  float len;
  
  void move(){
    x = mouseX;
  }
  void display(){
    rectMode(CENTER);
    colorMode(RGB);
    fill(10,20,120);
    rect(x,y,len,10);
  }
  
  Bar(float len){
    this.y = height-10;
    this.len = len;
  }
}
