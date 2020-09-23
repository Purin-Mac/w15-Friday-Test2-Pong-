GamePong game;
Pong  pongBall;
Paddle paddle1, paddle2;

void setup(){
  background(0);
  size(1000, 800);
  game = new GamePong();
  pongBall = new Pong();
  paddle1 = new Paddle(0, 20);
  paddle2 = new Paddle(width-20, 20);
}

void draw(){
  background(0);
  game.display();
  pongBall.draw();
  pongBall.move();
  pongBall.bounce(pongBall.getX(), pongBall.getY());
  paddle1.draw();
  paddle2.draw();
}

void mouseDragged(){
  if(mouseX < game.getPositionX()){
    paddle1.move(mouseX, mouseY);
  }
  else if(mouseX > game.getPositionX()){
    paddle2.move(mouseX, mouseY);
  }
}

class GamePong{
  int scoreP1, scoreP2; //score of each player
  float positionX, positionY, size; //position and size of center line
  
  GamePong(){ //constructor
    scoreP1 = 0;
    scoreP2 = 0;
    size = 10;
    positionX = width/2 - size/2;
    positionY = 0;
  }
  
  void display(){ //show score and center line
    fill(255);
    rect(positionX, positionY, size, height);
    textSize(50);
    text(scoreP1, width/4, 50);
    text(scoreP2, width*3/4, 50);
  }
  
  int getScoreP1(){ //get player1 score
    return scoreP1;
  }
  
  int getScoreP2(){ //get player1 score
    return scoreP2;
  }
  
  float getPositionX(){
    return positionX;
  }
  
  float getPositionY(){
    return positionY;
  }
  
  void setScoreP1(){ //set player1 score
  }
  
  void setScoreP2(){ //set player2 score 
  }
}

class Pong{
  float positionX, positionY, speedX, speedY, size; //position, size and speed of ball
  
  Pong(){ //constructor
    positionX = width/2;
    positionY = height/2;
    if(random(0, 1) < 0.5){
      speedX = -5;
    }
    else{
      speedX = 5;
    }
    speedY = random(-3, 3);
    size = 50;
  }
  
  void draw(){ //draw ball
    circle(positionX, positionY, size);
  }
  
  void move(){ //move ball
    positionX += speedX;
    positionY += speedY;
  }
  
  void bounce(float x, float y){ //bounce ball when hit wall
    if(x+size/2 > width){ //right over window
      speedX = -speedX;
    }
    if(x-size/2 < 0){ //left over window
      speedX = -speedX;
    }
    if(y+size/2 > height){ //bottom over window
      speedY = -speedY;
    }
    if(y-size/2 < 0){ //top over window
      speedY = -speedY;
    }
  }
  
  float getX(){ //get position x of ball
    return positionX;
  }
  
  float getY(){ //get position y of ball
    return positionY;
  }
  
  void setSpeedX(float speed){ //set speed x of ball
    speedX = speed;
  }
  
  void setSpeedY(float speed){ //set speed y of ball
    speedY = speed;
  }
}

class Paddle{
  float positionX, positionY, wide, high, speedY; // position, size and speed of paddle
  
  Paddle(float x, float size){ //constructor
    positionX = x;
    high = height/4;
    positionY = (height/2)-(high/2);
    wide = size;
    speedY = 10;
  }
  
  void draw(){ //draw paddle
    rect(positionX, positionY, wide, high);
  }
  
  void move(float x, float y){ //move paddle
    if(positionY+(high/2) > y){
      if(positionY > 0){
        positionY -= speedY;
      }
    }
    else if(positionY+(high/2) < y){
      if(positionY+high < height){
        positionY += speedY;
      }
    }
  }
  
  void hit(float ballX, float ballY){ //paddle hit ball
  }
  
  float getX(){ //get position x of paddle
    return positionX;
  }
  
  float getY(){ //get position y of paddle
    return positionY;
  }
  
  float getHigh(){
    return high;
  }
}
