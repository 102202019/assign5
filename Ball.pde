class Ball{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float size;
  

  void move(){
    
    x+=xSpeed;
    y+=ySpeed;
    
    if (x<size/2 || x>width-size/2){
      xSpeed *= -1;
    }
    if (y<size/2){
      ySpeed *= -1;
    }
    if (y>height-size/2){
      y = size/2;
    }
    
    float bottom = y+size/2;
    float bl = bar.y - 10/2;
    float bLeft = bar.x-bar.len/2;
    float bRight = bar.x+bar.len/2;
    if (bottom >= bl && x>bLeft && x<bRight){
        ySpeed *= -1;
        y = bl - 8;
    }
   
  }
  void display(){
    colorMode(RGB); 
    fill(800,5,10);
    ellipse(x,y,size,size);
  }
  //delete it,跟上面的邊界判定重複了，不需要
   /* void checkedge(){
   if (x<0 || x>width){
     xSpeed*=-1;
   }
    if (y<0 || y>height){
     ySpeed*=-1;
    }
   }*/

  
  boolean isHit(
        float circleX,
        float circleY,
        float radius,
        float rectangleX,
        float rectangleY,
        float rectangleWidth,
        float rectangleHeight)
  {
      float circleDistanceX = abs(circleX - rectangleX);
      float circleDistanceY = abs(circleY - rectangleY);
   
      if (circleDistanceX > (rectangleWidth/2 + radius)) { return false; }
      if (circleDistanceY > (rectangleHeight/2 + radius)) { return false; }
   
      if (circleDistanceX <= (rectangleWidth/2)) { return true; }
      if (circleDistanceY <= (rectangleHeight/2)) { return true; }
   
      float cornerDistance_sq = pow(circleDistanceX - rectangleWidth/2, 2) +
                           pow(circleDistanceY - rectangleHeight/2, 2);
   
      return (cornerDistance_sq <= pow(radius,2));
  }


  Ball(){
    x = mouseX;
    y = height - 26;
    xSpeed = 5;
    ySpeed = 3;
    size = 10;
  }
  
  Ball(float size, float xSpeed){
    x = random(width);
    y = random(height);
    this.xSpeed = xSpeed;
    this.ySpeed = 5;
    this.size = size;
  }
}

