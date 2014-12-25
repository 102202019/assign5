Brick [] brickArray;//新增一個可以放Brick物件的Array
Ball a;
Bar bar;
// game state
final int GAME_START = 1;
final int GAME_RUN = 2;
final int GAME_WIN = 3;
final int GAME_LOSE = 4;
int gameState;
int life = 3;
boolean shoot = false;

void setup() {
 size(640,480);
 bar = new Bar(100); 
 a = new Ball(); 
  brickArray = new Brick[50];
   gameState = GAME_START;

   
}
void draw() {
 background(255);
 shootBall();
 a.display();
 bar.move();
 bar.display();
 drawLife();
 if(shoot==false){
       a.x = mouseX;
    a.y = height - 26;
 }

 shootBall();
 println(shoot);
 for(int i=0; i<brickArray.length; i++){
   brickArray[i]= new Brick(i); //用Brick的constructor做出新的Brick物件並放進brickArray的第i個位置
  }
 
 for(int i=0; i<brickArray.length; i++){
   Brick brick = brickArray[i]; //把brickArray的第i個位置裡面的Brick物件給它一個名字叫brick
   brick.display();//叫brick顯示出來
}
}

void mousePressed(){
    
  if(mouseButton==RIGHT && gameState == GAME_START){
      shoot = !shoot; 
  }
}
void shootBall(){
  if(shoot == true){
    a.move();
  }
}

void drawLife() {
  fill(230, 74, 96);
  text("LIFE:", 36, 455);
 for (int i=0;i<life;i++){ 
  ellipse(78 + 25 *i, 459, 15, 15);
  }
}
